return function()
	local Container = script.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local VerticalScrollView = require(Container.VerticalScrollView)

	describe("mount/unmount", function()
		it("should mount and unmount with default properties", function()
			local verticalScrollViewWithStyle = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView)
			})
			local handle = Roact.mount(verticalScrollViewWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount with valid properties", function()
			local verticalScrollViewWithStyle = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView, {
					position = UDim2.new(0, 50, 0,100),
					size = UDim2.new(1, 30, 1, 50),
					canvasSizeY = UDim.new(2, 0),
					paddingHorizontal = 12,
					elasticBehavior = Enum.ElasticBehavior.Always,

					[Roact.Change.CanvasPosition] = function()end,
					[Roact.Change.CanvasSize] = function()end,
					[Roact.Ref] = Roact.createRef(),
				})
			})
			local handle = Roact.mount(verticalScrollViewWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount when gamepad focusable", function()
			local verticalScrollViewWithStyle = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView, {
					position = UDim2.new(0, 50, 0,100),
					size = UDim2.new(1, 30, 1, 50),
					canvasSizeY = UDim.new(2, 0),
					paddingHorizontal = 12,
					elasticBehavior = Enum.ElasticBehavior.Always,
					isGamepadFocusable = true,

					[Roact.Change.CanvasPosition] = function()end,
					[Roact.Change.CanvasSize] = function()end,
					[Roact.Ref] = Roact.createRef(),
				})
			})
			local handle = Roact.mount(verticalScrollViewWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("mount should throw when created with invalid properties", function()
			local function expectToThrowForInvalidProps(props)
				local verticalScrollViewWithStyle = mockStyleComponent({
					verticalScrollView = Roact.createElement(VerticalScrollView, props)
				})
				expect(function()
					Roact.mount(verticalScrollViewWithStyle)
				end).to.throw()
			end

			expectToThrowForInvalidProps({ position = 3 })
			expectToThrowForInvalidProps({ size = 3 })
			expectToThrowForInvalidProps({ canvasSizeY = 3 })
			expectToThrowForInvalidProps({ paddingHorizontal = 3 })
			expectToThrowForInvalidProps({ NotInTheInterface = "Really it is not there" })
		end)

		it("should accept and assign a ref", function()
			local ref = Roact.createRef()
			local element = mockStyleComponent({
				verticalScrollView = Roact.createElement(VerticalScrollView, {
					[Roact.Ref] = ref
				})
			})

			local instance = Roact.mount(element)
			expect(ref.current).to.be.ok()
			expect(ref.current:IsA("Instance")).to.be.ok()
			Roact.unmount(instance)
		end)

	end)
end

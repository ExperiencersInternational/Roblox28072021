return function()

	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("info/community-guidelines", function()
		it("should generate proper url", function()
			local url = UrlBuilder.static.guidelines
			expect(url).to.equal("https://www.roblox.com/info/community-guidelines")
		end)
	end)

	describe("info/terms", function()
		it("should generate proper url", function()
			local url = UrlBuilder.static.terms
			expect(url).to.equal("https://www.roblox.com/info/terms")
		end)
	end)

	describe("support", function()
		it("should generate proper url", function()
			local url = UrlBuilder.static.support
			expect(url).to.equal("https://www.roblox.com/support")
		end)
	end)

end

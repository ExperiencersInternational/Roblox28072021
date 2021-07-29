-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners)
local FFlagUIBloxSlidersFilterOldTouchInputs = require(CorePackages.UIBloxFlags.FFlagUIBloxSlidersFilterOldTouchInputs)
local FFlagUIBloxEmptyStateControllerSupport = require(CorePackages.UIBloxFlags.FFlagUIBloxEmptyStateControllerSupport)
local FFlagUIBloxUseTileThumbnailV2 = require(CorePackages.UIBloxFlags.FFlagUIBloxUseTileThumbnailV2)
local FFlagUseUpdatedUIBloxCheckbox = require(CorePackages.UIBloxFlags.FFlagUseUpdatedUIBloxCheckbox)
local FFlagTempFixEmptyGridView = require(CorePackages.UIBloxFlags.FFlagTempFixEmptyGridView)
local FFlagUIBloxGridViewIsMountedCleanup = require(CorePackages.UIBloxFlags.FFlagUIBloxGridViewIsMountedCleanup)
local FFlagUIBloxRenameKeyPropToId = require(CorePackages.UIBloxFlags.FFlagUIBloxRenameKeyPropToId)
local FFlagNoSpawnInGridViewHandler = require(CorePackages.UIBloxFlags.FFlagNoSpawnInGridViewHandler)
local GetFFlagUIBloxFixDropdownMenuListPositionAndSize = require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize)
local GetFFlagUIBloxVerticalScrollViewAutomaticCanvasSize = require(CorePackages.UIBloxFlags.GetFFlagUIBloxVerticalScrollViewAutomaticCanvasSize)
local GetFFlagUIBloxEnableSubtitleOnTile = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableSubtitleOnTile)
local GetFFlagUIBloxUseNewContext = require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewContext)

return {
	tempFixEmptyGridView = FFlagTempFixEmptyGridView,
	noSpawnInGridViewHandler = FFlagNoSpawnInGridViewHandler,
	gridViewIsMountedCleanup = FFlagUIBloxGridViewIsMountedCleanup,
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	enableExperimentalGamepadSupport = true,
	genericSliderFilterOldTouchInputs = FFlagUIBloxSlidersFilterOldTouchInputs,
	allowSystemBarToAcceptString = game:DefineFastFlag("UIBloxAllowSystemBarToAcceptString", false),
	emptyStateControllerSupport = FFlagUIBloxEmptyStateControllerSupport,
	useTileThumbnailV2 = FFlagUIBloxUseTileThumbnailV2,
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxEnableAlertCustomTitleFooterConfig", false),
	useUpdatedCheckbox = FFlagUseUpdatedUIBloxCheckbox,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	enabledAutomaticCanvasSizePropForVerticalScrollView = GetFFlagUIBloxVerticalScrollViewAutomaticCanvasSize(),
	renameKeyProp = FFlagUIBloxRenameKeyPropToId,
	enableSubtitleOnTile = GetFFlagUIBloxEnableSubtitleOnTile(),
	useNewContext = GetFFlagUIBloxUseNewContext(),
}

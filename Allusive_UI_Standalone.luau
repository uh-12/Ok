--============================================================
-- ALLUSIVE UI - STANDALONE
-- UI library only. No gameplay code.
-- External Icons dependency removed.
--============================================================

local __S = {}

if not isfolder then
    function isfolder()
        return false
    end
end

if not makefolder then
    function makefolder()
    end
end

if not writefile then
    function writefile()
    end
end

if not readfile then
    function readfile()
        return nil
    end
end

local u796 = game
local u797 = workspace
local u798 = getgenv
__S[10] = hookmetamethod
__S[11] = newcclosure
local u799 = cloneref
local u800 = getconnections
local u801 = getupvalues
local u802 = setupvalue
local u803 = getinfo
local u804 = islclosure
local u805 = checkcaller
local u806 = select
local u807 = unpack
local u808 = pcall
local u809 = type
local u810 = typeof
local u811 = pairs
local u812 = ipairs
__S[23] = assert
local u813 = warn
local u814 = tostring
local u815 = tonumber
__S[19] = rawget
local u816 = setmetatable
local u817 = tick
local u818 = Vector3
local u819 = CFrame
local u820 = Color3
local u821 = UDim2
local u822 = UDim
local u823 = Instance
local u824 = Enum
local u825 = table
local u826 = string
local u827 = math
local u828 = task
local u829 = os
local u830 = u799(u796:GetService("UserInputService"))
local u831 = u799(u796:GetService("ContentProvider"))
local u832 = u799(u796:GetService("TweenService"))
local u833 = u799(u796:GetService("HttpService"))
local u834 = u799(u796:GetService("TextService"))
u799(u796:GetService("RunService"))
u799(u796:GetService("Lighting"))
local u835 = u799(u796:GetService("Players"))
local u836 = u799(u796:GetService("CoreGui"))
u799(u796:GetService("Debris"))
local u837 = 0
local u838 = 0
local u839

local function u840(r0)
    u837 = u837 + 1
    local r1 = r0 or math.random(14, 22)
    local r2 = table.create(r1)

    for r3 = 1, r1 do
        local r8 = math.random(1, 63)

        if r3 == r1 then
            r8 = (r8 + u837 * 19 + r1 * 7) % 63 + 1
        end

        r2[r3] = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_", r8, r8)
    end

    return table.concat(r2)
end

local function u841(r0)
    u837 = u837 + 1
    local r1 = r0 or math.random(12, 18)
    local r2 = table.create(r1)

    for r3 = 1, r1 do
        local r8 = math.random(1, 63)

        if r3 == r1 then
            r8 = (r8 + u837 * 23) % 63 + 1
        end

        r2[r3] = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_", r8, r8)
    end

    return table.concat(r2)
end

local u842 = u840(u827.random(14, 22))
local u843 = u841(u827.random(12, 18))

local function u844()
    local u845

    pcall(function()
        if typeof(gethui) ~= "function" then
            return
        end

        u845 = gethui()

        if u845 and typeof(u799) == "function" then
            u845 = u799(u845)
        end
    end)

    if u845 then
        return u845
    end

    return u836
end

local function u846(r0)
    r0(u844())
    r0(u836)
    r0(u835.LocalPlayer and u835.LocalPlayer:FindFirstChildOfClass("PlayerGui"))
end

local function u847(r0)
    u838 = u838 + 1
    local r1 = u823.new(r0)
    r1.Name = u840(math.random(14, 22))
    return r1
end

local u848 = {
    ScreenGui = true,
    BillboardGui = true,
    SurfaceGui = true,
    Frame = true,
    ScrollingFrame = true,
    TextLabel = true,
    TextButton = true,
    TextBox = true,
    ImageLabel = true,
    ImageButton = true,
    ViewportFrame = true,
    VideoFrame = true,
    CanvasGroup = true,
    Folder = true,
    UICorner = true,
    UIStroke = true,
    UIGradient = true,
    UIPadding = true,
    UIListLayout = true,
    UIGridLayout = true,
    UIAspectRatioConstraint = true,
    UITextSizeConstraint = true,
    UISizeConstraint = true,
    UIScale = true,
    UIPageLayout = true,
    UITableLayout = true
}

local function u849(r0, ...)
    if u848[r0] then
        return u847(r0)
    end

    return u823.new(r0, ...)
end

local u850 = u816({}, {
    __index = function(r0, r1)
        if r1 == "new" then
            return u849
        end

        return u823[r1]
    end
})

local function u851(r0)
    if not r0 then
        return
    end

    r0:SetAttribute(u843, u841(math.random(14, 22)))
    u839 = r0

    if u798 then
        u798()[u842] = r0
        u798()._AllusiveObfuscationRegistry = {GuiRoot = r0, GlobalKey = u842, MarkerAttribute = u843}
    end
end

local function u852()
    local r0 = u843

    u846(function(r0)
        if not r0 then
            return
        end

        for r3, r4 in r0:GetChildren() do
            if r4:IsA("ScreenGui") and r4:GetAttribute(u843) ~= nil then
                r4:Destroy()
            end
        end
    end)
end

local function u853()
    if not u798 then
        return
    end

    local u854 = u798()._AllusiveObfuscationRegistry

    if typeof(u854) ~= "table" then
        return
    end

    if typeof(u854.GuiRoot) == "Instance" and u854.GuiRoot.Parent then
        pcall(function()
            u854.GuiRoot:Destroy()
        end)
    end

    if typeof(u854.GlobalKey) == "string" then
        local u855 = u798()[u854.GlobalKey]

        if typeof(u855) == "Instance" and u855.Parent then
            pcall(function()
                u855:Destroy()
            end)
        end

        u798()[u854.GlobalKey] = nil
    end

    if typeof(u854.MarkerAttribute) == "string" then
        local u856 = u854.MarkerAttribute

        u846(function(r0)
            if not r0 then
                return
            end

            for r2, r3 in r0:GetChildren() do
                if r3:IsA("ScreenGui") and r3:GetAttribute(u856) ~= nil then
                    r3:Destroy()
                end
            end
        end)
    end
end

__S[7] = function()
    u853()
    u852()

    if u798 and u842 then
        local r2 = u798()[u842]

        if typeof(r2) == "Instance" and r2.Parent then
            r2:Destroy()
        end

        u798()[u842] = nil
    end

    if u839 and u839.Parent then
        u839:Destroy()
    end

    u839 = nil
end

local function u857()
    local r0 = u847("ScreenGui")
    r0.ResetOnSpawn = false
    r0.IgnoreGuiInset = true
    r0.ZIndexBehavior = u824.ZIndexBehavior.Sibling
    r0.Parent = u844()
    u851(r0)
    return r0
end

local function u858()
    local r4 = u847("ScreenGui")
    r4.ResetOnSpawn = false
    r4.IgnoreGuiInset = true
    r4.ZIndexBehavior = u824.ZIndexBehavior.Sibling
    r4:SetAttribute(u843, u841(math.random(14, 22)))
    r4.Parent = u844()
    return r4
end

local u859 = {new = u847}
local u860 = u835.LocalPlayer:GetMouse()

local u861 = {
    Language = {
        CheckboxEnabled = "Enabled",
        CheckboxDisabled = "Disabled",
        SliderValue = "Value",
        DropdownSelect = "Select",
        DropdownNone = "None",
        DropdownSelected = "Selected",
        ButtonClick = "Click",
        TextboxEnter = "Enter",
        ModuleEnabled = "Enabled",
        ModuleDisabled = "Disabled",
        TabGeneral = "General",
        TabSettings = "Settings",
        Loading = "Loading...",
        Error = "Error",
        Success = "Success"
    },
    Colors = {
        Background = u820.fromRGB(11, 11, 17),
        Card = u820.fromRGB(17, 17, 24),
        CardDeep = u820.fromRGB(13, 13, 20),
        Stroke = u820.fromRGB(36, 40, 58),
        StrokeHot = u820.fromRGB(72, 76, 130),
        Accent = u820.fromRGB(99, 102, 241),
        AccentDim = u820.fromRGB(55, 58, 190),
        AccentSoft = u820.fromRGB(172, 178, 255),
        AccentGlow = u820.fromRGB(99, 102, 241),
        Text = u820.fromRGB(235, 235, 245),
        SubText = u820.fromRGB(148, 152, 185),
        NotifyBg = u820.fromRGB(16, 16, 26),
        Danger = u820.fromRGB(240, 70, 70),
        Success = u820.fromRGB(72, 210, 140)
    },
    DefaultColors = {},
    Connections = u816({}, {
        __index = {
            disconnect = function(r0, r1)
                if not r0[r1] then
                    return
                end

                r0[r1]:Disconnect()
                r0[r1] = nil
            end,
            disconnect_all = function(r0)
                for r2, r3 in r0 do
                    if typeof(r3) ~= "function" then
                        r3:Disconnect()
                    end
                end
            end
        }
    }),
    Util = {
        map = function(r0, r1, r2, r3, r4, r5)
            return (r1 - r2) * (r5 - r4) / (r3 - r2) + r4
        end,
        viewport_point_to_world = function(r0, r1, r2)
            local r5 = u797.CurrentCamera:ScreenPointToRay(r1.X, r1.Y)
            return r5.Origin + r5.Direction * r2
        end,
        get_offset = function(r0)
            return r0:map(u797.CurrentCamera.ViewportSize.Y, 0, 2560, 8, 56)
        end
    },
    Library = {
        _all_modules = {},
        _config = nil,
        _choosing_keybind = false,
        _blocking_drag = false,
        _device = nil,
        _ui_open = true,
        _ui_scale = 1,
        _ui_loaded = false,
        _ui = nil,
        _dragging = false,
        _drag_start = nil,
        _container_position = nil,
        _tab = 0,
        _active_tab_ref = nil,
        _theme_container = nil,
        _theme_container_stroke = nil,
        _theme_vert_div = nil,
        _theme_search = nil,
        _theme_search_stroke = nil,
        _theme_client_grad = nil,
        _theme_pin = nil,
        _theme_logo = nil,
        _container_uiscale = nil,
        _applying_theme = false,
        _theme_pending = false,
        _theme_debounce = nil
    }
}

for r5_10, r6_6 in u811(u861.Colors) do
    u861.DefaultColors[r5_10] = r6_6
end

u798().GG = {Language = u861.Language}
local u862 = u861.Language
local u863 = u861.Connections
__S[3] = u861.Util
local u864 = u861.Library
u864.__index = u864
local u865 = loadstring(u796:HttpGet("https://raw.githubusercontent.com/ieltxq/Library/refs/heads/main/Icons"))()

local function u866(r0)
    if not r0 then
        return ""
    end

    if r0:find("rbxassetid://") then
        return r0
    end

    return u865[r0] or ""
end

__S[7]()

if not isfolder("Allusive") then
    makefolder("Allusive")
end

local u867 = {}
u867.__index = u867

function u867.save(r0, u868, u869)
    local function r4()
        writefile("Allusive/" .. u868 .. ".json", u833:JSONEncode(u869))
    end

    local r3, r4_2 = pcall(r4)

    if not r3 then
        u813("failed to save config", r4_2)
    end
end

function u867.load(u871, u870, u872)
    local function r4()
        if not isfile("Allusive/" .. u870 .. ".json") then
            u871:save(u870, u872)
            return
        end

        local r4 = readfile("Allusive/" .. u870 .. ".json")

        if not r4 then
            u871:save(u870, u872)
            return
        end

        return u833:JSONDecode(r4)
    end

    local r3, r4_2 = pcall(r4)

    if not r3 then
        u813("failed to load config", r4_2)
    end

    local r3_2 = r4_2 or {_flags = {}, _keybinds = {}, _library = {}}
    return r3_2
end

u864._config = u867:load(u796.GameId)
__S[3] = u864._config._gui

if not __S[3] then
    __S[3] = {}
    u864._config._gui = __S[3]
end

if __S[3].toggle_key == nil then
    __S[3].toggle_key = "Enum.KeyCode.RightControl"
end

if __S[3].hide_minimized == nil then
    __S[3].hide_minimized = false
end

if __S[3].bg_transparency == nil then
    __S[3].bg_transparency = 0.04
end

__S[3] = u857()
__S[3].ZIndexBehavior = u824.ZIndexBehavior.Global
local u873 = u859.new("Frame")
u873.Size = u821.new(0, 330, 1, -40)
u873.Position = u821.new(0, 18, 1, -20)
u873.AnchorPoint = Vector2.new(0, 1)
u873.BackgroundTransparency = 1
u873.ClipsDescendants = false
u873.Parent = __S[3]
__S[3] = u850.new("UIListLayout")
__S[3].VerticalAlignment = u824.VerticalAlignment.Bottom
__S[3].Padding = u822.new(0, 10)
__S[3].Parent = u873

function u864.SendNotification(r0)
    local r6 = u859
    local r1 = u861.Colors
    local r7 = r0.duration or 4
    local r8 = r0.iconColor or r1.Accent
    local u874 = r6.new("Frame")
    u874.Size = u821.new(1, 0, 0, 66)
    u874.BackgroundTransparency = 1
    u874.Parent = u873
    local u875 = r6.new("Frame")
    u875.Size = u821.new(1, 0, 1, 0)
    u875.BackgroundColor3 = u820.fromRGB(16, 16, 25)
    u875.BackgroundTransparency = 0
    u875.BorderSizePixel = 0
    u875.ClipsDescendants = true
    u875.Parent = u874
    local r2 = r6.new("UICorner")
    r2.CornerRadius = u822.new(0, 12)
    r2.Parent = u875
    local r2_2 = r6.new("UIStroke")
    r2_2.Color = r1.StrokeHot
    r2_2.Transparency = 0.64
    r2_2.ApplyStrokeMode = u824.ApplyStrokeMode.Border
    r2_2.Parent = u875
    local r2_3 = r6.new("Frame")
    r2_3.Size = u821.new(1, 0, 0, 34)
    r2_3.Position = u821.new(0, 0, 0, 0)
    r2_3.BackgroundColor3 = r8
    r2_3.BackgroundTransparency = 0.85
    r2_3.BorderSizePixel = 0
    r2_3.Parent = u875
    local r3 = r6.new("UICorner")

    r3.CornerRadius = u822.new(0, 12)
    r3.Parent = r2_3
    local r3_2 = r6.new("UIGradient")
    r3_2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
    r3_2.Rotation = 90
    r3_2.Parent = r2_3
    local r2_4 = r6.new("Frame")
    r2_4.Size = u821.new(0, 30, 0, 30)
    r2_4.Position = u821.new(0, 13, 0.5, 0)
    r2_4.AnchorPoint = Vector2.new(0, 0.5)
    r2_4.BackgroundColor3 = r8
    r2_4.BackgroundTransparency = 0.72
    r2_4.BorderSizePixel = 0
    r2_4.Parent = u875
    local r3_3 = r6.new("UICorner")
    r3_3.CornerRadius = u822.new(0, 8)
    r3_3.Parent = r2_4
    local r3_4 = r6.new("ImageLabel")
    r3_4.BackgroundTransparency = 1
    r3_4.Size = u821.new(0, 14, 0, 14)
    r3_4.Position = u821.new(0.5, 0, 0.5, 0)
    r3_4.AnchorPoint = Vector2.new(0.5, 0.5)
    r3_4.Image = u866(r0.icon)
    r3_4.ImageColor3 = r8
    r3_4.Parent = r2_4
    local r2_5 = r6.new("TextLabel")
    r2_5.Text = r0.title or "Notification"
    r2_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
    r2_5.TextSize = 13
    r2_5.TextColor3 = r1.Text
    r2_5.TextTransparency = 0
    r2_5.BackgroundTransparency = 1
    r2_5.Position = u821.new(0, 52, 0, 9)
    r2_5.Size = u821.new(1, -60, 0, 16)
    r2_5.TextXAlignment = u824.TextXAlignment.Left
    r2_5.Parent = u875
    local r2_6 = r6.new("TextLabel")
    r2_6.Text = r0.text or ""
    r2_6.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
    r2_6.TextSize = 11
    r2_6.TextColor3 = r1.SubText
    r2_6.BackgroundTransparency = 1
    r2_6.Position = u821.new(0, 52, 0, 27)
    r2_6.Size = u821.new(1, -60, 0, 28)
    r2_6.TextWrapped = true
    r2_6.TextXAlignment = u824.TextXAlignment.Left
    r2_6.TextYAlignment = u824.TextYAlignment.Top
    r2_6.Parent = u875
    local r10 = r6.new("Frame")
    r10.Size = u821.new(1, -24, 0, 3)
    r10.Position = u821.new(0, 12, 1, -5)
    r10.AnchorPoint = Vector2.new(0, 1)
    r10.BackgroundColor3 = r1.Stroke
    r10.BackgroundTransparency = 0.3
    r10.BorderSizePixel = 0
    r10.Parent = u875
    local r1_2 = r6.new("UICorner")
    r1_2.CornerRadius = u822.new(0, 2)
    r1_2.Parent = r10
    local r20 = r6.new("Frame")
    r20.Size = u821.new(1, 0, 1, 0)
    r20.BackgroundColor3 = r8
    r20.BackgroundTransparency = 0.15
    r20.BorderSizePixel = 0
    r20.Parent = r10
    local r1_3 = r6.new("UICorner")
    r1_3.CornerRadius = u822.new(0, 2)
    r1_3.Parent = r20
    u875.Position = u821.new(-1.08, 0, 0, 0)
    u832:Create(u875, TweenInfo.new(0.52, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Position = u821.new(0, 0, 0, 0)}):Play()
    u832:Create(r20, TweenInfo.new(r7 - 0.04, u824.EasingStyle.Linear), {Size = u821.new(0, 0, 1, 0)}):Play()

    task.delay(r7, function()
        u832:Create(u875, TweenInfo.new(0.38, u824.EasingStyle.Quint, u824.EasingDirection.In), {Position = u821.new(-1.08, 0, 0, 0)}):Play()

        task.delay(0.4, function()
            u874:Destroy()
        end)
    end)
end

function u864.get_screen_scale(r0)
    local r1 = u797.CurrentCamera.ViewportSize.X / 1400

    if r0._device == "Mobile" then
        r0._ui_scale = math.clamp(r1 * 0.97, 0.68, 0.9)
    else
        r0._ui_scale = math.clamp(r1, 0.5, 1.2)
    end
end

function u864.get_device(r0)
    if not u830.TouchEnabled and u830.KeyboardEnabled and u830.MouseEnabled then
        r0._device = "PC"
    elseif u830.TouchEnabled then
        r0._device = "Mobile"
    elseif u830.GamepadEnabled then
        r0._device = "Console"
    else
        r0._device = "Unknown"
    end
end

function u864.removed(r0, r1)
    r0._ui.AncestryChanged:Once(r1)
end

function u864.flag_type(r0, r1, r2)
    if not u864._config._flags[r1] then
        return
    end

    return typeof(u864._config._flags[r1]) == r2
end

function u864.remove_table_value(r0, r1, r2)
    for r8, r9 in r1 do
        if r9 == r2 then
            table.remove(r1, r8)
            return
        end
    end
end

function u864.new()
    local r4 = setmetatable({_loaded = false}, u864)
    r4:create_ui()
    return r4
end

function u864.create_ui(u876)
    local r4 = u859;

    (function()
        local r7 = u864._config._gui

        if not r7 or not r7.colors then
            return
        end

        for r1, r2 in pairs(r7.colors) do
            if type(r2) == "table" and r2.H ~= nil and u861.Colors[r1] then
                u861.Colors[r1] = u820.fromHSV(r2.H, r2.S, r2.V)
            end
        end

        local r9 = u861.Colors

        if r7.colors.Stroke then
            local r6 = r9.Stroke
            r9.StrokeHot = u820.new(math.clamp(r6.R * 1.2 + 0.05, 0, 1), math.clamp(r6.G * 1.2 + 0.05, 0, 1), math.clamp(r6.B * 1.22 + 0.06, 0, 1))
        end

        if r7.colors.Accent then
            local r11 = r9.Accent
            r9.AccentSoft = u820.new(math.clamp(r11.R * 0.55 + 0.42, 0, 1), math.clamp(r11.G * 0.55 + 0.42, 0, 1), math.clamp(r11.B * 0.58 + 0.45, 0, 1))
            r9.AccentDim = u820.new(math.clamp(r11.R * 0.42, 0, 1), math.clamp(r11.G * 0.42, 0, 1), math.clamp(r11.B * 0.48, 0, 1))
            r9.AccentGlow = r11
        end

        if r7.colors.Card then
            local r0 = r9.Card
            r9.CardDeep = u820.new(r0.R * 0.78, r0.G * 0.78, r0.B * 0.8)
        end
    end)()

    local u877 = u861.Colors
    local u878 = u857()
    local u879 = r4.new("Frame")
    u879.ClipsDescendants = true
    u879.AnchorPoint = Vector2.new(0.5, 0.5)
    u879.Name = "Container"
    u879.BackgroundTransparency = u864._config._gui and u864._config._gui.bg_transparency or 0.04
    u879.BackgroundColor3 = u877.Background
    u879.Position = u821.new(0.5, 0, 0.5, 0)
    u879.Size = u821.new(0, 0, 0, 0)
    u879.Active = true
    u879.BorderSizePixel = 0
    u879.Parent = u878
    local r2 = r4.new("UICorner")
    r2.CornerRadius = u822.new(0, 18)
    r2.Parent = u879
    local r2_2 = r4.new("UIStroke")
    r2_2.Color = u877.StrokeHot
    r2_2.Transparency = 0.6
    r2_2.ApplyStrokeMode = u824.ApplyStrokeMode.Border
    r2_2.Parent = u879
    local u880 = r4.new("Frame")
    u880.BackgroundTransparency = 1
    u880.Name = "Handler"
    u880.Size = u821.new(0, 698, 0, 479)
    u880.BorderSizePixel = 0
    u880.Parent = u879
    local u881 = r4.new("Frame")
    u881.Name = "Search"
    u881.Size = u821.new(0, 32, 0, 32)
    u881.Position = u821.new(1, -14, 0, 10)
    u881.AnchorPoint = Vector2.new(1, 0)
    u881.BackgroundColor3 = u877.CardDeep
    u881.BackgroundTransparency = 0.3
    u881.BorderSizePixel = 0
    u881.Parent = u880
    local r3 = r4.new("UICorner")
    r3.CornerRadius = u822.new(1, 0)
    r3.Parent = u881
    local r10 = r4.new("UIStroke")
    r10.Color = u877.StrokeHot
    r10.Transparency = 0.5
    r10.Parent = u881
    local r11 = r4.new("ImageButton")
    r11.Size = u821.new(0, 15, 0, 15)
    r11.Position = u821.new(0, 8, 0.5, 0)
    r11.AnchorPoint = Vector2.new(0, 0.5)
    r11.ImageColor3 = u877.Accent
    r11.BackgroundTransparency = 1
    r11.Image = u866("search")
    r11.Parent = u881
    local u882 = r4.new("TextBox")
    u882.Size = u821.new(1, -38, 1, 0)
    u882.Position = u821.new(0, 32, 0, 0)
    u882.TextXAlignment = u824.TextXAlignment.Left
    u882.TextYAlignment = u824.TextYAlignment.Center
    u882.BackgroundTransparency = 1
    u882.TextTransparency = 1
    u882.PlaceholderText = "Search modules..."
    u882.PlaceholderColor3 = u877.SubText
    u882.TextColor3 = u877.Text
    u882.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
    u882.TextSize = 12
    u882.ClearTextOnFocus = false
    u882.Text = ""
    u882.Parent = u881
    local r12 = r4.new("UIPadding")
    r12.PaddingLeft = u822.new(0, 2)
    r12.Parent = u882
    local u883 = false

    r11.MouseButton1Click:Connect(function()
        if u883 then
            return
        end

        u883 = true
        u832:Create(u881, TweenInfo.new(0.38, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Size = u821.new(0, 200, 0, 32)}):Play()
        u832:Create(u882, TweenInfo.new(0.25), {TextTransparency = 0}):Play()

        task.delay(0.15, function()
            u882:CaptureFocus()
        end)
    end)

    u882.FocusLost:Connect(function()
        if u882.Text ~= "" then
            return
        end

        u883 = false
        u882:ReleaseFocus()
        u832:Create(u881, TweenInfo.new(0.38, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Size = u821.new(0, 32, 0, 32)}):Play()
        u832:Create(u882, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
    end)

    u882:GetPropertyChangedSignal("Text"):Connect(function()
        local r6 = u882.Text:lower()

        for r2, r3 in ipairs(u864._all_modules) do
            r3.frame.Visible = r6 == "" or r3.title:find(r6, 1, true) ~= nil
        end
    end)

    local u884 = r4.new("ScrollingFrame")
    u884.ScrollBarImageTransparency = 1
    u884.ScrollBarThickness = 0
    u884.Name = "Tabs"
    u884.Size = u821.new(0, 129, 0, 440)
    u884.Selectable = false
    u884.AutomaticCanvasSize = u824.AutomaticSize.XY
    u884.BackgroundTransparency = 1
    u884.Position = u821.new(0.0261, 0, 0.16, 0)
    u884.BorderSizePixel = 0
    u884.CanvasSize = u821.new(0, 0, 0.5, 0)
    u884.Parent = u880
    local r30 = r4.new("UIListLayout")
    r30.Padding = u822.new(0, 4)
    r30.SortOrder = u824.SortOrder.LayoutOrder
    r30.Parent = u884

    local function r32(r0, r1)
        local r2 = u859.new("Frame")
        r2.Name = "Divider"
        r2.BackgroundTransparency = 0.38
        r2.BorderSizePixel = 0
        r2.BackgroundColor3 = u877.Stroke
        r2.Position = r0
        r2.Size = r1
        r2.Parent = u880
        local r3 = u859.new("UIGradient")

        r3.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(0.3, 0),
            NumberSequenceKeypoint.new(0.7, 0),
            NumberSequenceKeypoint.new(1, 1)
        })

        r3.Parent = r2
    end

    r32(u821.new(0.23, 0, 0.12, 0), u821.new(0, 450, 0, 1))
    r32(u821.new(0, 0, 0.12, 0), u821.new(0, 157, 0, 1))
    local r34 = r4.new("Frame")
    r34.BackgroundTransparency = 0.48
    r34.BorderSizePixel = 0
    r34.BackgroundColor3 = u877.Stroke
    r34.Position = u821.new(0.225, 0, 0.13, 0)
    r34.Size = u821.new(0, 1, 0.78, 0)
    r34.Parent = u880
    local r38 = r4.new("UIGradient")

    r38.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.15, 0),
        NumberSequenceKeypoint.new(0.85, 0),
        NumberSequenceKeypoint.new(1, 1)
    })

    r38.Rotation = 90
    r38.Parent = r34
    local r47 = r4.new("TextLabel")
    r47.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
    r47.TextColor3 = u877.Accent
    r47.TextTransparency = 0.05
    r47.Text = "Allusive"
    r47.Name = "ClientName"
    r47.Size = u821.new(0, 68, 0, 14)
    r47.AnchorPoint = Vector2.new(0, 0.5)
    r47.Position = u821.new(0.056, 0, 0.055, 0)
    r47.BackgroundTransparency = 1
    r47.TextXAlignment = u824.TextXAlignment.Left
    r47.TextSize = 15
    r47.Parent = u880
    local r56 = r4.new("UIGradient")

    r56.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, u877.Accent),
        ColorSequenceKeypoint.new(0.42, u877.Accent),
        ColorSequenceKeypoint.new(1, u877.Accent)
    })

    r56.Offset = Vector2.new(0, 0)
    r56.Parent = r47
    local r65 = r4.new("Frame")
    r65.Name = "Pin"
    r65.Position = u821.new(0.026, 0, 0.136, 0)
    r65.Size = u821.new(0, 2, 0, 16)
    r65.BorderSizePixel = 0
    r65.BackgroundColor3 = u877.Accent
    r65.Visible = false
    r65.Parent = u880
    local r68 = r4.new("UICorner")
    r68.CornerRadius = u822.new(0, 12)
    r68.Parent = r65
    local u885 = r4.new("ImageLabel")
    u885.ScaleType = u824.ScaleType.Fit
    u885.AnchorPoint = Vector2.new(0, 0.5)
    u885.Image = "rbxassetid://99206841644167"
    u885.BackgroundTransparency = 1
    u885.Position = u821.new(0.025, 0, 0.055, 0)
    u885.Name = "Icon"
    u885.Size = u821.new(0, 18, 0, 18)
    u885.BorderSizePixel = 0
    u885.ImageColor3 = u877.AccentSoft
    u885.Parent = u880
    u885.ImageRectSize = Vector2.new(32, 32)

    task.spawn(function()
    end)

    local u886 = r4.new("Folder")
    u886.Name = "Sections"
    u886.Parent = u880
    local r81 = r4.new("TextButton")
    r81.Text = ""
    r81.AutoButtonColor = false
    r81.BackgroundTransparency = 1
    r81.Name = "Minimize"
    r81.Position = u821.new(0.0201, 0, 0.0292, 0)
    r81.Size = u821.new(0, 24, 0, 24)
    r81.BorderSizePixel = 0
    r81.Parent = u880
    local u887 = r4.new("UIScale")
    u887.Parent = u879
    u876._container_uiscale = u887
    u876._ui = u878
    u876._theme_container = u879
    u876._theme_container_stroke = r2_2
    u876._theme_vert_div = r34
    u876._theme_search = u881
    u876._theme_search_stroke = r10
    u876._theme_search_icon = r11
    u876._theme_search_box = u882
    u876._theme_client_name = r47
    u876._theme_client_grad = r56
    u876._theme_pin = r65
    u876._theme_logo = u885
    u876._theme_tabs_ref = u884

    local function r18(u888)
        if u864._blocking_drag then
            return
        end

        if u888.UserInputType ~= u824.UserInputType.MouseButton1 and u888.UserInputType ~= u824.UserInputType.Touch then
            return
        end

        u876._dragging = true
        u876._drag_start = u888.Position
        u876._container_position = u879.Position

        u863.container_input_ended = u888.Changed:Connect(function()
            if u888.UserInputState ~= u824.UserInputState.End then
                return
            end

            u863:disconnect("container_input_ended")
            u876._dragging = false
        end)
    end

    local function r19(r0)
        if not u876._dragging or u864._blocking_drag then
            return
        end

        if r0.UserInputType ~= u824.UserInputType.MouseMovement and r0.UserInputType ~= u824.UserInputType.Touch then
            return
        end

        local r2 = r0.Position - u876._drag_start

        u832:Create(u879, TweenInfo.new(0.2), {
            Position = u821.new(u876._container_position.X.Scale, u876._container_position.X.Offset + r2.X, u876._container_position.Y.Scale, u876._container_position.Y.Offset + r2.Y)
        }):Play()
    end

    u863.container_input_began = u879.InputBegan:Connect(r18)
    u863.input_changed = u830.InputChanged:Connect(r19)

    u876:removed(function()
        u876._ui = nil
        u863:disconnect_all()
    end)

    function u876.Update1Run(u890, u889)
        if u889 == "nil" then
            u879.BackgroundTransparency = 0.04
        else
            pcall(function()
                u879.BackgroundTransparency = tonumber(u889)
            end)
        end
    end

    function u876.UIVisiblity(r0)
        u878.Enabled = not u878.Enabled
    end

    function u876.change_visiblity(u891, r1)
        u891._vis_seq = (u891._vis_seq or 0) + 1
        local u892 = u891._vis_seq
        local r2 = not r1
        local r3 = u891._device
        local r4 = "PC"
        local r7 = r3 == r4

        if r3 == r4 then
            r7 = u864._config._gui and u864._config._gui.hide_minimized
        end

        local u893 = u891._container_uiscale
        local u894 = u891._ui_scale or 1

        if r2 and r7 then
            if u893 then
                u832:Create(u893, TweenInfo.new(0.34, u824.EasingStyle.Quint, u824.EasingDirection.In), {Scale = 0.04}):Play()

                task.delay(0.36, function()
                    if u892 ~= u891._vis_seq then
                        return
                    end

                    if not u891._ui_open then
                        u878.Enabled = false
                        u893.Scale = u894
                    end
                end)
            else
                u878.Enabled = false
            end

            return
        end

        u878.Enabled = true

        if r1 and u893 then
            u893.Scale = 0.04
            u832:Create(u893, TweenInfo.new(0.34, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Scale = u894}):Play()
        end

        local r12 = u832
        local r2_2 = r12.Create
        local r14 = TweenInfo.new(0.34, u824.EasingStyle.Quint, u824.EasingDirection.Out)
        local r15 = {}

        if r1 then
            r1 = u821.fromOffset(698, 479)
        end

        if not r1 then
            r1 = u821.fromOffset(104.5, 52)
        end

        r15.Size = r1
        r2_2(r12, u879, r14, r15):Play()
    end

    function u876.load(u895)
        local r6 = {}

        for r2, r3 in u878:GetDescendants() do
            if r3:IsA("ImageLabel") then
                table.insert(r6, r3)
            end
        end

        u831:PreloadAsync(r6)
        u895:get_device()

        if u895._device == "Mobile" or u895._device == "Unknown" then
            u895:get_screen_scale()
            u887.Scale = u895._ui_scale

            u863.ui_scale = u797.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
                u895:get_screen_scale()
                u887.Scale = u895._ui_scale
            end)
        end

        u832:Create(u879, TweenInfo.new(0.55, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Size = u821.fromOffset(698, 479)}):Play()
        u895._ui_loaded = true
    end

    function u876.update_tabs(r0, r1, r2)
        local r12 = r2 ~= false
        r0._active_tab_ref = r1

        for r4, r5 in u884:GetChildren() do
            if r5.Name == "Tab" then
                r5.BackgroundColor3 = u877.CardDeep
                local r2_2 = r5:FindFirstChild("Indicator")
                local r13 = r5:FindFirstChildOfClass("TextLabel")
                local r14 = r13 and r13:FindFirstChildOfClass("UIGradient")
                local r15 = r5:FindFirstChild("Icon")

                if r5 == r1 then
                    r5:SetAttribute("_active", true)

                    if r12 then
                        u832:Create(r5, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {BackgroundTransparency = 0.82}):Play()

                        if r13 then
                            u832:Create(r13, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                                TextTransparency = 0,
                                TextColor3 = u877.Accent
                            }):Play()
                        end

                        if r14 then
                            u832:Create(r14, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Offset = Vector2.new(1, 0)}):Play()
                        end

                        if r15 then
                            u832:Create(r15, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                                ImageTransparency = 0,
                                ImageColor3 = u877.Accent
                            }):Play()
                        end

                        if r2_2 then
                            r2_2.BackgroundColor3 = u877.Accent
                            r2_2.BackgroundTransparency = 1
                            r2_2.Size = u821.new(0, 3, 0, 6)

                            u832:Create(r2_2, TweenInfo.new(0.42, u824.EasingStyle.Back, u824.EasingDirection.Out), {
                                BackgroundTransparency = 0,
                                Size = u821.new(0, 3, 0, 22)
                            }):Play()
                        end
                    else
                        r5.BackgroundTransparency = 0.82

                        if r13 then
                            r13.TextTransparency = 0
                            r13.TextColor3 = u877.Accent
                        end

                        if r14 then
                            r14.Offset = Vector2.new(1, 0)
                        end

                        if r15 then
                            r15.ImageTransparency = 0
                            r15.ImageColor3 = u877.Accent
                        end

                        if r2_2 then
                            r2_2.BackgroundColor3 = u877.Accent
                            r2_2.BackgroundTransparency = 0
                            r2_2.Size = u821.new(0, 3, 0, 22)
                        end
                    end
                else
                    r5:SetAttribute("_active", false)

                    if r12 then
                        u832:Create(r5, TweenInfo.new(0.28, u824.EasingStyle.Quint, u824.EasingDirection.Out), {BackgroundTransparency = 1}):Play()

                        if r13 then
                            u832:Create(r13, TweenInfo.new(0.28, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                                TextTransparency = 0.42,
                                TextColor3 = u877.Text
                            }):Play()
                        end

                        if r14 then
                            u832:Create(r14, TweenInfo.new(0.28, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Offset = Vector2.new(0, 0)}):Play()
                        end

                        if r15 then
                            u832:Create(r15, TweenInfo.new(0.28, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                                ImageTransparency = 0.5,
                                ImageColor3 = u877.Text
                            }):Play()
                        end

                        if r2_2 then
                            u832:Create(r2_2, TweenInfo.new(0.22, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                                BackgroundTransparency = 1,
                                Size = u821.new(0, 3, 0, 10)
                            }):Play()
                        end
                    else
                        r5.BackgroundTransparency = 1

                        if r13 then
                            r13.TextTransparency = 0.42
                            r13.TextColor3 = u877.Text
                        end

                        if r14 then
                            r14.Offset = Vector2.new(0, 0)
                        end

                        if r15 then
                            r15.ImageTransparency = 0.5
                            r15.ImageColor3 = u877.Text
                        end

                        if r2_2 then
                            r2_2.BackgroundColor3 = u877.Accent
                            r2_2.BackgroundTransparency = 1
                            r2_2.Size = u821.new(0, 3, 0, 10)
                        end
                    end
                end
            end
        end
    end

    function u876.update_sections(r0, r1, r2)
        for r4, r5 in u886:GetChildren() do
            if r5 == r1 or r5 == r2 then
                r5.Visible = true
                r5.Position = u821.new(r5.Position.X.Scale, 12, r5.Position.Y.Scale, r5.Position.Y.Offset)
                local r6 = r5:FindFirstChildOfClass("UIScale")

                if not r6 then
                    r6 = u859.new("UIScale")
                    r6.Scale = 0.97
                    r6.Parent = r5
                else
                    r6.Scale = 0.97
                end

                u832:Create(r5, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                    Position = u821.new(r5.Position.X.Scale, 0, r5.Position.Y.Scale, r5.Position.Y.Offset)
                }):Play()

                u832:Create(r6, TweenInfo.new(0.32, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Scale = 1}):Play()
            else
                r5.Visible = false
            end
        end
    end

    function u876.create_tab(u896, r1, r2, r3)
        local r6 = r3 or {}
        local r7 = {}
        local r11 = u859.new("GetTextBoundsParams")
        r11.Text = r1
        r11.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r11.Size = 13
        r11.Width = 10000
        local r3_2 = u834:GetTextBoundsAsync(r11)
        local r8 = not r6.no_activate and (not u884:FindFirstChild("Tab") or u896._active_tab_ref == nil)
        local u897 = u859.new("TextButton")
        u897.Text = ""
        u897.AutoButtonColor = false
        u897.BackgroundTransparency = 1
        u897.Name = "Tab"
        u897.Size = u821.new(0, 129, 0, 38)
        u897.BorderSizePixel = 0
        u897.BackgroundColor3 = u877.CardDeep
        u897.Parent = u884

        if r6.layout_order ~= nil then
            u897.LayoutOrder = r6.layout_order
        else
            u897.LayoutOrder = u896._tab
            u896._tab = u896._tab + 1
        end

        local r5 = u859.new("UICorner")
        r5.CornerRadius = u822.new(0, 8)
        r5.Parent = u897
        local r5_2 = u859.new("UIScale")
        r5_2.Scale = 1
        r5_2.Parent = u897
        local r5_3 = u859.new("Frame")
        r5_3.Name = "Indicator"
        r5_3.Size = u821.new(0, 3, 0, 20)
        r5_3.Position = u821.new(0, 2, 0.5, 0)
        r5_3.AnchorPoint = Vector2.new(0, 0.5)
        r5_3.BackgroundColor3 = u877.Accent
        r5_3.BackgroundTransparency = 1
        r5_3.BorderSizePixel = 0
        r5_3.Parent = u897
        local r6_2 = u859.new("UICorner")
        r6_2.CornerRadius = u822.new(0, 3)
        r6_2.Parent = r5_3
        local r5_4 = u859.new("TextLabel")
        r5_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r5_4.TextColor3 = u877.Text
        r5_4.TextTransparency = 0.38
        r5_4.Text = r1
        r5_4.Size = u821.new(0, r3_2.X, 0, 16)
        r5_4.AnchorPoint = Vector2.new(0, 0.5)
        r5_4.Position = u821.new(0.24, 0, 0.5, 0)
        r5_4.BackgroundTransparency = 1
        r5_4.TextXAlignment = u824.TextXAlignment.Left
        r5_4.TextSize = 13
        r5_4.Parent = u897
        local r6_3 = u859.new("UIGradient")

        r6_3.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, u877.Text),
            ColorSequenceKeypoint.new(0.65, u820.fromRGB(120, 124, 185)),
            ColorSequenceKeypoint.new(1, u820.fromRGB(58, 60, 100))
        })

        r6_3.Parent = r5_4
        local r5_5 = u859.new("ImageLabel")
        r5_5.ScaleType = u824.ScaleType.Fit
        r5_5.ImageTransparency = 0.45
        r5_5.AnchorPoint = Vector2.new(0, 0.5)
        r5_5.BackgroundTransparency = 1
        r5_5.Position = u821.new(0.1, 0, 0.5, 0)
        r5_5.Name = "Icon"
        r5_5.Image = u866(r2)
        r5_5.ImageColor3 = u877.Text
        r5_5.Size = u821.new(0, 13, 0, 13)
        r5_5.BorderSizePixel = 0
        r5_5.Parent = u897

        local function r5_6(r0)
            local r1 = u859.new("ScrollingFrame")
            r1.AutomaticCanvasSize = u824.AutomaticSize.XY
            r1.ScrollBarThickness = 0
            r1.Size = u821.new(0, 243, 0, 360)
            r1.Selectable = false
            r1.ScrollBarImageTransparency = 1
            r1.BackgroundTransparency = 1
            r1.Position = u821.new(r0, 0, 0.16, 0)
            r1.BorderSizePixel = 0
            r1.CanvasSize = u821.new(0, 0, 0.5, 0)
            r1.Visible = false
            r1.Parent = u886
            local r2 = u859.new("UIListLayout")
            r2.Padding = u822.new(0, 10)
            r2.HorizontalAlignment = u824.HorizontalAlignment.Center
            r2.SortOrder = u824.SortOrder.LayoutOrder
            r2.Parent = r1
            local r2_2 = u859.new("UIPadding")
            r2_2.PaddingTop = u822.new(0, 1)
            r2_2.PaddingBottom = u822.new(0, 8)
            r2_2.Parent = r1
            return r1
        end

        local u898 = r5_6(0.23)
        local u899 = r5_6(0.6)

        if r8 then
            u896:update_tabs(u897)
            u896:update_sections(u898, u899)
        end

        u897.MouseButton1Click:Connect(function()
            u896:update_tabs(u897)
            u896:update_sections(u898, u899)
        end)

        function r7.create_module(r0, u903)
            local u900 = 0

            local u901 = {
                _state = false,
                _size = 0,
                _multiplier = 0,
                _accent_bar = nil
            }

            local u902 = false
            local r14
            u903.section = u903.section == "right" and u899 or u898
            u903.section:FindFirstChildOfClass("UIListLayout")

            local function r4()
                local r7 = 0

                for r1, r2 in u903.section:GetChildren() do
                    if r2:IsA("Frame") and r7 < r2.LayoutOrder then
                        r7 = r2.LayoutOrder
                    end
                end

                return r7 + 1
            end

            local u904 = u859.new("Frame")
            u904.ClipsDescendants = true
            u904.BorderSizePixel = 0
            u904.BackgroundTransparency = 0.68
            u904.Name = "Module"
            u904.Size = u821.new(1, -8, 0, 93)
            u904.BackgroundColor3 = u877.Card
            u904.LayoutOrder = r4()
            u904.Parent = u903.section
            local u905 = u904.LayoutOrder
            u904:SetAttribute("expanded", false)
            u904:SetAttribute("pinned", false)
            local r4_2 = u859.new("UIListLayout")
            r4_2.SortOrder = u824.SortOrder.LayoutOrder
            r4_2.Parent = u904
            local r4_3 = u859.new("UICorner")
            r4_3.CornerRadius = u822.new(0, 10)
            r4_3.Parent = u904
            local u906 = u859.new("UIStroke")
            u906.Color = u877.Stroke
            u906.Transparency = 0.32
            u906.ApplyStrokeMode = u824.ApplyStrokeMode.Border
            u906.Parent = u904

            table.insert(u864._all_modules, {
                frame = u904,
                title = (u903.title or ""):lower(),
                manager = u901,
                flag = u903.flag
            })

            local r16 = u859.new("TextButton")
            r16.Text = ""
            r16.AutoButtonColor = false
            r16.BackgroundTransparency = 1
            r16.Name = "Header"
            r16.Size = u821.new(1, 0, 0, 93)
            r16.BorderSizePixel = 0
            r16.Parent = u904
            local r4_4 = u859.new("Frame")
            r4_4.Size = u821.new(1, 0, 0, 58)
            r4_4.Position = u821.new(0, 0, 0, 0)
            r4_4.BackgroundColor3 = u877.CardDeep
            r4_4.BackgroundTransparency = 0.6
            r4_4.BorderSizePixel = 0
            r4_4.ZIndex = 0
            r4_4.Parent = r16
            local r5 = u859.new("UIGradient")
            r5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
            r5.Rotation = 90
            r5.Parent = r4_4
            local u907 = u859.new("Frame")
            u907.Name = "AccentBar"
            u907.Size = u821.new(0, 2, 0, 50)
            u907.Position = u821.new(0, 2, 0.5, 0)
            u907.AnchorPoint = Vector2.new(0, 0.5)
            u907.BackgroundColor3 = u861.Colors.AccentDim
            u907.BackgroundTransparency = 0.45
            u907.BorderSizePixel = 0
            u907.ZIndex = 3
            u907.Parent = r16
            local r4_5 = u859.new("UICorner")
            r4_5.CornerRadius = u822.new(0, 2)
            r4_5.Parent = u907
            u901._accent_bar = u907
            local r4_6 = u859.new("ImageLabel")
            r4_6.ImageColor3 = u877.AccentSoft
            r4_6.ScaleType = u824.ScaleType.Fit
            r4_6.AnchorPoint = Vector2.new(0, 0.5)
            r4_6.Image = "rbxassetid://79095934438045"
            r4_6.BackgroundTransparency = 1
            r4_6.Position = u821.new(0.071, 0, 0.82, 0)
            r4_6.Name = "Icon"
            r4_6.Size = u821.new(0, 15, 0, 15)
            r4_6.BorderSizePixel = 0
            r4_6.ImageTransparency = 0.25
            r4_6.Parent = r16
            local u908 = u859.new("ImageButton")
            u908.Name = "PinBtn"
            u908.Size = u821.new(0, 13, 0, 13)
            u908.AnchorPoint = Vector2.new(1, 0.5)
            u908.Position = u821.new(1, -10, 0.5, -23)
            u908.BackgroundTransparency = 1
            u908.Image = u866("pin") ~= "" and u866("pin") or "rbxassetid://7072718362"
            u908.ImageColor3 = u877.SubText
            u908.ImageTransparency = 0.55
            u908.BorderSizePixel = 0
            u908.ZIndex = 5
            u908.Parent = r16

            u908.MouseEnter:Connect(function()
                u832:Create(u908, TweenInfo.new(0.18), {ImageColor3 = u902 and u877.Accent or u877.Text, ImageTransparency = 0.1}):Play()
            end)

            u908.MouseLeave:Connect(function()
                u832:Create(u908, TweenInfo.new(0.22), {ImageColor3 = u902 and u877.Accent or u877.SubText, ImageTransparency = u902 and 0.08 or 0.55}):Play()
            end)

            u908.MouseButton1Click:Connect(function()
                u902 = not u902
                u904:SetAttribute("pinned", u902)

                if u902 then
                    u904.LayoutOrder = -1000

                    u832:Create(u908, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        ImageColor3 = u877.Accent,
                        ImageTransparency = 0.08
                    }):Play()

                    u832:Create(u906, TweenInfo.new(0.35), {Color = u877.Accent, Transparency = 0.55}):Play()
                else
                    u904.LayoutOrder = u905

                    u832:Create(u908, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        ImageColor3 = u877.SubText,
                        ImageTransparency = 0.55
                    }):Play()

                    if not u901._state then
                        u832:Create(u906, TweenInfo.new(0.35), {Color = u877.Stroke, Transparency = 0.32}):Play()
                    end
                end
            end)

            local r4_7 = u859.new("TextLabel")
            r4_7.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
            r4_7.TextColor3 = u877.Text
            r4_7.TextTransparency = 0.06

            if not u903.rich then
                r4_7.Text = u903.title or "Module"
            else
                r4_7.RichText = true
                r4_7.Text = u903.richtext or "Module"
            end

            r4_7.Name = "ModuleName"
            r4_7.Size = u821.new(0, 205, 0, 14)
            r4_7.AnchorPoint = Vector2.new(0, 0.5)
            r4_7.Position = u821.new(0.073, 0, 0.24, 0)
            r4_7.BackgroundTransparency = 1
            r4_7.TextXAlignment = u824.TextXAlignment.Left
            r4_7.TextSize = 13
            r4_7.Parent = r16
            local r4_8 = u859.new("TextLabel")
            r4_8.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
            r4_8.TextColor3 = u877.SubText
            r4_8.TextTransparency = 0.1
            r4_8.Text = u903.description or ""
            r4_8.Name = "Description"
            r4_8.Size = u821.new(0, 205, 0, 13)
            r4_8.AnchorPoint = Vector2.new(0, 0.5)
            r4_8.Position = u821.new(0.073, 0, 0.42, 0)
            r4_8.BackgroundTransparency = 1
            r4_8.TextXAlignment = u824.TextXAlignment.Left
            r4_8.TextSize = 10
            r4_8.Parent = r16
            local u909 = u859.new("Frame")
            u909.Name = "Toggle"
            u909.BackgroundTransparency = 0.6
            u909.Position = u821.new(0.82, 0, 0.757, 0)
            u909.Size = u821.new(0, 26, 0, 13)
            u909.BorderSizePixel = 0
            u909.BackgroundColor3 = u820.fromRGB(8, 8, 14)
            u909.Parent = r16
            local r4_9 = u859.new("UICorner")
            r4_9.CornerRadius = u822.new(0, 12)
            r4_9.Parent = u909
            local r4_10 = u859.new("UIStroke")
            r4_10.Color = u877.Stroke
            r4_10.Transparency = 0.25
            r4_10.Parent = u909
            local u910 = u859.new("Frame")
            u910.AnchorPoint = Vector2.new(0, 0.5)
            u910.BackgroundTransparency = 0.1
            u910.Position = u821.new(0, 2, 0.5, 0)
            u910.Name = "Circle"
            u910.Size = u821.new(0, 9, 0, 9)
            u910.BorderSizePixel = 0
            u910.BackgroundColor3 = u877.SubText
            u910.Parent = u909
            local r4_11 = u859.new("UICorner")
            r4_11.CornerRadius = u822.new(0, 12)
            r4_11.Parent = u910
            local u911 = u859.new("Frame")
            u911.Name = "Keybind"
            u911.BackgroundTransparency = 0.65
            u911.Position = u821.new(0.15, 0, 0.73, 0)
            u911.Size = u821.new(0, 33, 0, 15)
            u911.BorderSizePixel = 0
            u911.BackgroundColor3 = u877.Accent
            u911.Parent = r16
            local r4_12 = u859.new("UICorner")
            r4_12.CornerRadius = u822.new(0, 3)
            r4_12.Parent = u911

            local u912 = u859.new("TextLabel")
            u912.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
            u912.TextColor3 = u877.AccentSoft
            u912.Text = "None"
            u912.AnchorPoint = Vector2.new(0.5, 0.5)
            u912.Size = u821.new(0, 25, 0, 13)
            u912.BackgroundTransparency = 1
            u912.TextXAlignment = u824.TextXAlignment.Left
            u912.Position = u821.new(0.5, 0, 0.5, 0)
            u912.TextSize = 10
            u912.Parent = u911
            local u913 = false

            if u903.notify then
                local u914 = u903.flag .. "_notify"
                u913 = u864._config._library[u914] == true
                local u915 = u859.new("ImageButton")
                u915.Name = "Bell"
                u915.Size = u821.new(0, 18, 0, 18)
                u915.AnchorPoint = Vector2.new(0, 0)
                u915.Position = u821.new(0.72, 0, 0.735, 0)
                u915.BackgroundTransparency = 1
                u915.Image = u866("bell")
                u915.ImageColor3 = u913 and u877.Accent or u877.SubText
                u915.ImageTransparency = u913 and 0.05 or 0.45
                u915.BorderSizePixel = 0
                u915.Parent = r16

                u915.MouseButton1Click:Connect(function()
                    u913 = not u913
                    u864._config._library[u914] = u913
                    u867:save(u796.GameId, u864._config)

                    u832:Create(u915, TweenInfo.new(0.3, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        ImageColor3 = u913 and u861.Colors.Accent or u861.Colors.SubText,
                        ImageTransparency = u913 and 0.05 or 0.45
                    }):Play()
                end)
            end

            for r5_2, r6 in {0.62, 1} do
                local r25 = u859.new("Frame")
                r25.AnchorPoint = Vector2.new(0.5, 0)
                r25.BackgroundTransparency = 0.12
                r25.Position = u821.new(0.5, 0, r6, 0)
                r25.Size = u821.new(0, 241, 0, 1)
                r25.BorderSizePixel = 0
                r25.BackgroundColor3 = u877.Stroke
                r25.Parent = r16
            end

            local u916 = u859.new("Frame")
            u916.Name = "Options"
            u916.BackgroundTransparency = 1
            u916.Position = u821.new(0, 0, 1, 0)
            u916.Size = u821.new(1, 0, 0, 8)
            u916.BorderSizePixel = 0
            u916.Parent = u904
            local r4_13 = u859.new("UIPadding")
            r4_13.PaddingTop = u822.new(0, 8)
            r4_13.PaddingBottom = u822.new(0, 10)
            r4_13.Parent = u916
            local r4_14 = u859.new("UIListLayout")
            r4_14.Padding = u822.new(0, 6)
            r4_14.HorizontalAlignment = u824.HorizontalAlignment.Center
            r4_14.SortOrder = u824.SortOrder.LayoutOrder
            r4_14.Parent = u916

            r16.MouseEnter:Connect(function()
                if u901._state then
                    return
                end

                u832:Create(u906, TweenInfo.new(0.22, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                    Color = u861.Colors.StrokeHot,
                    Transparency = 0.1
                }):Play()

                u832:Create(u907, TweenInfo.new(0.22), {BackgroundTransparency = 0.2}):Play()
            end)

            r16.MouseLeave:Connect(function()
                if u901._state then
                    return
                end

                u832:Create(u906, TweenInfo.new(0.28, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Color = u861.Colors.Stroke, Transparency = 0.32}):Play()
                u832:Create(u907, TweenInfo.new(0.28), {BackgroundTransparency = 0.45}):Play()
            end)

            local function u917()
                if u901._state then
                    u904.Size = u821.new(1, -8, 0, 93 + u901._size + u901._multiplier + 16)
                end

                u916.Size = u821.new(1, -8, 0, u901._size + u901._multiplier)
            end

            function u901.change_state(r0, r1)
                r0._state = r1
                u904:SetAttribute("expanded", r0._state)

                if r0._state then
                    u832:Create(u904, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(1, -8, 0, 93 + r0._size + r0._multiplier + 16)
                    }):Play()

                    u832:Create(u909, TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u861.Colors.Accent,
                        BackgroundTransparency = 0.3
                    }):Play()

                    u832:Create(u910, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(0, 9, 0, 9),
                        Position = u821.new(1, -11, 0.5, 0),
                        BackgroundColor3 = u861.Colors.Background
                    }):Play()

                    local r16 = TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out)
                    u901._ab_tween = u832:Create(u907, r16, {BackgroundColor3 = u861.Colors.Accent, BackgroundTransparency = 0.08})
                    u901._ab_tween:Play()
                    u832:Create(u906, TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Color = u861.Colors.Accent, Transparency = 0.68}):Play()
                else
                    u832:Create(u904, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Size = u821.new(1, -8, 0, 93)}):Play()

                    u832:Create(u909, TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u820.fromRGB(8, 8, 14),
                        BackgroundTransparency = 0.6
                    }):Play()

                    u832:Create(u910, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(0, 9, 0, 9),
                        Position = u821.new(0, 2, 0.5, 0),
                        BackgroundColor3 = u861.Colors.SubText
                    }):Play()

                    local r16_2 = TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out)
                    u901._ab_tween = u832:Create(u907, r16_2, {BackgroundColor3 = u861.Colors.AccentDim, BackgroundTransparency = 0.45})
                    u901._ab_tween:Play()
                    u832:Create(u906, TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Color = u861.Colors.Stroke, Transparency = 0.32}):Play()
                end

                u864._config._flags[u903.flag] = r0._state
                u867:save(u796.GameId, u864._config)
                u903.callback(r0._state)

                if u913 then
                    u864.SendNotification({
                        title = u903.title or "Module",
                        text = r0._state and u862.ModuleEnabled or u862.ModuleDisabled,
                        icon = r0._state and "check" or "x",
                        iconColor = r0._state and u877.Accent or u877.Danger,
                        duration = 2.5
                    })
                end
            end

            function u901.connect_keybind(u918)
                if not u864._config._keybinds[u903.flag] then
                    return
                end

                u863[u903.flag .. "_keybind"] = u830.InputBegan:Connect(function(r0, r1)
                    if r1 then
                        return
                    end

                    if tostring(r0.KeyCode) ~= u864._config._keybinds[u903.flag] then
                        return
                    end

                    u918:change_state(not u918._state)
                end)
            end

            function u901.scale_keybind(r0, r1)
                if u864._config._keybinds[u903.flag] and not r1 then
                    local r7 = u864._config._keybinds[u903.flag]:gsub("Enum.KeyCode.", "")
                    local r1_2 = u859.new("GetTextBoundsParams")
                    r1_2.Text = r7
                    r1_2.Font = Font.new("rbxasset://fonts/families/Montserrat.json", u824.FontWeight.Bold)
                    r1_2.Size = 10
                    r1_2.Width = 10000
                    local r8 = u834:GetTextBoundsAsync(r1_2)
                    u911.Size = u821.fromOffset(r8.X + 6, 15)
                    u912.Size = u821.fromOffset(r8.X, 13)
                else
                    u911.Size = u821.fromOffset(31, 15)
                    u912.Size = u821.fromOffset(25, 13)
                end
            end

            if u864:flag_type(u903.flag, "boolean") then
                u901._state = true
                u904:SetAttribute("expanded", true)
                u909.BackgroundColor3 = u861.Colors.Accent
                u909.BackgroundTransparency = 0.3
                u910.BackgroundColor3 = u861.Colors.Background
                u910.Position = u821.new(1, -11, 0.5, 0)
                u907.BackgroundColor3 = u861.Colors.Accent
                u907.BackgroundTransparency = 0.08
                u906.Color = u861.Colors.Accent
                u906.Transparency = 0.68
                u903.callback(u901._state)
            end

            if u864._config._keybinds[u903.flag] then
                u912.Text = u864._config._keybinds[u903.flag]:gsub("Enum.KeyCode.", "")

                u901:connect_keybind()
                u901:scale_keybind()
            end

            u863[u903.flag .. "_input_began"] = r16.InputBegan:Connect(function(u919)
                if u864._choosing_keybind then
                    return
                end

                if u919.UserInputType ~= u824.UserInputType.MouseButton3 then
                    return
                end

                u864._choosing_keybind = true

                function u919(r0, r1)
                    if r1 then
                        return
                    end

                    if r0.KeyCode == u824.KeyCode.Unknown then
                        return
                    end

                    if r0.KeyCode == u824.KeyCode.Backspace then
                        u901:scale_keybind(true)
                        u864._config._keybinds[u903.flag] = nil
                        u867:save(u796.GameId, u864._config)
                        u912.Text = "None"
                        u863:disconnect(u903.flag .. "_keybind")
                        u863:disconnect("keybind_choose_start")
                        u864._choosing_keybind = false
                        return
                    end

                    u863:disconnect("keybind_choose_start")
                    u864._config._keybinds[u903.flag] = tostring(r0.KeyCode)
                    u867:save(u796.GameId, u864._config)
                    u863:disconnect(u903.flag .. "_keybind")
                    u901:connect_keybind()
                    u901:scale_keybind()
                    u864._choosing_keybind = false
                    u912.Text = u864._config._keybinds[u903.flag]:gsub("Enum.KeyCode.", "")
                end

                u863.keybind_choose_start = u830.InputBegan:Connect(u919)
            end)

            r16.MouseButton1Click:Connect(function()
                u901:change_state(not u901._state)
            end)

            function u901.create_slider(r0, u920)
                u900 = u900 + 1

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + 28
                u917()
                local u921 = u920.decimals or 0
                local u922 = 10 ^ u921

                local function u923(r0)
                    if u921 == 0 then
                        return tostring(math.floor(r0))
                    end

                    return string.format("%." .. u921 .. "f", r0)
                end

                local r11 = u859.new("TextButton")
                r11.Text = ""
                r11.AutoButtonColor = false
                r11.BackgroundTransparency = 1
                r11.Name = "Slider"
                r11.Size = u821.new(0, 207, 0, 22)
                r11.BorderSizePixel = 0
                r11.Parent = u916
                r11.LayoutOrder = u900
                local r2 = u859.new("TextLabel")
                r2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r2.TextSize = 11
                r2.TextColor3 = u877.Text
                r2.TextTransparency = 0.16
                r2.Text = u920.title
                r2.Size = u821.new(0, 153, 0, 13)
                r2.Position = u821.new(0, 0, 0.05, 0)
                r2.BackgroundTransparency = 1
                r2.TextXAlignment = u824.TextXAlignment.Left
                r2.Parent = r11
                local u924 = u859.new("Frame")
                u924.AnchorPoint = Vector2.new(0.5, 1)
                u924.BackgroundTransparency = 0.78
                u924.Position = u821.new(0.5, 0, 0.95, 0)
                u924.Name = "Drag"
                u924.Size = u821.new(0, 207, 0, 4)
                u924.BorderSizePixel = 0
                u924.BackgroundColor3 = u877.Stroke
                u924.Parent = r11
                local r2_2 = u859.new("UICorner")
                r2_2.CornerRadius = u822.new(0, 12)
                r2_2.Parent = u924
                local u925 = u859.new("Frame")
                u925.AnchorPoint = Vector2.new(0, 0.5)
                u925.BackgroundTransparency = 0.05
                u925.Position = u821.new(0, 0, 0.5, 0)
                u925.Name = "Fill"
                u925.Size = u821.new(0, 103, 0, 4)
                u925.BorderSizePixel = 0
                u925.BackgroundColor3 = u877.Accent
                u925.Parent = u924
                local r2_3 = u859.new("UICorner")
                r2_3.CornerRadius = u822.new(0, 3)
                r2_3.Parent = u925
                local r2_4 = u859.new("UIGradient")
                r2_4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, u877.AccentSoft), ColorSequenceKeypoint.new(1, u877.AccentDim)})
                r2_4.Parent = u925
                local r2_5 = u859.new("Frame")
                r2_5.AnchorPoint = Vector2.new(1, 0.5)
                r2_5.Name = "Circle"
                r2_5.Position = u821.new(1, 0, 0.5, 0)
                r2_5.Size = u821.new(0, 7, 0, 7)
                r2_5.BorderSizePixel = 0
                r2_5.BackgroundColor3 = u877.AccentSoft
                r2_5.Parent = u925
                local r3 = u859.new("UICorner")
                r3.CornerRadius = u822.new(0, 12)
                r3.Parent = r2_5
                local u926 = u859.new("TextLabel")
                u926.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                u926.TextColor3 = u820.fromRGB(235, 235, 245)
                u926.TextTransparency = 0.2
                u926.Text = "0"
                u926.Name = "Value"
                u926.Size = u821.new(0, 42, 0, 13)
                u926.AnchorPoint = Vector2.new(1, 0)
                u926.Position = u821.new(1, 0, 0, 0)
                u926.BackgroundTransparency = 1
                u926.TextXAlignment = u824.TextXAlignment.Right
                u926.TextSize = 10
                u926.Parent = r11

                local u927 = {
                    set_percentage = function(r0, r1)
                        local r4 = math.floor(math.clamp(r1, u920.minimum_value, u920.maximum_value) * u922 + 0.5) / u922
                        local r3 = math.clamp((r4 - u920.minimum_value) / (u920.maximum_value - u920.minimum_value), 0.02, 1) * u924.Size.X.Offset
                        u864._config._flags[u920.flag] = r4
                        u926.Text = u923(r4)
                        u832:Create(u925, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Size = u821.fromOffset(r3, u924.Size.Y.Offset)}):Play()
                        u920.callback(r4)
                    end,
                    update = function(r0)
                        r0:set_percentage(u920.minimum_value + (u920.maximum_value - u920.minimum_value) * math.clamp((u860.X - u924.AbsolutePosition.X) / u924.Size.X.Offset, 0, 1))
                    end,
                    input = function(u928)
                        u928:update()

                        u863["slider_drag_" .. u920.flag] = u860.Move:Connect(function()
                            u928:update()
                        end)

                        u863["slider_input_" .. u920.flag] = u830.InputEnded:Connect(function(r0)
                            if r0.UserInputType ~= u824.UserInputType.MouseButton1 and r0.UserInputType ~= u824.UserInputType.Touch then
                                return
                            end

                            u863:disconnect("slider_drag_" .. u920.flag)
                            u863:disconnect("slider_input_" .. u920.flag)

                            if not u920.ignoresaved then
                                u867:save(u796.GameId, u864._config)
                            end
                        end)
                    end
                }

                if u864:flag_type(u920.flag, "number") and not u920.ignoresaved then
                    u927:set_percentage(u864._config._flags[u920.flag])
                else
                    u927:set_percentage(u920.value)
                end

                r11.MouseButton1Down:Connect(function()
                    u927:input()
                end)

                return u927
            end

            function u901.create_doubleslider(u929, u930)
                u900 = u900 + 1

                if u929._size == 0 then
                    u929._size = 11
                end

                u929._size = u929._size + 28
                u917()
                local u931 = u930.decimals or 0
                local u932 = 10 ^ u931

                local function u933(r0)
                    if u931 == 0 then
                        return tostring(math.floor(r0))
                    end

                    return string.format("%." .. u931 .. "f", r0)
                end

                local u934 = u930.minimum_value
                local u935 = u930.maximum_value
                local r3, r5

                if u930.value and type(u930.value) == "table" then
                    r3 = u930.value[1] or u930.value.L or u934
                    r5 = u930.value[2] or u930.value.H or u935
                else
                    r3 = u930.value_low or u934
                    r5 = u930.value_high or u935
                end

                local r18, r4

                if u864._config._flags[u930.flag] and type(u864._config._flags[u930.flag]) == "table" then
                    local r6 = u864._config._flags[u930.flag]

                    if r6.L ~= nil and r6.H ~= nil then
                        r18 = r6.L
                        r4 = r6.H
                    elseif r6[1] ~= nil and r6[2] ~= nil then
                        r18 = r6[1]
                        r4 = r6[2]
                    else
                        r18 = r3
                        r4 = r5
                    end
                else
                    r18 = r3
                    r4 = r5
                end

                local r3_2 = math.clamp(r18, u934, u935)
                local r17 = math.clamp(r4, u934, u935)
                local r23, r24

                if r17 < r3_2 then
                    r23 = r17
                    r24 = r3_2
                else
                    r23 = r3_2
                    r24 = r17
                end

                local r11 = u859.new("TextButton")
                r11.Text = ""
                r11.AutoButtonColor = false
                r11.BackgroundTransparency = 1
                r11.Name = "DoubleSlider"
                r11.Size = u821.new(0, 207, 0, 22)
                r11.BorderSizePixel = 0
                r11.Parent = u916
                r11.LayoutOrder = u900
                local r12 = u859.new("TextLabel")
                r12.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r12.TextSize = 11
                r12.TextColor3 = u877.Text
                r12.TextTransparency = 0.16
                r12.Text = u930.title
                r12.Size = u821.new(0, 120, 0, 13)
                r12.Position = u821.new(0, 0, 0.05, 0)
                r12.BackgroundTransparency = 1
                r12.TextXAlignment = u824.TextXAlignment.Left
                r12.Parent = r11
                local u936 = u859.new("Frame")
                u936.Active = true
                u936.AnchorPoint = Vector2.new(0.5, 1)
                u936.BackgroundTransparency = 0.78
                u936.Position = u821.new(0.5, 0, 0.95, 0)
                u936.Name = "Drag"
                u936.Size = u821.new(0, 207, 0, 4)
                u936.BorderSizePixel = 0
                u936.BackgroundColor3 = u877.Stroke
                u936.Parent = r11
                local r6_2 = u859.new("UICorner")
                r6_2.CornerRadius = u822.new(0, 12)
                r6_2.Parent = u936
                local u937 = u859.new("Frame")
                u937.AnchorPoint = Vector2.new(0, 0.5)
                u937.BackgroundTransparency = 0.05
                u937.Name = "RangeFill"
                u937.BorderSizePixel = 0
                u937.BackgroundColor3 = u877.Accent
                u937.Parent = u936
                local r6_3 = u859.new("UICorner")
                r6_3.CornerRadius = u822.new(0, 3)
                r6_3.Parent = u937
                local r14 = u859.new("UIGradient")
                r14.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, u877.AccentSoft), ColorSequenceKeypoint.new(1, u877.AccentDim)})
                r14.Parent = u937
                local u938 = u859.new("Frame")
                u938.Active = true
                u938.AnchorPoint = Vector2.new(0.5, 0.5)
                u938.Name = "KnobL"
                u938.Size = u821.new(0, 7, 0, 7)
                u938.BorderSizePixel = 0
                u938.BackgroundColor3 = u877.AccentSoft
                u938.ZIndex = 2
                u938.Parent = u936
                local r6_4 = u859.new("UICorner")
                r6_4.CornerRadius = u822.new(0, 12)
                r6_4.Parent = u938
                local u939 = u859.new("Frame")
                u939.Active = true
                u939.AnchorPoint = Vector2.new(0.5, 0.5)
                u939.Name = "KnobR"
                u939.Size = u821.new(0, 7, 0, 7)
                u939.BorderSizePixel = 0
                u939.BackgroundColor3 = u877.AccentSoft
                u939.ZIndex = 2
                u939.Parent = u936
                local r6_5 = u859.new("UICorner")
                r6_5.CornerRadius = u822.new(0, 12)
                r6_5.Parent = u939
                local u940 = u859.new("TextLabel")
                u940.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                u940.TextColor3 = u877.Text
                u940.TextTransparency = 0.2
                u940.Text = "0 - 0"
                u940.Name = "Value"
                u940.Size = u821.new(0, 80, 0, 13)
                u940.AnchorPoint = Vector2.new(1, 0)
                u940.Position = u821.new(1, 0, 0, 0)
                u940.BackgroundTransparency = 1
                u940.TextXAlignment = u824.TextXAlignment.Right
                u940.TextSize = 9
                u940.Parent = r11
                local u941
                local u942 = {}

                local function u943(r0)
                    return (r0 - u934) / (u935 - u934)
                end

                function u942.set_range(r0, r1, r2, r3)
                    local r7 = math.floor(math.clamp(r1, u934, u935) * u932 + 0.5) / u932
                    local r6 = math.floor(math.clamp(r2, u934, u935) * u932 + 0.5) / u932

                    if not (r6 < r7) then
                        local r18 = r6
                        r6 = r7
                        r7 = r18
                    end

                    local r4 = u931 == 0 and 1 or math.max((u935 - u934) * (0.5 / math.max(u932, 1)), 1 / u932)
                    local r8 = u941

                    if u941 and r7 - r6 < r4 then
                        if u941 == "low" then
                            r6 = math.clamp(r7 - r4, u934, u935)
                        else
                            r7 = math.clamp(r6 + r4, u934, u935)
                        end
                    end

                    u864._config._flags[u930.flag] = {L = r6, H = r7}
                    u940.Text = u933(r6) .. " - " .. u933(r7)
                    local r12 = u943(r6)
                    local r4_2 = u943(r7)
                    u937.Position = u821.new(r12, 0, 0.5, 0)
                    u937.Size = u821.new(math.max(r4_2 - r12, 0.02), 0, 1, 0)
                    u938.Position = u821.new(r12, 0, 0.5, 0)
                    u939.Position = u821.new(r4_2, 0, 0.5, 0)
                    u930.callback(r6, r7)

                    if not r3 and not u930.ignoresaved then
                        u867:save(u796.GameId, u864._config)
                    end
                end

                function u942.pick_which(r0, r1)
                    local r2 = u934 + (u935 - u934) * math.clamp((r1 - u936.AbsolutePosition.X) / u936.AbsoluteSize.X, 0, 1)
                    local r4 = u864._config._flags[u930.flag].H

                    if math.abs(r2 - u864._config._flags[u930.flag].L) <= math.abs(r2 - r4) then
                        return "low"
                    end

                    return "high"
                end

                function u942.update_from_mouse(r0)
                    local r1 = u864._config._flags[u930.flag]

                    if not r1 or not u941 then
                        return
                    end

                    local r2 = u934 + (u935 - u934) * math.clamp((u860.X - u936.AbsolutePosition.X) / u936.AbsoluteSize.X, 0, 1)
                    local r3 = r1.L
                    local r11 = r1.H

                    if u941 == "low" then
                        u942:set_range(math.min(r2, r11), r11, true)
                    elseif u941 == "high" then
                        local r9 = math.max(r2, r3)
                        u942:set_range(r3, r9, true)
                    end
                end

                u864._config._flags[u930.flag] = {L = r23, H = r24}
                u942:set_range(r23, r24, true)

                local function u944(r0)
                    u863:disconnect("dsl_drag_" .. u930.flag)
                    u863:disconnect("dsl_end_" .. u930.flag)
                    u941 = r0
                    u942:update_from_mouse()

                    local function r0_2()
                        u942:update_from_mouse()
                    end

                    u863["dsl_drag_" .. u930.flag] = u860.Move:Connect(r0_2)

                    local function r0_3(r0)
                        if r0.UserInputType ~= u824.UserInputType.MouseButton1 and r0.UserInputType ~= u824.UserInputType.Touch then
                            return
                        end

                        u863:disconnect("dsl_drag_" .. u930.flag)
                        u863:disconnect("dsl_end_" .. u930.flag)
                        u941 = nil

                        if not u930.ignoresaved then
                            u867:save(u796.GameId, u864._config)
                        end
                    end

                    u863["dsl_end_" .. u930.flag] = u830.InputEnded:Connect(r0_3)
                end

                u938.InputBegan:Connect(function(r0)
                    if r0.UserInputType == u824.UserInputType.MouseButton1 or r0.UserInputType == u824.UserInputType.Touch then
                        u944("low")
                    end
                end)

                u939.InputBegan:Connect(function(r0)
                    if r0.UserInputType == u824.UserInputType.MouseButton1 or r0.UserInputType == u824.UserInputType.Touch then
                        u944("high")
                    end
                end)

                u936.InputBegan:Connect(function(r0)
                    if r0.UserInputType ~= u824.UserInputType.MouseButton1 and r0.UserInputType ~= u824.UserInputType.Touch then
                        return
                    end

                    u944(u942:pick_which(r0.Position.X))
                end)

                return u942
            end

            function u901.create_dropdown(r0, u945)
                if not u945.Order then
                    u900 = u900 + 1
                end

                local u946 = {_state = false, _size = 0}
                local u947 = false
                local u948 = false
                local u949 = u945.search and 26 or 0

                if not u945.Order then
                    if r0._size == 0 then
                        r0._size = 11
                    end

                    r0._size = r0._size + 45
                    u917()
                end

                if not u864._config._flags[u945.flag] then
                    u864._config._flags[u945.flag] = {}
                end

                local u950 = {}
                local u951 = u859.new("TextButton")
                u951.Text = ""
                u951.AutoButtonColor = false
                u951.BackgroundTransparency = 1
                u951.Name = "Dropdown"
                u951.Size = u821.new(0, 207, 0, 39)
                u951.BorderSizePixel = 0
                u951.Parent = u916
                u951.LayoutOrder = u945.Order and u945.OrderValue or u900
                local r3 = u859.new("TextLabel")
                r3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r3.TextSize = 11
                r3.TextColor3 = u877.Text
                r3.TextTransparency = 0.16
                r3.Text = u945.title
                r3.Size = u821.new(0, 207, 0, 13)
                r3.BackgroundTransparency = 1
                r3.TextXAlignment = u824.TextXAlignment.Left
                r3.Parent = u951

                if u945.notify then
                    local u952 = u945.flag .. "_dd_notify"

                    if not u864._config._library then
                        u864._config._library = {}
                    end

                    u947 = u864._config._library[u952] == true
                    local u953 = u859.new("ImageButton")
                    u953.Name = "DDBell"
                    u953.Size = u821.new(0, 14, 0, 14)
                    u953.AnchorPoint = Vector2.new(1, 0.5)
                    u953.Position = u821.new(1, 0, 0.5, 0)
                    u953.BackgroundTransparency = 1
                    u953.Image = u866("bell")
                    u953.ImageColor3 = u947 and u877.Accent or u877.SubText
                    u953.ImageTransparency = u947 and 0.05 or 0.48
                    u953.BorderSizePixel = 0
                    u953.ZIndex = 6
                    u953.Parent = r3

                    u953.MouseButton1Click:Connect(function()
                        u947 = not u947
                        u864._config._library[u952] = u947
                        u867:save(u796.GameId, u864._config)

                        u832:Create(u953, TweenInfo.new(0.3, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                            ImageColor3 = u947 and u877.Accent or u877.SubText,
                            ImageTransparency = u947 and 0.05 or 0.48
                        }):Play()
                    end)
                end

                local u954 = u859.new("Frame")
                u954.ClipsDescendants = true
                u954.AnchorPoint = Vector2.new(0.5, 0)
                u954.BackgroundTransparency = 0.9
                u954.Position = u821.new(0.5, 0, 1.2, 0)
                u954.Name = "Box"
                u954.Size = u821.new(0, 207, 0, 22)
                u954.BorderSizePixel = 0
                u954.BackgroundColor3 = u877.Accent
                u954.Parent = r3
                local r3_2 = u859.new("UICorner")
                r3_2.CornerRadius = u822.new(0, 6)
                r3_2.Parent = u954
                local r3_3 = u859.new("UIStroke")
                r3_3.Color = u877.StrokeHot
                r3_3.Transparency = 0.42
                r3_3.Parent = u954
                local r3_4 = u859.new("UIListLayout")
                r3_4.SortOrder = u824.SortOrder.LayoutOrder
                r3_4.Parent = u954
                local r3_5 = u859.new("Frame")
                r3_5.AnchorPoint = Vector2.new(0.5, 0)
                r3_5.BackgroundTransparency = 1
                r3_5.Position = u821.new(0.5, 0, 0, 0)
                r3_5.Size = u821.new(0, 207, 0, 22)
                r3_5.BorderSizePixel = 0
                r3_5.LayoutOrder = 1
                r3_5.Parent = u954
                local u955 = u859.new("TextLabel")
                u955.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                u955.TextColor3 = u877.Text
                u955.TextTransparency = 0.1
                u955.Name = "CurrentOption"
                u955.Size = u821.new(0, 161, 0, 13)
                u955.AnchorPoint = Vector2.new(0, 0.5)
                u955.Position = u821.new(0.05, 0, 0.5, 0)
                u955.BackgroundTransparency = 1
                u955.TextXAlignment = u824.TextXAlignment.Left
                u955.TextSize = 10
                u955.Parent = r3_5
                local r4 = u859.new("UIGradient")

                r4.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(0.704, 0),
                    NumberSequenceKeypoint.new(0.872, 0.36),
                    NumberSequenceKeypoint.new(1, 1)
                })

                r4.Parent = u955
                local u956 = u859.new("TextLabel")
                u956.Text = "⇅"
                u956.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                u956.TextSize = 10
                u956.TextColor3 = u877.Accent
                u956.BackgroundTransparency = 1
                u956.Size = u821.new(0, 10, 0, 10)
                u956.Position = u821.new(0.91, 0, 0.5, 0)
                u956.AnchorPoint = Vector2.new(0, 0.5)
                u956.Parent = r3_5
                local u957

                if u945.search then
                    local r3_6 = u859.new("Frame")
                    r3_6.Size = u821.new(0, 207, 0, u949)
                    r3_6.BackgroundColor3 = u877.CardDeep
                    r3_6.BackgroundTransparency = 0.25
                    r3_6.BorderSizePixel = 0
                    r3_6.LayoutOrder = 2
                    r3_6.Parent = u954
                    local r4_2 = u859.new("Frame")
                    r4_2.Size = u821.new(1, 0, 0, 1)
                    r4_2.Position = u821.new(0, 0, 0, 0)
                    r4_2.BackgroundColor3 = u877.StrokeHot
                    r4_2.BackgroundTransparency = 0.5
                    r4_2.BorderSizePixel = 0
                    r4_2.Parent = r3_6
                    local r4_3 = u859.new("ImageLabel")
                    r4_3.Size = u821.new(0, 10, 0, 10)
                    r4_3.Position = u821.new(0, 7, 0.5, 0)
                    r4_3.AnchorPoint = Vector2.new(0, 0.5)
                    r4_3.BackgroundTransparency = 1
                    r4_3.Image = u866("search")
                    r4_3.ImageColor3 = u877.SubText
                    r4_3.ImageTransparency = 0.25
                    r4_3.Parent = r3_6
                    u957 = u859.new("TextBox")
                    u957.Size = u821.new(1, -24, 1, -2)
                    u957.Position = u821.new(0, 21, 0, 1)
                    u957.BackgroundTransparency = 1
                    u957.TextColor3 = u877.Text
                    u957.PlaceholderColor3 = u877.SubText
                    u957.PlaceholderText = "Search..."
                    u957.Text = ""
                    u957.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
                    u957.TextSize = 10
                    u957.TextXAlignment = u824.TextXAlignment.Left
                    u957.ClearTextOnFocus = false
                    u957.AutomaticSize = u824.AutomaticSize.None
                    u957.Parent = r3_6
                end

                local u958 = u859.new("ScrollingFrame")
                u958.Active = true
                u958.ScrollBarImageTransparency = 0.35
                u958.ScrollBarImageColor3 = u877.SubText
                u958.AutomaticCanvasSize = u824.AutomaticSize.XY
                u958.ScrollBarThickness = 3
                u958.Name = "Options"
                u958.Size = u821.new(0, 207, 0, 0)
                u958.BackgroundTransparency = 1
                u958.Position = u821.new(0, 0, 1, 0)
                u958.BorderSizePixel = 0
                u958.CanvasSize = u821.new(0, 0, 0, 0)
                u958.LayoutOrder = u945.search and 3 or 2
                u958.Parent = u954
                local r3_7 = u859.new("UIListLayout")
                r3_7.SortOrder = u824.SortOrder.LayoutOrder
                r3_7.Parent = u958
                local r3_8 = u859.new("UIPadding")
                r3_8.PaddingTop = u822.new(0, -1)
                r3_8.PaddingLeft = u822.new(0, 8)
                r3_8.Parent = u958

                if u957 then
                    u957:GetPropertyChangedSignal("Text"):Connect(function()
                        local r11 = u957.Text:lower()

                        for r2, r3 in u958:GetChildren() do
                            if (r3.Name == "Option" or r3.Name == "DDSlider") and r3.Name == "Option" then
                                local r4 = r3:IsA("TextButton") and r3 or r3:FindFirstChild("OptionBtn")

                                if r4 then
                                    local r6 = r11 == ""

                                    if r11 ~= "" then
                                        r6 = r4.Text:lower():find(r11, 1, true) ~= nil
                                    end

                                    r3.Visible = r6
                                end
                            end
                        end
                    end)
                end

                local function u959(r0)
                    if r0:IsA("TextButton") then
                        return r0
                    end

                    return r0:FindFirstChild("OptionBtn")
                end

                local function u960()
                    if u945.multi_dropdown then
                        if #u950 == 0 then
                            u955.Text = "None"
                        else
                            u955.Text = table.concat(u950, ", ")
                        end

                        for r1, r2 in u958:GetChildren() do
                            if r2.Name == "Option" then
                                local r7 = u959(r2)

                                if r7 then
                                    local r3 = table.find(u950, r7.Text)
                                    r7.TextTransparency = r3 and 0.1 or 0.6

                                    if r3 then
                                        r3 = u877.AccentSoft
                                    end

                                    if not r3 then
                                        r3 = u877.Text
                                    end

                                    r7.TextColor3 = r3
                                end
                            end
                        end

                        u864._config._flags[u945.flag] = {unpack(u950)}
                    else
                        for r4, r5 in u958:GetChildren() do
                            if r5.Name == "Option" then
                                local r0 = u959(r5)

                                if r0 then
                                    local r1_2 = r0.Text == u955.Text
                                    r0.TextTransparency = r1_2 and 0.1 or 0.6

                                    if r1_2 then
                                        r1_2 = u877.AccentSoft
                                    end

                                    r0.TextColor3 = r1_2 or u877.Text
                                end
                            end
                        end
                    end
                end

                function u946.update(r0, r1)
                    if u945.multi_dropdown then
                        local r11 = typeof(r1) ~= "string" and r1.Name or r1
                        local r9 = table.find(u950, r11)

                        if r9 then
                            table.remove(u950, r9)
                        else
                            table.insert(u950, r11)
                        end

                        u960()
                        u867:save(u796.GameId, u864._config)
                        u945.callback({unpack(u950)})

                        if u947 and u948 then
                            local r9_2 = 0 < #u950 and table.concat(u950, ", ") or "None"

                            u864.SendNotification({
                                title = u945.title or "Dropdown",
                                text = r9_2,
                                icon = "check",
                                iconColor = u877.Accent,
                                duration = 2.5
                            })
                        end
                    else
                        u955.Text = typeof(r1) == "string" and r1 or r1.Name
                        u960()
                        u864._config._flags[u945.flag] = r1
                        u867:save(u796.GameId, u864._config)
                        u945.callback(r1)

                        if u947 and u948 then
                            local r2 = typeof(r1) == "string" and r1 or r1.Name

                            u864.SendNotification({
                                title = u945.title or "Dropdown",
                                text = r2,
                                icon = "check",
                                iconColor = u877.Accent,
                                duration = 2.5
                            })
                        end
                    end
                end

                local u961 = 0

                function u946.unfold_settings(r0)
                    r0._state = not r0._state
                    local r7 = r0._size + u949

                    if r0._state then
                        local r1 = u901
                        r1._multiplier = r1._multiplier + r7
                        u961 = r7
                    else
                        local r1_2 = u901
                        r1_2._multiplier = r1_2._multiplier - r7
                        u961 = 0

                        if u957 then
                            u957:ReleaseFocus()
                            u957.Text = ""
                        end
                    end

                    u832:Create(u904, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(1, -8, 0, 93 + u901._size + u901._multiplier + 16)
                    }):Play()

                    u832:Create(u904.Options, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(1, -8, 0, u901._size + u901._multiplier)
                    }):Play()

                    u832:Create(u951, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.fromOffset(207, r0._state and 39 + r7 or 39)
                    }):Play()

                    u832:Create(u954, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.fromOffset(207, r0._state and 22 + r7 or 22)
                    }):Play()

                    u832:Create(u956, TweenInfo.new(0.5, u824.EasingStyle.Quint, u824.EasingDirection.Out), {Rotation = r0._state and 180 or 0}):Play()
                end

                local function u962(u963, r1)
                    local r5 = typeof(u963) == "string" and u963 or u963.Name
                    local u964 = u945.flag .. "_" .. r5

                    if u945.keybind then
                        local r8 = u859.new("Frame")
                        r8.Size = u821.new(0, 186, 0, 16)
                        r8.BackgroundTransparency = 1
                        r8.Name = "Option"
                        r8.BorderSizePixel = 0
                        r8.Parent = u958
                        local r9 = u859.new("TextButton")
                        r9.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                        r9.Active = false
                        r9.TextTransparency = 0.6
                        r9.TextSize = 10
                        r9.Size = u821.new(1, -44, 1, 0)
                        r9.Position = u821.new(0, 0, 0, 0)
                        r9.TextColor3 = u877.Text
                        r9.Text = r5
                        r9.AutoButtonColor = false
                        r9.Name = "OptionBtn"
                        r9.BackgroundTransparency = 1
                        r9.TextXAlignment = u824.TextXAlignment.Left
                        r9.Selectable = false
                        r9.BorderSizePixel = 0
                        r9.Parent = r8

                        local r3 = u859.new("UIGradient")

                        r3.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(0.704, 0),
                            NumberSequenceKeypoint.new(0.872, 0.36),
                            NumberSequenceKeypoint.new(1, 1)
                        })

                        r3.Parent = r9

                        local r4 = u864._config._keybinds[u964]
                        local r12 = r4 and r4:gsub("Enum.KeyCode.", "") or "..."
                        local u965 = u859.new("TextButton")
                        u965.AnchorPoint = Vector2.new(1, 0.5)
                        u965.Position = u821.new(1, 0, 0.5, 0)
                        u965.BackgroundColor3 = u877.Accent
                        u965.BackgroundTransparency = 0.6
                        u965.TextColor3 = u877.AccentSoft
                        u965.TextSize = 9
                        u965.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                        u965.Text = r12
                        u965.BorderSizePixel = 0
                        u965.AutoButtonColor = false
                        u965.Parent = r8
                        local r3_2 = u859.new("UICorner")
                        r3_2.CornerRadius = u822.new(0, 3)
                        r3_2.Parent = u965

                        local function u966(r0)
                            if r0 == "..." or r0 == "?" then
                                u965.Size = u821.fromOffset(22, 14)
                                return
                            end

                            local r5 = u859.new("GetTextBoundsParams")
                            r5.Text = r0
                            r5.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                            r5.Size = 9
                            r5.Width = 10000
                            local r4 = u834:GetTextBoundsAsync(r5)
                            u965.Size = u821.fromOffset(math.max(22, r4.X + 8), 14)
                        end

                        u966(r12)

                        if r4 then
                            u863["dd_kb_" .. u964] = u830.InputBegan:Connect(function(r0, r1)
                                if r1 then
                                    return
                                end

                                if tostring(r0.KeyCode) ~= u864._config._keybinds[u964] then
                                    return
                                end

                                u946:update(u963)
                            end)
                        end

                        u965.InputBegan:Connect(function(u967)
                            if u967.UserInputType ~= u824.UserInputType.MouseButton3 then
                                return
                            end

                            if u864._choosing_keybind then
                                return
                            end

                            u864._choosing_keybind = true
                            u965.Text = "?"
                            u966("?")
                            local u968

                            function u967(r0, r1)
                                if r1 then
                                    return
                                end

                                if r0.UserInputType ~= u824.UserInputType.Keyboard then
                                    return
                                end

                                if r0.KeyCode == u824.KeyCode.Unknown then
                                    return
                                end

                                u968:Disconnect()

                                if r0.KeyCode == u824.KeyCode.Backspace then
                                    u864._config._keybinds[u964] = nil
                                    u867:save(u796.GameId, u864._config)
                                    u965.Text = "..."
                                    u966("...")
                                    u863:disconnect("dd_kb_" .. u964)
                                else
                                    u864._config._keybinds[u964] = tostring(r0.KeyCode)
                                    u867:save(u796.GameId, u864._config)
                                    u965.Text = r0.KeyCode.Name
                                    u966(r0.KeyCode.Name)
                                    u863:disconnect("dd_kb_" .. u964)
                                    local u969 = "dd_kb_" .. u964

                                    u863[u969] = u830.InputBegan:Connect(function(r0, r1)
                                        if r1 then
                                            return
                                        end

                                        if tostring(r0.KeyCode) ~= u864._config._keybinds[u964] then
                                            return
                                        end

                                        u946:update(u963)
                                    end)
                                end

                                u864._choosing_keybind = false
                            end

                            u968 = u830.InputBegan:Connect(u967)
                        end)

                        r9.MouseButton1Click:Connect(function()
                            u946:update(u963)
                        end)

                        if r1 <= u945.maximum_options then
                            local r3_3 = u946
                            r3_3._size = r3_3._size + 16
                            u958.Size = u821.fromOffset(207, u946._size)
                        end
                    else
                        local r3_4 = u859.new("TextButton")
                        r3_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                        r3_4.Active = false
                        r3_4.TextTransparency = 0.6
                        r3_4.TextSize = 10
                        r3_4.Size = u821.new(0, 186, 0, 16)
                        r3_4.TextColor3 = u877.Text
                        r3_4.Text = r5
                        r3_4.AutoButtonColor = false
                        r3_4.Name = "Option"
                        r3_4.BackgroundTransparency = 1
                        r3_4.TextXAlignment = u824.TextXAlignment.Left
                        r3_4.Selectable = false
                        r3_4.BorderSizePixel = 0
                        r3_4.Parent = u958
                        local r4_2 = u859.new("UIGradient")

                        r4_2.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(0.704, 0),
                            NumberSequenceKeypoint.new(0.872, 0.36),
                            NumberSequenceKeypoint.new(1, 1)
                        })

                        r4_2.Parent = r3_4

                        r3_4.MouseButton1Click:Connect(function()
                            u946:update(u963)
                        end)

                        if r1 <= u945.maximum_options then
                            local r3_5 = u946
                            r3_5._size = r3_5._size + 16
                            u958.Size = u821.fromOffset(207, u946._size)
                        end
                    end
                end

                if #u945.options > 0 then
                    u946._size = 3

                    for r10, r11 in u945.options do
                        u962(r11, r10)
                    end
                end

                function u946.set_options(r0, r1)
                    if r0._state then
                        local r2 = r0._size + u949
                        r0._state = false
                        local r3 = u901
                        r3._multiplier = r3._multiplier - r2
                        u961 = 0
                        u951.Size = u821.fromOffset(207, 39)
                        u954.Size = u821.fromOffset(207, 22)
                        u956.Rotation = 0

                        if u957 then
                            u957:ReleaseFocus()
                            u957.Text = ""
                        end
                    end

                    for r3_2, r4 in u958:GetChildren() do
                        if r4.Name == "Option" then
                            r4:Destroy()
                        end
                    end

                    local r2_2 = u955.Text
                    local r3_3 = {}

                    if u945.multi_dropdown then
                        for r6, r7 in ipairs(u950) do
                            r3_3[r7] = true
                        end
                    end

                    u950 = {}
                    r0._size = #r1 > 0 and 3 or 0
                    u945.options = r1
                    u945.maximum_options = #r1

                    for r9, r10 in ipairs(r1) do
                        u962(r10, r9)
                    end

                    if u945.multi_dropdown then
                        local r4_2 = {}

                        for r12, r13 in ipairs(r1) do
                            local r5 = typeof(r13) == "string" and r13 or r13.Name

                            if r3_3[r5] then
                                table.insert(r4_2, r5)
                            end
                        end

                        u950 = r4_2

                        if #u950 == 0 then
                            u955.Text = "None"
                            u864._config._flags[u945.flag] = {}
                        else
                            u955.Text = table.concat(u950, ", ")
                            u864._config._flags[u945.flag] = {unpack(u950)}
                        end

                        u960()
                    else
                        local r3_4 = false

                        for r15, r16 in ipairs(r1) do
                            local r5_2 = typeof(r16) == "string" and r16 or r16.Name

                            if r5_2 == r2_2 then
                                u955.Text = r5_2
                                u864._config._flags[u945.flag] = r16
                                r3_4 = true
                                break
                            end
                        end

                        if not r3_4 then
                            if r1[1] then
                                u955.Text = typeof(r1[1]) == "string" and r1[1] or r1[1].Name
                                u864._config._flags[u945.flag] = r1[1]
                            else
                                u955.Text = "None"
                                u864._config._flags[u945.flag] = "None"
                            end
                        end

                        u960()
                    end

                    u867:save(u796.GameId, u864._config)
                    u958.Size = u821.fromOffset(207, r0._size)

                    if u901._state then
                        u832:Create(u904, TweenInfo.new(0.4, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                            Size = u821.new(1, -8, 0, 93 + u901._size + u901._multiplier + 16)
                        }):Play()

                        u832:Create(u904.Options, TweenInfo.new(0.4, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                            Size = u821.new(1, -8, 0, u901._size + u901._multiplier)
                        }):Play()
                    end
                end

                function u946.New(r0, r1)
                    u951:Destroy()
                    r1.OrderValue = u951.LayoutOrder
                    local r0_2 = u901
                    r0_2._multiplier = r0_2._multiplier - u961
                    return u901:create_dropdown(r1)
                end

                if u945.multi_dropdown then
                    local r4_4 = u864._config._flags[u945.flag]

                    if typeof(r4_4) == "table" and #r4_4 > 0 then
                        for r4_5, r5 in ipairs(r4_4) do
                            local r16 = typeof(r5) ~= "string" and r5.Name or r5

                            if not table.find(u950, r16) then
                                table.insert(u950, r16)
                            end
                        end

                        u960()
                        u945.callback({unpack(u950)})
                    else
                        u955.Text = "None"
                    end
                elseif u864:flag_type(u945.flag, "string") then
                    u946:update(u864._config._flags[u945.flag])
                elseif u945.options[1] then
                    u955.Text = typeof(u945.options[1]) == "string" and u945.options[1] or u945.options[1].Name
                    u960()
                    u864._config._flags[u945.flag] = u945.options[1]
                    u867:save(u796.GameId, u864._config)
                    u945.callback(u945.options[1])
                end

                u948 = true

                u951.MouseButton1Click:Connect(function()
                    u946:unfold_settings()
                end)

                return u946
            end

            function u901.create_checkbox(u971, u972)
                u900 = u900 + 1
                local u970 = {_state = false}

                if u971._size == 0 then
                    u971._size = 11
                end

                u971._size = u971._size + 21
                u917()
                local r6 = u859.new("TextButton")
                r6.Text = ""
                r6.AutoButtonColor = false
                r6.BackgroundTransparency = 1
                r6.Name = "Checkbox"
                r6.Size = u821.new(0, 207, 0, 15)
                r6.BorderSizePixel = 0
                r6.Parent = u916
                r6.LayoutOrder = u900
                local r3 = u859.new("TextLabel")
                r3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r3.TextSize = 11
                r3.TextColor3 = u877.Text
                r3.TextTransparency = 0.16
                r3.Text = u972.title or ""
                r3.Size = u821.new(0, 142, 0, 13)
                r3.AnchorPoint = Vector2.new(0, 0.5)
                r3.Position = u821.new(0, 0, 0.5, 0)
                r3.BackgroundTransparency = 1
                r3.TextXAlignment = u824.TextXAlignment.Left
                r3.Parent = r6
                local u973 = u859.new("Frame")
                u973.Size = u821.fromOffset(14, 14)
                u973.Position = u821.new(1, -20, 0.5, 0)
                u973.AnchorPoint = Vector2.new(1, 0.5)
                u973.BackgroundColor3 = u877.Accent
                u973.BackgroundTransparency = 0.6
                u973.BorderSizePixel = 0
                u973.Parent = r6
                local r3_2 = u859.new("UICorner")
                r3_2.CornerRadius = u822.new(0, 4)
                r3_2.Parent = u973
                local u974 = u859.new("TextLabel")
                u974.Size = u821.new(1, 0, 1, 0)
                u974.BackgroundTransparency = 1
                u974.TextColor3 = u877.AccentSoft
                u974.TextSize = 10
                u974.Font = u824.Font.SourceSans
                u974.Text = u864._config._keybinds[u972.flag] and u864._config._keybinds[u972.flag]:gsub("Enum.KeyCode.", "") or "..."
                u974.Parent = u973

                local function u975(r0)
                    if r0 == "..." or r0 == "?" then
                        u973.Size = u821.fromOffset(14, 14)
                        return
                    end

                    local r3 = u859.new("GetTextBoundsParams")
                    r3.Text = r0
                    r3.Font = Font.fromEnum(u824.Font.SourceSans)
                    r3.Size = 10
                    r3.Width = 10000
                    local r2 = u834:GetTextBoundsAsync(r3)
                    u973.Size = u821.fromOffset(math.max(14, r2.X + 6), 14)
                end

                u975(u974.Text)
                local u976 = u859.new("Frame")
                u976.AnchorPoint = Vector2.new(1, 0.5)
                u976.BackgroundTransparency = 0.86
                u976.Position = u821.new(1, 0, 0.5, 0)
                u976.Name = "Box"
                u976.Size = u821.new(0, 15, 0, 15)
                u976.BorderSizePixel = 0
                u976.BackgroundColor3 = u877.Accent
                u976.Parent = r6
                local r3_3 = u859.new("UICorner")
                r3_3.CornerRadius = u822.new(0, 4)
                r3_3.Parent = u976
                local r3_4 = u859.new("UIStroke")
                r3_4.Color = u877.StrokeHot
                r3_4.Transparency = 0.3
                r3_4.Parent = u976
                local u977 = u859.new("Frame")
                u977.AnchorPoint = Vector2.new(0.5, 0.5)
                u977.BackgroundTransparency = 0.08
                u977.Position = u821.new(0.5, 0, 0.5, 0)
                u977.Name = "Fill"
                u977.Size = u821.fromOffset(0, 0)
                u977.BorderSizePixel = 0
                u977.BackgroundColor3 = u877.Accent
                u977.Parent = u976
                local r3_5 = u859.new("UICorner")
                r3_5.CornerRadius = u822.new(0, 3)
                r3_5.Parent = u977

                function u970.change_state(r0, r1)
                    r0._state = r1
                    u832:Create(u976, TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out), {BackgroundTransparency = r1 and 0.62 or 0.86}):Play()
                    local r7 = u832
                    local r2 = r7.Create
                    local r9 = TweenInfo.new(0.45, u824.EasingStyle.Quint, u824.EasingDirection.Out)
                    local r10 = {}

                    if r1 then
                        r1 = u821.fromOffset(9, 9)
                    end

                    if not r1 then
                        r1 = u821.fromOffset(0, 0)
                    end

                    r10.Size = r1
                    r2(r7, u977, r9, r10):Play()
                    u864._config._flags[u972.flag] = r0._state
                    u867:save(u796.GameId, u864._config)
                    u972.callback(r0._state)
                end

                if u864:flag_type(u972.flag, "boolean") then
                    u970:change_state(u864._config._flags[u972.flag])
                end

                r6.MouseButton1Click:Connect(function()
                    u970:change_state(not u970._state)
                end)

                r6.InputBegan:Connect(function(r0, r1)
                    if r1 or r0.UserInputType ~= u824.UserInputType.MouseButton3 or u864._choosing_keybind then
                        return
                    end

                    u864._choosing_keybind = true
                    local u978
                    local u979 = u830.InputBegan

                    u978 = u979:Connect(function(r0, r1)
                        if r1 or r0.UserInputType ~= u824.UserInputType.Keyboard or r0.KeyCode == u824.KeyCode.Unknown then
                            return
                        end

                        u978:Disconnect()

                        if r0.KeyCode == u824.KeyCode.Backspace then
                            u864._config._keybinds[u972.flag] = nil
                            u867:save(u796.GameId, u864._config)
                            u974.Text = "..."
                            u975("...")
                            u863:disconnect(u972.flag .. "_keybind")
                        else
                            u864._config._keybinds[u972.flag] = tostring(r0.KeyCode)
                            u867:save(u796.GameId, u864._config)
                            u863:disconnect(u972.flag .. "_keybind")
                            local u980 = u830.InputBegan

                            local function r1_2(r0, r1)
                                if r1 then
                                    return
                                end

                                if tostring(r0.KeyCode) == u864._config._keybinds[u972.flag] then
                                    u970:change_state(not u970._state)
                                end
                            end

                            u863[u972.flag .. "_keybind"] = u980:Connect(r1_2)
                            u980 = "Enum.KeyCode."
                            u974.Text = u864._config._keybinds[u972.flag]:gsub(u980, "")
                            u975(u974.Text)
                        end

                        u864._choosing_keybind = false
                    end)
                end)

                u863[u972.flag .. "_keypress"] = u830.InputBegan:Connect(function(r0, r1)
                    if r1 or r0.UserInputType ~= u824.UserInputType.Keyboard then
                        return
                    end

                    local r2 = u864._config._keybinds[u972.flag]

                    if r2 and tostring(r0.KeyCode) == r2 then
                        u970:change_state(not u970._state)
                    end
                end)

                return u970
            end

            function u901.create_divider(r0, r1)
                u900 = u900 + 1

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + 27
                u917()
                local r2 = u859.new("Frame")
                r2.Size = u821.new(0, 207, 0, 20)
                r2.BackgroundTransparency = 1
                r2.Name = "DividerRow"
                r2.Parent = u916
                r2.LayoutOrder = u900

                if r1 and r1.showtopic then
                    local r3 = u859.new("TextLabel")
                    r3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                    r3.TextColor3 = u820.fromRGB(235, 235, 245)
                    r3.TextTransparency = 0.2
                    r3.Text = r1.title
                    r3.Size = u821.new(0, 153, 0, 13)
                    r3.Position = u821.new(0.5, 0, 0.501, 0)
                    r3.BackgroundTransparency = 1
                    r3.TextXAlignment = u824.TextXAlignment.Center
                    r3.AnchorPoint = Vector2.new(0.5, 0.5)
                    r3.TextSize = 11
                    r3.ZIndex = 3
                    r3.TextStrokeTransparency = 0
                    r3.Parent = r2
                end

                local r3_2 = not r1

                if r3_2 then
                    r1 = r3_2
                elseif r1 then
                    r1 = not r1.disableline
                end

                if r1 then
                    local r3_3 = u859.new("Frame")
                    r3_3.Size = u821.new(1, 0, 0, 1)
                    r3_3.BackgroundColor3 = u820.fromRGB(235, 235, 245)
                    r3_3.BorderSizePixel = 0
                    r3_3.ZIndex = 2
                    r3_3.BackgroundTransparency = 0.55
                    r3_3.Position = u821.new(0, 0, 0.5, -0.5)
                    r3_3.Parent = r2
                    local r2_2 = u859.new("UICorner")
                    r2_2.CornerRadius = u822.new(0, 2)
                    r2_2.Parent = r3_3
                    local r2_3 = u859.new("UIGradient")

                    r2_3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5, 0),
                        NumberSequenceKeypoint.new(1, 1)
                    })

                    r2_3.Parent = r3_3
                end

                return true
            end

            function u901.create_textbox(r0, u981)
                u900 = u900 + 1

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + 45
                u917()
                local r2 = u859.new("TextLabel")
                r2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r2.TextColor3 = u877.Text
                r2.TextTransparency = 0.16
                r2.Text = u981.title or "Textbox"
                r2.Size = u821.new(0, 207, 0, 13)
                r2.BackgroundTransparency = 1
                r2.TextXAlignment = u824.TextXAlignment.Left
                r2.TextSize = 10
                r2.Parent = u916
                r2.LayoutOrder = u900
                local u982 = u859.new("TextBox")
                u982.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", u824.FontWeight.Regular)
                u982.TextColor3 = u877.Text
                u982.PlaceholderText = u981.placeholder or "Enter text..."
                u982.PlaceholderColor3 = u877.SubText
                u982.Text = u864._config._flags[u981.flag] or ""
                u982.Name = "Textbox"
                u982.Size = u821.new(0, 207, 0, 20)
                u982.BorderSizePixel = 0
                u982.TextSize = 11
                u982.BackgroundColor3 = u820.fromRGB(22, 22, 35)
                u982.BackgroundTransparency = 0
                u982.ClearTextOnFocus = false
                u982.Parent = u916
                u982.LayoutOrder = u900
                local r2_2 = u859.new("UICorner")
                r2_2.CornerRadius = u822.new(0, 5)
                r2_2.Parent = u982
                local r2_3 = u859.new("UIStroke")
                r2_3.Color = u877.Accent
                r2_3.Transparency = 0.55
                r2_3.Parent = u982
                local r2_4 = u859.new("UIPadding")
                r2_4.PaddingLeft = u822.new(0, 7)
                r2_4.Parent = u982

                u982.Focused:Connect(function()
                    u832:Create(u982:FindFirstChildOfClass("UIStroke"), TweenInfo.new(0.2), {Transparency = 0.1}):Play()
                end)

                u982.FocusLost:Connect(function()
                    u832:Create(u982:FindFirstChildOfClass("UIStroke"), TweenInfo.new(0.2), {Transparency = 0.55}):Play()
                end)

                local u983 = {
                    _text = "",
                    update_text = function(r0, r1)
                        r0._text = r1
                        u864._config._flags[u981.flag] = r1
                        u867:save(u796.GameId, u864._config)
                        u981.callback(r1)
                    end
                }

                if u864:flag_type(u981.flag, "string") then
                    u983:update_text(u864._config._flags[u981.flag])
                end

                u982.FocusLost:Connect(function()
                    u832:Create(u982:FindFirstChildOfClass("UIStroke"), TweenInfo.new(0.2), {Transparency = 0.55}):Play()
                    u983:update_text(u982.Text)
                end)

                return u983
            end

            function u901.create_paragraph(r0, r1)
                u900 = u900 + 1

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + (r1.customScale or 70)
                u917()
                local u984 = u859.new("Frame")
                u984.BackgroundColor3 = u877.CardDeep
                u984.BackgroundTransparency = 0.15
                u984.Size = u821.new(1, -16, 0, 30)
                u984.BorderSizePixel = 0
                u984.Name = "Paragraph"
                u984.AutomaticSize = u824.AutomaticSize.Y
                u984.Parent = u916
                u984.LayoutOrder = u900
                local r4 = u859.new("UICorner")
                r4.CornerRadius = u822.new(0, 6)
                r4.Parent = u984
                local r4_2 = u859.new("UIStroke")
                r4_2.Color = u877.Stroke
                r4_2.Transparency = 0.25
                r4_2.Parent = u984
                local r4_3 = u859.new("TextLabel")
                r4_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
                r4_3.TextColor3 = u877.Text
                r4_3.TextTransparency = 0.08
                r4_3.Text = r1.title or "Title"
                r4_3.Size = u821.new(1, -10, 0, 20)
                r4_3.Position = u821.new(0, 5, 0, 5)
                r4_3.BackgroundTransparency = 1
                r4_3.TextXAlignment = u824.TextXAlignment.Left
                r4_3.TextSize = 12
                r4_3.AutomaticSize = u824.AutomaticSize.XY
                r4_3.Parent = u984
                local r4_4 = u859.new("TextLabel")
                r4_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
                r4_4.TextColor3 = u877.SubText
                local r6 = not r1.rich

                if r6 then
                    r6 = r1.text or ""
                elseif not r6 then
                    r6 = nil
                end

                r4_4.Text = r6

                if r1.rich then
                    r4_4.RichText = true
                    r4_4.Text = r1.richtext or ""
                end

                r4_4.Size = u821.new(1, -10, 0, 20)
                r4_4.Position = u821.new(0, 5, 0, 30)
                r4_4.BackgroundTransparency = 1

                r4_4.TextXAlignment = u824.TextXAlignment.Left
                r4_4.TextYAlignment = u824.TextYAlignment.Top
                r4_4.TextSize = 11
                r4_4.TextWrapped = true
                r4_4.AutomaticSize = u824.AutomaticSize.XY
                r4_4.Parent = u984

                u984.MouseEnter:Connect(function()
                    u832:Create(u984, TweenInfo.new(0.25, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u820.fromRGB(20, 20, 32),
                        BackgroundTransparency = 0.08
                    }):Play()
                end)

                u984.MouseLeave:Connect(function()
                    u832:Create(u984, TweenInfo.new(0.25, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u877.CardDeep,
                        BackgroundTransparency = 0.15
                    }):Play()
                end)

                return {}
            end

            function u901.create_text(r0, r1)
                u900 = u900 + 1

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + (r1.customScale or 50)
                u917()
                local u985 = u859.new("Frame")
                u985.BackgroundColor3 = u877.CardDeep
                u985.BackgroundTransparency = 0.15
                u985.Size = u821.new(0, 207, 0, r1.CustomYSize or 20)
                u985.BorderSizePixel = 0
                u985.Name = "Text"
                u985.AutomaticSize = u824.AutomaticSize.Y
                u985.Parent = u916
                u985.LayoutOrder = u900
                local r4 = u859.new("UICorner")
                r4.CornerRadius = u822.new(0, 6)
                r4.Parent = u985
                local r4_2 = u859.new("UIStroke")
                r4_2.Color = u877.Stroke
                r4_2.Transparency = 0.25
                r4_2.Parent = u985
                local u986 = u859.new("TextLabel")
                u986.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Regular)
                u986.TextColor3 = u877.SubText
                local r7 = not r1.rich and (r1.text or "")

                if not r7 then
                    r7 = nil
                end

                u986.Text = r7

                if r1.rich then
                    u986.RichText = true
                    u986.Text = r1.richtext or ""
                end

                u986.Size = u821.new(1, -10, 1, 0)
                u986.Position = u821.new(0, 5, 0, 5)
                u986.BackgroundTransparency = 1
                u986.TextXAlignment = u824.TextXAlignment.Left
                u986.TextYAlignment = u824.TextYAlignment.Top
                u986.TextSize = 10
                u986.TextWrapped = true
                u986.AutomaticSize = u824.AutomaticSize.XY
                u986.Parent = u985

                u985.MouseEnter:Connect(function()
                    u832:Create(u985, TweenInfo.new(0.25, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u820.fromRGB(20, 20, 32),
                        BackgroundTransparency = 0.08
                    }):Play()
                end)

                u985.MouseLeave:Connect(function()
                    u832:Create(u985, TweenInfo.new(0.25, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        BackgroundColor3 = u877.CardDeep,
                        BackgroundTransparency = 0.15
                    }):Play()
                end)

                return {
                    Set = function(r0, r1)
                        local r3 = u986
                        local r4 = not r1.rich
                        local r5

                        if r4 then
                            r4 = r1.text

                            if r4 then
                                r5 = r4
                            else
                                r4 = ""
                                r5 = r4
                            end
                        else
                            r5 = r4 or nil
                        end

                        r3.Text = r5

                        if r1.rich then
                            u986.RichText = true
                            u986.Text = r1.richtext or ""
                        end
                    end
                }
            end

            function u901.create_feature(r0, u987)
                u900 = u900 + 1
                local r8 = false

                if r0._size == 0 then
                    r0._size = 11
                end

                r0._size = r0._size + 20
                u917()
                local r9 = u859.new("Frame")
                r9.Size = u821.new(0, 207, 0, 16)
                r9.BackgroundTransparency = 1
                r9.Parent = u916
                r9.LayoutOrder = u900
                local r3 = u859.new("UIListLayout")
                r3.FillDirection = u824.FillDirection.Horizontal
                r3.SortOrder = u824.SortOrder.LayoutOrder
                r3.Parent = r9
                local r10 = u859.new("TextButton")
                r10.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r10.TextSize = 11
                r10.Size = u821.new(1, -50, 0, 16)
                r10.BackgroundColor3 = u877.CardDeep
                r10.BackgroundTransparency = 0.38
                r10.TextColor3 = u877.Text
                r10.Text = "  " .. (u987.title or "Feature")
                r10.AutoButtonColor = false
                r10.TextXAlignment = u824.TextXAlignment.Left
                r10.TextTransparency = 0.12
                r10.Parent = r9
                local r3_2 = u859.new("UICorner")
                r3_2.CornerRadius = u822.new(0, 4)
                r3_2.Parent = r10
                local r11 = u859.new("Frame")
                r11.Size = u821.new(0, 45, 0, 16)
                r11.BackgroundTransparency = 1
                r11.Parent = r9
                local r3_3 = u859.new("UIListLayout")
                r3_3.Padding = u822.new(0.1, 0)
                r3_3.FillDirection = u824.FillDirection.Horizontal
                r3_3.HorizontalAlignment = u824.HorizontalAlignment.Right
                r3_3.SortOrder = u824.SortOrder.LayoutOrder
                r3_3.Parent = r11
                local u988 = u859.new("TextLabel")
                u988.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                u988.Size = u821.new(0, 15, 0, 15)
                u988.BackgroundColor3 = u877.Accent
                u988.TextColor3 = u877.AccentSoft
                u988.TextSize = 11
                u988.BackgroundTransparency = 0.62
                u988.LayoutOrder = 2
                u988.Parent = r11
                local r3_4 = u859.new("UICorner")
                r3_4.CornerRadius = u822.new(0, 3)
                r3_4.Parent = u988
                local r3_5 = u859.new("UIStroke")
                r3_5.Color = u877.Accent
                r3_5.Transparency = 0.4
                r3_5.Thickness = 1
                r3_5.ApplyStrokeMode = u824.ApplyStrokeMode.Border
                r3_5.Parent = u988
                local r13 = u859.new("TextButton")
                r13.Size = u821.new(1, 0, 1, 0)
                r13.BackgroundTransparency = 1
                r13.TextTransparency = 1
                r13.Parent = u988

                if not u864._config._flags then
                    u864._config._flags = {}
                end

                if not u864._config._flags[u987.flag] then
                    u864._config._flags[u987.flag] = {checked = false, BIND = u987.default or "Unknown"}
                end

                local u989 = u864._config._flags[u987.flag].checked
                u988.Text = u864._config._flags[u987.flag].BIND == "Unknown" and "..." or u864._config._flags[u987.flag].BIND
                local u991

                if not u987.disablecheck then
                    local u990 = u859.new("TextButton")
                    u990.Size = u821.new(0, 15, 0, 15)
                    u990.BackgroundColor3 = u989 and u877.Accent or u877.CardDeep
                    u990.BackgroundTransparency = u989 and 0.32 or 0.5
                    u990.Text = ""
                    u990.LayoutOrder = 1
                    u990.Parent = r11
                    local r3_6 = u859.new("UICorner")
                    r3_6.CornerRadius = u822.new(0, 3)
                    r3_6.Parent = u990
                    local r3_7 = u859.new("UIStroke")
                    r3_7.Color = u877.Accent
                    r3_7.Transparency = 0.35
                    r3_7.Thickness = 1
                    r3_7.ApplyStrokeMode = u824.ApplyStrokeMode.Border
                    r3_7.Parent = u990

                    function u991()
                        u989 = not u989

                        u832:Create(u990, TweenInfo.new(0.3), {
                            BackgroundColor3 = u989 and u877.Accent or u877.CardDeep,
                            BackgroundTransparency = u989 and 0.32 or 0.5
                        }):Play()

                        u864._config._flags[u987.flag].checked = u989
                        u867:save(u796.GameId, u864._config)

                        if u987.callback then
                            u987.callback(u989)
                        end
                    end

                    u990.MouseButton1Click:Connect(u991)
                else
                    function u991()
                        if u987.button_callback then
                            u987.button_callback()
                        end
                    end
                end

                r13.MouseButton1Click:Connect(function()
                    u988.Text = "..."
                    local u992

                    u992 = u830.InputBegan:Connect(function(r0, r1)
                        if r1 then
                            return
                        end

                        if r0.UserInputType == u824.UserInputType.Keyboard then
                            local r3 = r0.KeyCode.Name
                            u864._config._flags[u987.flag].BIND = r3
                            u988.Text = r3 ~= "Unknown" and r3 or "..."
                            u867:save(u796.GameId, u864._config)
                            u992:Disconnect()
                        elseif r0.UserInputType == u824.UserInputType.MouseButton3 then
                            u864._config._flags[u987.flag].BIND = "Unknown"
                            u988.Text = "..."
                            u867:save(u796.GameId, u864._config)
                            u992:Disconnect()
                        end
                    end)

                    u863["feat_keybind_input_" .. u987.flag] = u992
                end)

                u863["feat_keybind_press_" .. u987.flag] = u830.InputBegan:Connect(function(r0, r1)
                    if r1 or r0.UserInputType ~= u824.UserInputType.Keyboard then
                        return
                    end

                    if r0.KeyCode.Name == u864._config._flags[u987.flag].BIND then
                        u991()
                    end
                end)

                r10.MouseButton1Click:Connect(function()
                    if u987.button_callback then
                        u987.button_callback()
                    end
                end)

                if not u987.disablecheck and u987.callback then
                    u987.callback(u989)
                end

                return r9
            end

            function u901.create_colorpicker(u995, u994)
                u900 = u900 + 1
                local u993 = {_h = 0, _s = 1, _v = 1}

                if u864._config._flags[u994.flag] then
                    local r3 = u864._config._flags[u994.flag]

                    if type(r3) == "table" and r3.H ~= nil then
                        local r9 = r3.H
                        local r10 = r3.S
                        r3 = r3.V
                        u993._h = r9
                        u993._s = r10
                        u993._v = r3
                    end
                elseif u994.color then
                    local r12, r13, r14 = u820.toHSV(u994.color)
                    u993._h = r12
                    u993._s = r13
                    u993._v = r14
                end

                if u995._size == 0 then
                    u995._size = 11
                end

                u995._size = u995._size + 32
                u917()
                local r9_2 = u859.new("TextButton")
                r9_2.Size = u821.new(0, 207, 0, 20)
                r9_2.BackgroundTransparency = 1
                r9_2.Text = ""
                r9_2.AutoButtonColor = false
                r9_2.Parent = u916
                r9_2.LayoutOrder = u900
                local r10_2 = u859.new("TextLabel")
                r10_2.Text = u994.title or "Color"
                r10_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
                r10_2.TextSize = 11
                r10_2.TextColor3 = u877.Text
                r10_2.TextTransparency = 0.16
                r10_2.BackgroundTransparency = 1
                r10_2.Size = u821.new(0, 150, 1, 0)
                r10_2.TextXAlignment = u824.TextXAlignment.Left
                r10_2.Parent = r9_2
                local u996 = u859.new("Frame")
                u996.Size = u821.new(0, 44, 0, 14)
                u996.AnchorPoint = Vector2.new(1, 0.5)
                u996.Position = u821.new(1, 0, 0.5, 0)
                u996.BorderSizePixel = 0
                u996.BackgroundColor3 = u820.fromHSV(u993._h, u993._s, u993._v)
                u996.Parent = r9_2
                local r3_2 = u859.new("UICorner")
                r3_2.CornerRadius = u822.new(0, 5)
                r3_2.Parent = u996
                local r3_3 = u859.new("UIStroke")
                r3_3.Color = u877.StrokeHot
                r3_3.Transparency = 0.38
                r3_3.Parent = u996
                local u997 = u859.new("TextLabel")
                u997.Text = "›"
                u997.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
                u997.TextSize = 14
                u997.TextColor3 = u877.Accent
                u997.BackgroundTransparency = 1
                u997.Size = u821.new(0, 12, 1, 0)
                u997.AnchorPoint = Vector2.new(1, 0.5)
                u997.Position = u821.new(1, -50, 0.5, 0)
                u997.Rotation = 90
                u997.Parent = r9_2
                local u998 = u859.new("Frame")
                u998.Size = u821.new(0, 207, 0, 0)
                u998.BackgroundTransparency = 1
                u998.ClipsDescendants = true
                u998.BorderSizePixel = 0
                u998.Parent = u916
                u998.LayoutOrder = u900
                local u999 = u859.new("Frame")
                u999.Size = u821.new(1, 0, 0, 62)
                u999.Position = u821.new(0, 0, 0, 4)
                u999.BorderSizePixel = 0
                u999.BackgroundColor3 = u820.fromHSV(u993._h, 1, 1)
                u999.ClipsDescendants = true
                u999.Parent = u998
                local r3_4 = u859.new("UICorner")
                r3_4.CornerRadius = u822.new(0, 7)
                r3_4.Parent = u999
                local r3_5 = u859.new("Frame")
                r3_5.Size = u821.new(1, 0, 1, 0)
                r3_5.BackgroundColor3 = u820.new(1, 1, 1)
                r3_5.BorderSizePixel = 0
                r3_5.ZIndex = 2
                r3_5.Parent = u999
                local r4 = u859.new("UIGradient")
                r4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
                r4.Parent = r3_5
                local r3_6 = u859.new("Frame")
                r3_6.Size = u821.new(1, 0, 1, 0)
                r3_6.BackgroundColor3 = u820.new(0, 0, 0)
                r3_6.BorderSizePixel = 0
                r3_6.ZIndex = 3
                r3_6.Parent = u999
                local r4_2 = u859.new("UIGradient")
                r4_2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
                r4_2.Rotation = 90
                r4_2.Parent = r3_6
                local u1000 = u859.new("Frame")
                u1000.Size = u821.new(0, 12, 0, 12)
                u1000.AnchorPoint = Vector2.new(0.5, 0.5)
                u1000.BackgroundColor3 = u820.fromRGB(0, 0, 0)
                u1000.BorderSizePixel = 0
                u1000.ZIndex = 5
                u1000.Visible = false
                u1000.Position = u821.new(u993._s, 0, 1 - u993._v, 0)
                u1000.Parent = u999
                local r3_7 = u859.new("UICorner")
                r3_7.CornerRadius = u822.new(1, 0)

                r3_7.Parent = u1000
                local r3_8 = u859.new("Frame")
                r3_8.Size = u821.new(0, 8, 0, 8)
                r3_8.AnchorPoint = Vector2.new(0.5, 0.5)
                r3_8.Position = u821.new(0.5, 0, 0.5, 0)
                r3_8.BackgroundColor3 = u820.new(1, 1, 1)
                r3_8.BorderSizePixel = 0
                r3_8.ZIndex = 6
                r3_8.Parent = u1000
                local r4_3 = u859.new("UICorner")
                r4_3.CornerRadius = u822.new(1, 0)
                r4_3.Parent = r3_8
                local u1001 = u859.new("Frame")
                u1001.Size = u821.new(1, 0, 0, 12)
                u1001.Position = u821.new(0, 0, 0, 72)
                u1001.BorderSizePixel = 0
                u1001.BackgroundColor3 = u820.new(1, 1, 1)
                u1001.Parent = u998
                local r3_9 = u859.new("UICorner")
                r3_9.CornerRadius = u822.new(0, 5)
                r3_9.Parent = u1001
                local r28 = u859.new("UIGradient")

                r28.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, u820.fromHSV(0, 1, 1)),
                    ColorSequenceKeypoint.new(0.167, u820.fromHSV(0.167, 1, 1)),
                    ColorSequenceKeypoint.new(0.333, u820.fromHSV(0.333, 1, 1)),
                    ColorSequenceKeypoint.new(0.5, u820.fromHSV(0.5, 1, 1)),
                    ColorSequenceKeypoint.new(0.667, u820.fromHSV(0.667, 1, 1)),
                    ColorSequenceKeypoint.new(0.833, u820.fromHSV(0.833, 1, 1)),
                    ColorSequenceKeypoint.new(1, u820.fromHSV(0, 1, 1))
                })

                r28.Parent = u1001
                local u1002 = u859.new("Frame")
                u1002.Size = u821.new(0, 6, 1, 4)
                u1002.AnchorPoint = Vector2.new(0.5, 0.5)
                u1002.Position = u821.new(u993._h, 0, 0.5, 0)
                u1002.BackgroundColor3 = u820.fromRGB(0, 0, 0)
                u1002.BorderSizePixel = 0
                u1002.ZIndex = 4
                u1002.Visible = false
                u1002.Parent = u1001
                local r3_10 = u859.new("UICorner")
                r3_10.CornerRadius = u822.new(0, 3)
                r3_10.Parent = u1002
                local r3_11 = u859.new("Frame")
                r3_11.Size = u821.new(0, 4, 1, 0)
                r3_11.AnchorPoint = Vector2.new(0.5, 0.5)
                r3_11.Position = u821.new(0.5, 0, 0.5, 0)
                r3_11.BackgroundColor3 = u820.new(1, 1, 1)
                r3_11.BorderSizePixel = 0
                r3_11.ZIndex = 5
                r3_11.Parent = u1002
                local r5 = u859.new("UICorner")
                r5.CornerRadius = u822.new(0, 2)
                r5.Parent = r3_11

                local function u1003()

                    return u820.fromHSV(u993._h, u993._s, u993._v)
                end

                local function u1004()
                    u996.BackgroundColor3 = u1003()
                    u999.BackgroundColor3 = u820.fromHSV(u993._h, 1, 1)
                    u1000.Position = u821.new(u993._s, 0, 1 - u993._v, 0)
                    u1002.Position = u821.new(u993._h, 0, 0.5, 0)
                end

                local function u1005()
                    u864._config._flags[u994.flag] = {H = u993._h, S = u993._s, V = u993._v}
                    u867:save(u796.GameId, u864._config)

                    if u994.callback then
                        u994.callback(u1003())
                    end
                end

                local u1006 = false
                local u1007 = false

                u999.InputBegan:Connect(function(r0)
                    if r0.UserInputType == u824.UserInputType.MouseButton1 then
                        u1006 = true
                        u864._blocking_drag = true
                    end
                end)

                u1001.InputBegan:Connect(function(r0)
                    if r0.UserInputType == u824.UserInputType.MouseButton1 then
                        u1007 = true
                        u864._blocking_drag = true
                    end
                end)

                u863["cp_moved_" .. u994.flag] = u830.InputChanged:Connect(function(r0)
                    if r0.UserInputType ~= u824.UserInputType.MouseMovement then
                        return
                    end

                    if u1006 then
                        u993._s = math.clamp((r0.Position.X - u999.AbsolutePosition.X) / u999.AbsoluteSize.X, 0, 1)
                        u993._v = 1 - math.clamp((r0.Position.Y - u999.AbsolutePosition.Y) / u999.AbsoluteSize.Y, 0, 1)
                        u1004()

                        if u994.callback then
                            u994.callback(u820.fromHSV(u993._h, u993._s, u993._v))
                        end
                    end

                    if not u1007 then
                        return
                    end

                    u993._h = math.clamp((r0.Position.X - u1001.AbsolutePosition.X) / u1001.AbsoluteSize.X, 0, 1)
                    u1004()

                    if u994.callback then
                        u994.callback(u820.fromHSV(u993._h, u993._s, u993._v))
                    end
                end)

                u863["cp_ended_" .. u994.flag] = u830.InputEnded:Connect(function(r0)
                    if r0.UserInputType ~= u824.UserInputType.MouseButton1 then
                        return
                    end

                    local r2 = u1006
                    local r3

                    if u1006 then
                        r3 = r2
                    else
                        r3 = u1007
                    end

                    if r3 then
                        u1006 = false
                        u1007 = false
                        u864._blocking_drag = false
                        u1005()
                    end
                end)

                local u1008 = false

                r9_2.MouseButton1Click:Connect(function()
                    u1008 = not u1008
                    u1000.Visible = u1008
                    u1002.Visible = u1008
                    u995._size = u1008 and u995._size + 90 or u995._size - 90

                    u832:Create(u998, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                        Size = u821.new(0, 207, 0, u1008 and 90 or 0)
                    }):Play()

                    u832:Create(u997, TweenInfo.new(0.3), {Rotation = u1008 and -90 or 90}):Play()

                    if u901._state then
                        u904.Size = u821.new(1, -8, 0, 93 + u995._size + u995._multiplier + 16)
                    end

                    u916.Size = u821.new(1, -8, 0, u995._size + u995._multiplier)
                end)

                u1004()

                if u994.callback then
                    u994.callback(u1003())
                end

                function u993.Set(r0, r1)
                    local r278, r279, r280 = u820.toHSV(r1)
                    r0._h = r278
                    r0._s = r279
                    r0._v = r280
                    u1004()
                    u1005()
                end

                return u993
            end

            return u901
        end

        r7._left = u898
        r7._right = u899
        return r7
    end

    local function u1009(r0, r1, r2)
        return u820.new(r0.R + (r1.R - r0.R) * r2, r0.G + (r1.G - r0.G) * r2, r0.B + (r1.B - r0.B) * r2)
    end

    local function u1010()
        local r34 = u861.Colors

        for r2, r3 in ipairs(u864._all_modules) do
            local r10 = r3.frame
            r10.BackgroundColor3 = r34.Card
            local r31 = r10:FindFirstChildOfClass("UIStroke")

            if r31 then
                if r10:GetAttribute("pinned") == true then
                    r31.Color = r34.Accent
                    r31.Transparency = 0.55
                elseif r10:GetAttribute("expanded") == true then
                    r31.Color = r34.Accent
                    r31.Transparency = 0.68
                else
                    r31.Color = r34.Stroke
                    r31.Transparency = 0.32
                end
            end

            local r11 = r10:FindFirstChild("Header")

            if r11 then
                r11.BackgroundColor3 = r34.CardDeep
                local r4 = r3.manager
                local r8 = r4 and r4._accent_bar

                if r8 then
                    if r4._ab_tween then
                        r4._ab_tween:Cancel()
                        r4._ab_tween = nil
                    end

                    if r10:GetAttribute("expanded") == true then
                        r8.BackgroundColor3 = r34.Accent
                        r8.BackgroundTransparency = 0.08
                    else
                        r8.BackgroundColor3 = r34.AccentDim
                        r8.BackgroundTransparency = 0.45
                    end
                end

                local r4_2 = r11:FindFirstChild("ModuleName")

                if r4_2 then
                    r4_2.TextColor3 = r34.Text
                end

                local r4_3 = r11:FindFirstChild("Description")

                if r4_3 then
                    r4_3.TextColor3 = r34.SubText
                end

                local r4_4 = r11:FindFirstChild("Icon")

                if r4_4 and r4_4:IsA("GuiObject") then
                    r4_4.ImageColor3 = r34.AccentSoft
                end

                local r4_5 = r11:FindFirstChild("Keybind")

                if r4_5 then
                    r4_5.BackgroundColor3 = r34.Accent
                    local r31_2 = r4_5:FindFirstChildOfClass("TextLabel")

                    if r31_2 then
                        r31_2.TextColor3 = r34.AccentSoft
                    end

                    local r4_6 = r4_5:FindFirstChildOfClass("UIStroke")

                    if r4_6 then
                        r4_6.Color = r34.Accent
                    end
                end

                local r4_7 = r11:FindFirstChild("Bell")

                if r4_7 and r4_7:IsA("GuiObject") then
                    local r5 = u864._config._library[r3.flag .. "_notify"] == true
                    r4_7.ImageColor3 = r5 and r34.Accent or r34.SubText

                    if r5 then
                        r5 = 0.05
                    end

                    r4_7.ImageTransparency = r5 or 0.45
                end

                local r4_8 = r11:FindFirstChild("PinBtn")

                if r4_8 and r4_8:IsA("GuiObject") then
                    if r10:GetAttribute("pinned") == true then
                        r4_8.ImageColor3 = r34.Accent
                        r4_8.ImageTransparency = 0.08
                    else
                        r4_8.ImageColor3 = r34.SubText
                        r4_8.ImageTransparency = 0.55
                    end
                end

                local r4_9 = r11:FindFirstChild("Toggle")

                if r4_9 then
                    local r7 = r4_9.BackgroundTransparency < 0.4
                    local r24 = u820.new(math.clamp(r34.Card.R * 0.48, 0, 1), math.clamp(r34.Card.G * 0.48, 0, 1), math.clamp(r34.Card.B * 0.52, 0, 1))
                    r4_9.BackgroundColor3 = r7 and r34.Accent or r24
                    local r31_3 = r4_9:FindFirstChildOfClass("UIStroke")

                    if r31_3 then
                        r31_3.Color = r34.Stroke
                    end

                    local r4_10 = r4_9:FindFirstChild("Circle")

                    if r4_10 then
                        if r7 then
                            r7 = r34.Background
                        end

                        if not r7 then
                            r7 = r34.SubText
                        end

                        r4_10.BackgroundColor3 = r7
                    end
                end

                for r5_2, r6 in r11:GetChildren() do
                    if r6:IsA("Frame") and r6:FindFirstChildOfClass("UIGradient") then
                        r6.BackgroundColor3 = r34.CardDeep
                        break
                    end
                end

                for r8_2, r9 in r11:GetChildren() do
                    local r28 = r9:IsA("Frame")
                    local r4_11

                    if r28 then
                        local r4_12 = r9.Size.Y.Offset
                        r28 = r4_12 == 1

                        if r4_12 == 1 then
                            r4_11 = r9.Name ~= "AccentBar"
                        else
                            r4_11 = r28
                        end
                    else
                        r4_11 = r28
                    end

                    if r4_11 and r9.Name ~= "Underline" then
                        r9.BackgroundColor3 = r34.Stroke
                    end
                end
            end

            local r9_2 = r10:FindFirstChild("Options")

            if r9_2 then
                for r11_2, r12 in r9_2:GetChildren() do
                    if r12.Name == "Slider" or r12.Name == "DoubleSlider" then
                        local r5_3 = r12:FindFirstChild("Drag")

                        if r5_3 then
                            r5_3.BackgroundColor3 = r34.Stroke
                            local r4_13 = r5_3:FindFirstChild("Fill")

                            if r4_13 then
                                r4_13.BackgroundColor3 = r34.Accent
                                local r25 = r4_13:FindFirstChildOfClass("UIGradient")

                                if r25 then
                                    r25.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, r34.AccentSoft), ColorSequenceKeypoint.new(1, r34.AccentDim)})
                                end

                                local r24_2 = r4_13:FindFirstChild("Circle")

                                if r24_2 then
                                    r24_2.BackgroundColor3 = r34.AccentSoft
                                end
                            end

                            local r4_14 = r5_3:FindFirstChild("RangeFill")

                            if r4_14 then
                                r4_14.BackgroundColor3 = r34.Accent
                                local r24_3 = r4_14:FindFirstChildOfClass("UIGradient")

                                if r24_3 then
                                    r24_3.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, r34.AccentSoft),
                                        ColorSequenceKeypoint.new(1, r34.AccentDim)
                                    })
                                end
                            end

                            for r23, r24_4 in ipairs({"KnobL", "KnobR"}) do
                                local r25_2 = r5_3:FindFirstChild(r24_4)

                                if r25_2 then
                                    r25_2.BackgroundColor3 = r34.AccentSoft
                                end
                            end
                        end

                        for r26, r27 in r12:GetChildren() do
                            if r27:IsA("TextLabel") then
                                r27.TextColor3 = r34.Text
                            end
                        end
                    elseif r12.Name == "Checkbox" then
                        for r14, r15 in r12:GetChildren() do
                            if r15:IsA("TextLabel") and r15.Name ~= "Value" then
                                r15.TextColor3 = r34.Text
                            end

                            if r15.Name == "Box" then
                                r15.BackgroundColor3 = r34.Accent
                                local r28_2 = r15:FindFirstChildOfClass("UIStroke")

                                if r28_2 then
                                    r28_2.Color = r34.StrokeHot
                                end
                            elseif r15.Name == "Fill" then
                                r15.BackgroundColor3 = r34.Accent
                            elseif r15.Name == "CBKey" then
                                r15.BackgroundColor3 = r34.Accent
                                local r28_3 = r15:FindFirstChildOfClass("UIStroke")

                                if r28_3 then
                                    r28_3.Color = r34.Accent
                                end
                            end
                        end
                    elseif r12.Name == "Dropdown" then
                        for r17, r18 in r12:GetDescendants() do
                            if r18:IsA("TextLabel") and r18.Text == "⇅" then
                                r18.TextColor3 = r34.Accent
                            elseif r18:IsA("TextLabel") then
                                r18.TextColor3 = r34.Text
                            elseif r18:IsA("TextButton") and (r18.Name == "Option" or r18.Name == "OptionBtn") then
                                r18.TextColor3 = r34.Text
                            elseif r18:IsA("Frame") and r18.Name == "Box" then
                                r18.BackgroundColor3 = r34.Accent
                                local r27_2 = r18:FindFirstChildOfClass("UIStroke")

                                if r27_2 then
                                    r27_2.Color = r34.StrokeHot
                                end
                            elseif r18:IsA("ImageLabel") and r18.Name == "DDIcon" then
                                r18.ImageColor3 = r34.AccentSoft
                            elseif r18:IsA("TextButton") and r18.Name == "DDSlider" then
                                for r20, r21 in r18:GetChildren() do
                                    if r21:IsA("TextLabel") then
                                        r21.TextColor3 = r34.Text
                                    end
                                end

                                local r4_15 = r18:FindFirstChild("Drag")

                                if r4_15 then
                                    r4_15.BackgroundColor3 = r34.Stroke
                                    local r5_4 = r4_15:FindFirstChild("Fill")

                                    if r5_4 then
                                        r5_4.BackgroundColor3 = r34.Accent
                                        local r6_2 = r5_4:FindFirstChildOfClass("UIGradient")

                                        if r6_2 then
                                            r6_2.Color = ColorSequence.new({
                                                ColorSequenceKeypoint.new(0, r34.AccentSoft),
                                                ColorSequenceKeypoint.new(1, r34.AccentDim)
                                            })
                                        end

                                        local r5_5 = r5_4:FindFirstChild("Circle")

                                        if r5_5 then
                                            r5_5.BackgroundColor3 = r34.AccentSoft
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                for r29, r30 in r9_2:GetDescendants() do
                    if r30:IsA("UIStroke") then
                        local r4_16 = r30.Parent

                        if r4_16 then
                            local r5_6 = r4_16.Name == "Box"
                            local r6_3

                            if r5_6 then
                                r6_3 = r5_6
                            else
                                local r6_4 = r4_16.Name
                                r5_6 = r6_4 == "Swatch"

                                if r6_4 == "Swatch" then
                                    r6_3 = r5_6
                                else
                                    local r6_5 = r4_16.Name
                                    r5_6 = r6_5 == "Keybind"

                                    if r6_5 == "Keybind" then
                                        r6_3 = r5_6
                                    else
                                        r6_3 = r4_16.Name == "CBKey"
                                    end
                                end
                            end

                            if r6_3 or r4_16.Name == "FCB" then
                                r30.Color = r34.StrokeHot
                            end
                        end
                    elseif r30:IsA("Frame") and r30.Name == "PickerBox" then
                        local r31_4 = r30:FindFirstChildOfClass("UIStroke")

                        if r31_4 then
                            r31_4.Color = r34.StrokeHot
                        end
                    elseif r30:IsA("TextLabel") and r30.Name == "PickerArrow" then
                        r30.TextColor3 = r34.Accent
                    elseif r30:IsA("TextLabel") and r30.Parent and r30.Parent.Name == "Row" then
                        r30.TextColor3 = r34.Text
                    end
                end
            end
        end
    end

    function u876.apply_gui_theme_fast(u1011)
        task.defer(function()
            local r7 = u861.Colors

            if u1011._theme_container then
                u1011._theme_container.BackgroundColor3 = r7.Background
            end

            if u1011._theme_container_stroke then
                u1011._theme_container_stroke.Color = r7.StrokeHot
            end

            if u1011._theme_search then
                u1011._theme_search.BackgroundColor3 = r7.CardDeep
            end

            if u1011._theme_client_grad then
                u1011._theme_client_grad.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, r7.Accent),
                    ColorSequenceKeypoint.new(0.42, r7.Accent),
                    ColorSequenceKeypoint.new(1, r7.Accent)
                })
            end

            if u1011._theme_pin then
                u1011._theme_pin.BackgroundColor3 = r7.Accent
            end

            if u1011._theme_logo then
                u1011._theme_logo.ImageColor3 = r7.AccentSoft
            end

            local r1 = u1011._theme_tabs_ref

            if r1 then
                for r1_2, r2 in r1:GetChildren() do
                    if r2.Name == "Tab" then
                        local r3 = r2:FindFirstChild("Indicator")

                        if r3 then
                            r3.BackgroundColor3 = r7.Accent
                        end
                    end
                end
            end

            if u1011._active_tab_ref then
                u1011:update_tabs(u1011._active_tab_ref, false)
            end
        end)
    end

    function u876.apply_gui_theme_fast(u1012)
        task.defer(function()
            local r7 = u861.Colors

            if u1012._theme_container then
                u1012._theme_container.BackgroundColor3 = r7.Background
            end

            if u1012._theme_container_stroke then
                u1012._theme_container_stroke.Color = r7.StrokeHot
            end

            if u1012._theme_search then
                u1012._theme_search.BackgroundColor3 = r7.CardDeep
            end

            if u1012._theme_client_grad then
                u1012._theme_client_grad.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, r7.Accent),
                    ColorSequenceKeypoint.new(0.42, r7.Accent),
                    ColorSequenceKeypoint.new(1, r7.Accent)
                })
            end

            if u1012._theme_pin then
                u1012._theme_pin.BackgroundColor3 = r7.Accent
            end

            if u1012._theme_logo then
                u1012._theme_logo.ImageColor3 = r7.AccentSoft
            end

            local r1 = u1012._theme_tabs_ref

            if r1 then
                for r1_2, r2 in r1:GetChildren() do
                    if not (r2.Name ~= "Tab") then
                        local r3 = r2:FindFirstChild("Indicator")

                        if r3 then
                            r3.BackgroundColor3 = r7.Accent
                        end
                    end
                end
            end

            if u1012._active_tab_ref then
                u1012:update_tabs(u1012._active_tab_ref, false)
            end
        end)
    end

    function u876.apply_gui_theme(u1013)
        if u1013._theme_debounce then
            u1013._theme_debounce:Disconnect()
            u1013._theme_debounce = nil
        end

        u1013._theme_pending = true

        u1013._theme_debounce = task.delay(0.05, function()
            u1013._theme_debounce = nil

            if not u1013._theme_pending then
                return
            end

            u1013._theme_pending = false

            if u1013._applying_theme then
                return
            end

            u1013._applying_theme = true
            local r28 = u861.Colors
            local r0 = u864._config._gui

            if u1013._theme_container then
                u1013._theme_container.BackgroundColor3 = r28.Background

                if r0 and r0.bg_transparency ~= nil then
                    u1013._theme_container.BackgroundTransparency = r0.bg_transparency
                end
            end

            if u1013._theme_container_stroke then
                u1013._theme_container_stroke.Color = r28.StrokeHot
            end

            if u1013._theme_vert_div then
                u1013._theme_vert_div.BackgroundColor3 = r28.Stroke
            end

            if u1013._theme_search then
                u1013._theme_search.BackgroundColor3 = r28.CardDeep
            end

            if u1013._theme_search_stroke then
                u1013._theme_search_stroke.Color = r28.StrokeHot
            end

            if u1013._theme_search_icon then
                u1013._theme_search_icon.ImageColor3 = r28.Accent
            end

            if u1013._theme_search_box then
                u1013._theme_search_box.PlaceholderColor3 = r28.SubText
                u1013._theme_search_box.TextColor3 = r28.Text
            end

            if u1013._theme_client_name then
                u1013._theme_client_name.TextColor3 = r28.Accent
            end

            if u1013._theme_client_grad then
                u1013._theme_client_grad.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, r28.Accent),
                    ColorSequenceKeypoint.new(0.42, r28.Accent),
                    ColorSequenceKeypoint.new(1, r28.Accent)
                })
            end

            if u1013._theme_pin then
                u1013._theme_pin.BackgroundColor3 = r28.Accent
            end

            if u1013._theme_logo then
                u1013._theme_logo.ImageColor3 = r28.AccentSoft
            end

            local r5 = u1013._theme_tabs_ref

            if r5 then
                for r1, r2 in r5:GetChildren() do
                    if r2.Name == "Tab" then
                        local r12 = r2:FindFirstChild("Indicator")

                        if r12 then
                            r12.BackgroundColor3 = r28.Accent
                        end

                        local r3 = r2:FindFirstChildOfClass("TextLabel")

                        if r3 then
                            local r11 = r3:FindFirstChildOfClass("UIGradient")

                            if r11 then
                                r11.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, r28.Text),
                                    ColorSequenceKeypoint.new(0.65, u1009(r28.Text, r28.SubText, 0.45)),
                                    ColorSequenceKeypoint.new(1, u1009(r28.Text, r28.SubText, 0.78))
                                })
                            end
                        end

                        local r3_2 = r2:FindFirstChild("Icon")

                        if r3_2 and r3_2:IsA("GuiObject") then
                            r3_2.ImageColor3 = r2 == u1013._active_tab_ref and r28.Accent or r28.Text
                        end
                    end
                end
            end

            if u1013._gui_tr then
                local r1_2 = u1013._gui_tr

                if r1_2.drag then
                    r1_2.drag.BackgroundColor3 = r28.Stroke
                end

                if r1_2.fill then
                    r1_2.fill.BackgroundColor3 = r28.Accent
                    local r20 = r1_2.fill:FindFirstChildOfClass("UIGradient")

                    if r20 then
                        r20.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, r28.AccentSoft), ColorSequenceKeypoint.new(1, r28.AccentDim)})
                    end
                end

                if r1_2.circle then
                    r1_2.circle.BackgroundColor3 = r28.AccentSoft
                end

                if r1_2.title then
                    r1_2.title.TextColor3 = r28.Text
                end

                if r1_2.val then
                    r1_2.val.TextColor3 = r28.Text
                end
            end

            if u1013._gui_sections then
                for r4, r5_2 in ipairs(u1013._gui_sections) do
                    for r7, r8 in r5_2:GetDescendants() do
                        if r8:IsA("TextLabel") then
                            if r8:GetAttribute("GUICardHead") then
                                r8.TextColor3 = r28.AccentSoft
                            elseif r8.Name == "Value" then
                                r8.TextColor3 = r28.Text
                            elseif r8.Text == "›" then
                                r8.TextColor3 = r28.Accent
                            elseif r8.Parent and r8.Parent.Name == "resetBtn" then
                                r8.TextColor3 = r28.AccentSoft
                            else
                                r8.TextColor3 = r28.Text
                            end
                        end
                    end
                end
            end

            local r332 = u880:GetChildren()

            for r10, r11_2 in ipairs(r332) do
                if r11_2.Name == "ThemeDivider" then
                    r11_2.BackgroundColor3 = r28.Stroke
                end
            end

            local r330 = u880:GetDescendants()

            for r13, r14 in ipairs(r330) do
                if r14.Name == "GUICard" then
                    local r24 = r14:FindFirstChildOfClass("UIStroke")

                    if r24 then
                        r24.Color = r28.Stroke
                    end

                    r14.BackgroundColor3 = r28.Card
                end
            end

            u1010()

            if u1013._active_tab_ref then
                u1013:update_tabs(u1013._active_tab_ref, false)
            end

            if u1013._gui_reset_btn then
                local r0_2 = u1013._gui_reset_btn

                if r0_2.btn then
                    r0_2.btn.BackgroundColor3 = r28.CardDeep
                end

                if r0_2.stroke then
                    r0_2.stroke.Color = r28.StrokeHot
                end

                if r0_2.lbl then
                    r0_2.lbl.TextColor3 = r28.AccentSoft
                end
            end

            if u1013._gui_hide_toggle then
                local r1_3 = u1013._gui_hide_toggle
                local r2_2 = u864._config._gui.hide_minimized == true
                local r20_2 = u820.new(math.clamp(r28.Card.R * 0.48, 0, 1), math.clamp(r28.Card.G * 0.48, 0, 1), math.clamp(r28.Card.B * 0.52, 0, 1))

                if r1_3.toggle then
                    r1_3.toggle.BackgroundColor3 = r2_2 and r28.Accent or r20_2
                end

                if r1_3.circ then
                    r1_3 = r1_3.circ

                    if r2_2 then
                        r2_2 = r28.Background
                    end

                    if not r2_2 then
                        r2_2 = r28.SubText
                    end

                    r1_3.BackgroundColor3 = r2_2
                end
            end

            if u1013._gui_kb then
                local r0_3 = u1013._gui_kb

                if r0_3.btn then
                    r0_3.btn.BackgroundColor3 = r28.CardDeep
                end

                if r0_3.stroke then
                    r0_3.stroke.Color = r28.StrokeHot
                end

                if r0_3.lbl then
                    r0_3.lbl.TextColor3 = r28.AccentSoft
                end
            end

            u1013._applying_theme = false
        end)
    end

    function u876.bind_gui_toggle_key(u1015)
        u863:disconnect("library_visibility")
        local r4 = (u864._config._gui and u864._config._gui.toggle_key or "Enum.KeyCode.RightControl"):gsub("Enum.KeyCode%.", "")
        local u1014 = u824.KeyCode.RightControl

        for r2, r3 in u824.KeyCode:GetEnumItems() do
            if r3.Name == r4 then
                u1014 = r3
                break
            end
        end

        u863["library_visibility"] = u830.InputBegan:Connect(function(r0, r1)
            if r1 then
                return
            end

            if r0.KeyCode ~= u1014 then
                return
            end

            if not u878.Enabled then
                u878.Enabled = true
            end

            u1015._ui_open = not u1015._ui_open
            u1015:change_visiblity(u1015._ui_open)
        end)
    end

    local function u1016()
        local r4 = u876:create_tab("Settings", "settings", {layout_order = 999999, no_activate = true})
        local u1017 = r4._left
        local r12 = r4._right
        local u1018 = 0
        local u1019 = 0

        local function u1020(r0)
            if r0 == "left" then
                u1018 = u1018 + 1
                return u1018
            end

            u1019 = u1019 + 1
            return u1019
        end

        local function r2(r0, r1)
            local r7 = u859.new("Frame")
            r7.Name = "GUICard"
            r7.BackgroundColor3 = u877.Card
            r7.BackgroundTransparency = 0.68
            r7.BorderSizePixel = 0
            r7.Size = u821.new(1, -8, 0, 0)
            r7.AutomaticSize = u824.AutomaticSize.Y
            local r3 = u1020
            local r4 = r0 == u1017
            local r5

            if r4 then
                r5 = "left"
            else
                local r5_2 = r4
                r5 = "right"
            end

            r7.LayoutOrder = r3(r5)
            r7.Parent = r0
            local r2 = u859.new("UICorner")
            r2.CornerRadius = u822.new(0, 12)
            r2.Parent = r7
            local r2_2 = u859.new("UIStroke")
            r2_2.Color = u877.Stroke
            r2_2.Transparency = 0.35
            r2_2.Parent = r7
            local r2_3 = u859.new("UIPadding")
            r2_3.PaddingLeft = u822.new(0, 12)
            r2_3.PaddingRight = u822.new(0, 12)
            r2_3.PaddingTop = u822.new(0, 10)
            r2_3.PaddingBottom = u822.new(0, 12)
            r2_3.Parent = r7
            local r2_4 = u859.new("UIListLayout")
            r2_4.Padding = u822.new(0, 10)
            r2_4.SortOrder = u824.SortOrder.LayoutOrder
            r2_4.Parent = r7
            local r2_5 = u859.new("TextLabel")
            r2_5.BackgroundTransparency = 1
            r2_5.Size = u821.new(1, 0, 0, 16)
            r2_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
            r2_5.TextSize = 12
            r2_5.TextColor3 = u877.AccentSoft
            r2_5.TextTransparency = 0.1
            r2_5.TextXAlignment = u824.TextXAlignment.Left
            r2_5.Text = r1
            r2_5.LayoutOrder = 0
            r2_5:SetAttribute("GUICardHead", true)
            r2_5.Parent = r7
            return r7
        end

        local r1 = r2(u1017, "Interaction")
        local u1021 = r2(r12, "Theme")
        local r2_2 = u859.new("Frame")
        r2_2.BackgroundTransparency = 1
        r2_2.Size = u821.new(1, 0, 0, 22)
        r2_2.LayoutOrder = 1
        r2_2.Parent = r1
        local r3 = u859.new("TextLabel")
        r3.Size = u821.new(0, 120, 1, 0)
        r3.BackgroundTransparency = 1
        r3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r3.TextSize = 11
        r3.TextColor3 = u877.Text
        r3.TextTransparency = 0.14
        r3.TextXAlignment = u824.TextXAlignment.Left
        r3.Text = "Toggle UI"
        r3.Parent = r2_2
        local r3_2 = u859.new("TextButton")
        r3_2.Size = u821.new(0, 72, 0, 20)
        r3_2.AnchorPoint = Vector2.new(1, 0.5)
        r3_2.Position = u821.new(1, 0, 0.5, 0)
        r3_2.BackgroundColor3 = u877.CardDeep
        r3_2.BackgroundTransparency = 0.35
        r3_2.Text = ""
        r3_2.AutoButtonColor = false
        r3_2.Parent = r2_2
        local r2_3 = u859.new("UICorner")
        r2_3.CornerRadius = u822.new(0, 6)
        r2_3.Parent = r3_2
        local r2_4 = u859.new("UIStroke")
        r2_4.Color = u877.StrokeHot
        r2_4.Transparency = 0.45
        r2_4.Parent = r3_2
        local u1022 = u859.new("TextLabel")
        u1022.BackgroundTransparency = 1
        u1022.Size = u821.new(1, -6, 1, 0)
        u1022.Position = u821.new(0, 3, 0, 0)
        u1022.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", u824.FontWeight.Bold)
        u1022.TextSize = 10
        u1022.TextColor3 = u877.AccentSoft
        u1022.Parent = r3_2

        local function u1023()
            u1022.Text = (u864._config._gui.toggle_key or "Enum.KeyCode.RightControl"):gsub("Enum.KeyCode.", "")
        end

        u1023()
        u876._gui_kb = {btn = r3_2, stroke = r3_2:FindFirstChildOfClass("UIStroke"), lbl = u1022}

        r3_2.MouseButton1Click:Connect(function()
            local u1025
            local r1 = u830.InputBegan
            local u1026 = r1.Connect

            u1026 = u1026(r1, function(r0, r1)
                if r1 then
                    return
                end

                if r0.KeyCode == u824.KeyCode.Unknown then
                    return
                end

                if r0.KeyCode == u824.KeyCode.Backspace then
                    u864._config._gui.toggle_key = "Enum.KeyCode.RightControl"
                    u867:save(u796.GameId, u864._config)
                    u1023()
                    u876:bind_gui_toggle_key()
                    u1025:Disconnect()
                    return
                end

                u864._config._gui.toggle_key = tostring(r0.KeyCode)
                u867:save(u796.GameId, u864._config)
                u1023()
                u876:bind_gui_toggle_key()
                u1025:Disconnect()
            end)

            u1025 = u1026
        end)

        local r2_5 = u859.new("Frame")
        r2_5.BackgroundTransparency = 1
        r2_5.Size = u821.new(1, 0, 0, 22)
        r2_5.LayoutOrder = 2
        r2_5.Parent = r1
        local r3_3 = u859.new("TextLabel")
        r3_3.Size = u821.new(1, -50, 1, 0)
        r3_3.BackgroundTransparency = 1
        r3_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r3_3.TextSize = 11
        r3_3.TextColor3 = u877.Text
        r3_3.TextTransparency = 0.14
        r3_3.TextXAlignment = u824.TextXAlignment.Left
        r3_3.Text = "Hide When Minimized"
        r3_3.Parent = r2_5
        local u1027 = u859.new("TextButton")
        u1027.Size = u821.new(0, 36, 0, 18)
        u1027.AnchorPoint = Vector2.new(1, 0.5)
        u1027.Position = u821.new(1, 0, 0.5, 0)
        u1027.BackgroundColor3 = u820.fromRGB(8, 8, 14)
        u1027.BackgroundTransparency = 0.6
        u1027.Text = ""
        u1027.AutoButtonColor = false
        u1027.Parent = r2_5
        local r3_4 = u859.new("UICorner")
        r3_4.CornerRadius = u822.new(1, 0)
        r3_4.Parent = u1027
        local u1028 = u859.new("Frame")
        u1028.Size = u821.new(0, 9, 0, 9)
        u1028.Position = u821.new(0, 2, 0.5, 0)
        u1028.AnchorPoint = Vector2.new(0, 0.5)
        u1028.BackgroundColor3 = u877.SubText
        u1028.BorderSizePixel = 0
        u1028.Parent = u1027
        local r3_5 = u859.new("UICorner")
        r3_5.CornerRadius = u822.new(1, 0)
        r3_5.Parent = u1028
        local r3_6 = u864._config._gui.hide_minimized
        local u1029 = r3_6 == true
        r2_5.Visible = u876._device == "PC"
        u876._gui_hide_toggle = {toggle = u1027, circ = u1028}

        local function u1030(r0)
            u1029 = r0
            u864._config._gui.hide_minimized = r0
            u867:save(u796.GameId, u864._config)
            local r9 = u861.Colors
            local r13 = u820.new(math.clamp(r9.Card.R * 0.48, 0, 1), math.clamp(r9.Card.G * 0.48, 0, 1), math.clamp(r9.Card.B * 0.52, 0, 1))
            u832:Create(u1027, TweenInfo.new(0.35), {BackgroundColor3 = r0 and r9.Accent or r13, BackgroundTransparency = r0 and 0.3 or 0.6}):Play()
            local r16 = u832
            local r1 = r16.Create
            local r18 = TweenInfo.new(0.3)
            local r19 = {Position = r0 and u821.new(1, -11, 0.5, 0) or u821.new(0, 2, 0.5, 0)}

            if r0 then
                r0 = r9.Background
            end

            if not r0 then
                r0 = r9.SubText
            end

            r19.BackgroundColor3 = r0
            r1(r16, u1028, r18, r19):Play()
        end

        if r3_6 == true then
            u1030(true)
        end

        u1027.MouseButton1Click:Connect(function()
            u1030(not u1029)
        end)

        local r2_6 = u859.new("TextButton")
        r2_6.Text = ""
        r2_6.AutoButtonColor = false
        r2_6.BackgroundTransparency = 1
        r2_6.Size = u821.new(1, 0, 0, 22)
        r2_6.LayoutOrder = 3
        r2_6.Parent = r1
        local r1_2 = u859.new("TextLabel")
        r1_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r1_2.TextSize = 11
        r1_2.TextColor3 = u877.Text
        r1_2.TextTransparency = 0.16
        r1_2.Text = "Window Transparency"
        r1_2.Size = u821.new(0, 153, 0, 13)
        r1_2.Position = u821.new(0, 0, 0.05, 0)
        r1_2.BackgroundTransparency = 1
        r1_2.TextXAlignment = u824.TextXAlignment.Left
        r1_2.Parent = r2_6
        local u1031 = u859.new("Frame")
        u1031.Active = true
        u1031.AnchorPoint = Vector2.new(0.5, 1)
        u1031.BackgroundTransparency = 0.78
        u1031.Position = u821.new(0.5, 0, 0.95, 0)
        u1031.Name = "Drag"
        u1031.Size = u821.new(1, 0, 0, 4)
        u1031.BorderSizePixel = 0
        u1031.BackgroundColor3 = u877.Stroke
        u1031.Parent = r2_6
        local r3_7 = u859.new("UICorner")
        r3_7.CornerRadius = u822.new(0, 12)
        r3_7.Parent = u1031
        local u1032 = u859.new("Frame")
        u1032.AnchorPoint = Vector2.new(0, 0.5)
        u1032.BackgroundTransparency = 0.05
        u1032.Position = u821.new(0, 0, 0.5, 0)
        u1032.Name = "Fill"
        u1032.Size = u821.new(0.5, 0, 1, 0)
        u1032.BorderSizePixel = 0
        u1032.BackgroundColor3 = u877.Accent
        u1032.Parent = u1031
        local r3_8 = u859.new("UICorner")
        r3_8.CornerRadius = u822.new(0, 3)
        r3_8.Parent = u1032
        local r3_9 = u859.new("UIGradient")
        r3_9.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, u877.AccentSoft), ColorSequenceKeypoint.new(1, u877.AccentDim)})
        r3_9.Parent = u1032
        local r3_10 = u859.new("Frame")
        r3_10.AnchorPoint = Vector2.new(1, 0.5)
        r3_10.Name = "Circle"
        r3_10.Position = u821.new(1, 0, 0.5, 0)
        r3_10.Size = u821.new(0, 7, 0, 7)
        r3_10.BorderSizePixel = 0
        r3_10.BackgroundColor3 = u877.AccentSoft
        r3_10.Parent = u1032
        local r6 = u859.new("UICorner")
        r6.CornerRadius = u822.new(0, 12)
        r6.Parent = r3_10
        local u1033 = u859.new("TextLabel")
        u1033.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        u1033.TextColor3 = u877.Text
        u1033.TextTransparency = 0.2
        u1033.Name = "Value"
        u1033.Size = u821.new(0, 42, 0, 13)
        u1033.AnchorPoint = Vector2.new(1, 0)
        u1033.Position = u821.new(1, 0, 0, 0)
        u1033.BackgroundTransparency = 1
        u1033.TextXAlignment = u824.TextXAlignment.Right
        u1033.TextSize = 10
        u1033.Parent = r2_6

        u876._gui_tr = {
            drag = u1031,
            fill = u1032,
            val = u1033,
            title = r1_2,
            circle = r3_10
        }

        local function u1034(r0)
            local r1 = math.clamp(r0, 0, 1)
            u864._config._gui.bg_transparency = r1
            u867:save(u796.GameId, u864._config)

            if u876._theme_container then
                u876._theme_container.BackgroundTransparency = r1
            end

            u1032.Size = u821.new(math.clamp(r1, 0.02, 1), 0, 1, 0)
            u1033.Text = string.format("%.2f", r1)
        end

        local u1024
        u1034(u864._config._gui.bg_transparency ~= u1024 and u864._config._gui.bg_transparency or 0.04)

        local function u1035(r0)
            local r1 = u1031.AbsoluteSize.X

            if r1 < 1 then
                return
            end

            local r4 = math.clamp((r0 - u1031.AbsolutePosition.X) / r1, 0, 1)
            u1034(r4)
        end

        r2_6.MouseButton1Down:Connect(function()
            u863:disconnect("gui_tr_drag")
            u863:disconnect("gui_tr_end")
            u1035(u860.X)

            u863.gui_tr_drag = u830.InputChanged:Connect(function(r0)
                if r0.UserInputType == u824.UserInputType.MouseMovement or r0.UserInputType == u824.UserInputType.Touch then
                    u1035(r0.Position.X)
                end
            end)

            u863.gui_tr_end = u830.InputEnded:Connect(function(r0)
                if r0.UserInputType ~= u824.UserInputType.MouseButton1 and r0.UserInputType ~= u824.UserInputType.Touch then
                    return
                end

                u863:disconnect("gui_tr_drag")
                u863:disconnect("gui_tr_end")
                u867:save(u796.GameId, u864._config)
            end)
        end)

        local u1036 = {}

        local u1037 = {
            {title = "Main Color", key = "Background", flag = "_gui_col_bg"},
            {title = "Secondary", key = "Card", flag = "_gui_col_card"},
            {title = "Accent", key = "Accent", flag = "_gui_col_accent"},
            {title = "Stroke", key = "Stroke", flag = "_gui_col_stroke"},
            {title = "Text", key = "Text", flag = "_gui_col_text"},
            {title = "SubText", key = "SubText", flag = "_gui_col_sub"}
        }

        if not u864._config._gui.colors then
            u864._config._gui.colors = {}
        end

        for r2_7, r3_11 in ipairs(u1037) do
            if not u864._config._gui.colors[r3_11.key] then
                local r21, r22, r23 = u820.toHSV(u861.DefaultColors[r3_11.key])
                u864._config._gui.colors[r3_11.key] = {H = r21, S = r22, V = r23}
            end
        end

        u867:save(u796.GameId, u864._config)

        local function r20(r0, u1039, r2)
            local u1038 = {_h = 0, _s = 1, _v = 1}
            local r4 = u864._config._gui.colors[u1039]

            if r4 then
                local r9 = r4.H
                local r10 = r4.S
                r4 = r4.V
                u1038._h = r9
                u1038._s = r10
                u1038._v = r4
            end

            local r7 = u859.new("TextButton")
            r7.Size = u821.new(1, 0, 0, 20)
            r7.BackgroundTransparency = 1
            r7.Text = ""
            r7.AutoButtonColor = false
            r7.LayoutOrder = r2 * 2
            r7.Parent = u1021
            local r4_2 = u859.new("TextLabel")
            r4_2.Text = r0
            r4_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
            r4_2.TextSize = 11
            r4_2.TextColor3 = u877.Text
            r4_2.TextTransparency = 0.14
            r4_2.BackgroundTransparency = 1
            r4_2.Size = u821.new(0, 130, 1, 0)
            r4_2.TextXAlignment = u824.TextXAlignment.Left
            r4_2.Parent = r7
            local u1040 = u859.new("Frame")
            u1040.Size = u821.new(0, 44, 0, 14)
            u1040.AnchorPoint = Vector2.new(1, 0.5)
            u1040.Position = u821.new(1, 0, 0.5, 0)
            u1040.BorderSizePixel = 0
            u1040.BackgroundColor3 = u820.fromHSV(u1038._h, u1038._s, u1038._v)
            u1040.Parent = r7
            local r4_3 = u859.new("UICorner")
            r4_3.CornerRadius = u822.new(0, 5)
            r4_3.Parent = u1040
            local r4_4 = u859.new("UIStroke")
            r4_4.Color = u877.StrokeHot
            r4_4.Transparency = 0.64
            r4_4.Parent = u1040
            local u1041 = u859.new("TextLabel")
            u1041.Text = "›"
            u1041.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.Bold)
            u1041.TextSize = 14
            u1041.TextColor3 = u877.Accent
            u1041.BackgroundTransparency = 1
            u1041.Size = u821.new(0, 12, 1, 0)
            u1041.AnchorPoint = Vector2.new(1, 0.5)
            u1041.Position = u821.new(1, -50, 0.5, 0)
            u1041.Rotation = 90
            u1041.Parent = r7
            local u1042 = u859.new("Frame")
            u1042.Size = u821.new(1, 0, 0, 0)
            u1042.BackgroundTransparency = 1
            u1042.ClipsDescendants = true
            u1042.BorderSizePixel = 0
            u1042.LayoutOrder = r2 * 2 + 1
            u1042.Parent = u1021
            local u1043 = u859.new("Frame")
            u1043.Size = u821.new(1, 0, 0, 62)
            u1043.Position = u821.new(0, 0, 0, 4)
            u1043.BorderSizePixel = 0
            u1043.BackgroundColor3 = u820.fromHSV(u1038._h, 1, 1)
            u1043.ClipsDescendants = true
            u1043.Parent = u1042
            local r4_5 = u859.new("UICorner")
            r4_5.CornerRadius = u822.new(0, 7)
            r4_5.Parent = u1043
            local r4_6 = u859.new("Frame")
            r4_6.Size = u821.new(1, 0, 1, 0)
            r4_6.BackgroundColor3 = u820.new(1, 1, 1)
            r4_6.BorderSizePixel = 0
            r4_6.ZIndex = 2
            r4_6.Parent = u1043
            local r5 = u859.new("UIGradient")
            local r13 = NumberSequence.new
            local r16 = NumberSequenceKeypoint.new(0, 0)
            local r17 = NumberSequenceKeypoint.new(1, 1)
            r5.Transparency = r13({})
            r5.Parent = r4_6
            local r4_7 = u859.new("Frame")
            r4_7.Size = u821.new(1, 0, 1, 0)
            r4_7.BackgroundColor3 = u820.new(0, 0, 0)
            r4_7.BorderSizePixel = 0
            r4_7.ZIndex = 3
            r4_7.Parent = u1043
            local r5_2 = u859.new("UIGradient")
            local r13_2 = NumberSequence.new
            local r16_2 = NumberSequenceKeypoint.new(0, 1)
            local r17_2 = NumberSequenceKeypoint.new(1, 0)
            r5_2.Transparency = r13_2({})
            r5_2.Rotation = 90
            r5_2.Parent = r4_7
            local u1044 = u859.new("Frame")
            u1044.Size = u821.new(0, 12, 0, 12)
            u1044.AnchorPoint = Vector2.new(0.5, 0.5)
            u1044.BackgroundColor3 = u820.fromRGB(0, 0, 0)
            u1044.BorderSizePixel = 0
            u1044.ZIndex = 5
            u1044.Visible = false
            u1044.Position = u821.new(u1038._s, 0, 1 - u1038._v, 0)
            u1044.Parent = u1043
            local r4_8 = u859.new("UICorner")
            r4_8.CornerRadius = u822.new(1, 0)
            r4_8.Parent = u1044
            local r4_9 = u859.new("Frame")
            r4_9.Size = u821.new(0, 8, 0, 8)
            r4_9.AnchorPoint = Vector2.new(0.5, 0.5)
            r4_9.Position = u821.new(0.5, 0, 0.5, 0)
            r4_9.BackgroundColor3 = u820.new(1, 1, 1)
            r4_9.BorderSizePixel = 0
            r4_9.ZIndex = 6
            r4_9.Parent = u1044
            local r5_3 = u859.new("UICorner")
            r5_3.CornerRadius = u822.new(1, 0)
            r5_3.Parent = r4_9
            local u1045 = u859.new("Frame")
            u1045.Size = u821.new(1, 0, 0, 12)
            u1045.Position = u821.new(0, 0, 0, 72)
            u1045.BorderSizePixel = 0
            u1045.BackgroundColor3 = u820.new(1, 1, 1)
            u1045.Parent = u1042

            local r4_10 = u859.new("UICorner")
            r4_10.CornerRadius = u822.new(0, 5)
            r4_10.Parent = u1045
            local r14 = u859.new("UIGradient")

            r14.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, u820.fromHSV(0, 1, 1)),
                ColorSequenceKeypoint.new(0.167, u820.fromHSV(0.167, 1, 1)),
                ColorSequenceKeypoint.new(0.333, u820.fromHSV(0.333, 1, 1)),
                ColorSequenceKeypoint.new(0.5, u820.fromHSV(0.5, 1, 1)),
                ColorSequenceKeypoint.new(0.667, u820.fromHSV(0.667, 1, 1)),
                ColorSequenceKeypoint.new(0.833, u820.fromHSV(0.833, 1, 1)),
                ColorSequenceKeypoint.new(1, u820.fromHSV(0, 1, 1))
            })

            r14.Parent = u1045
            local u1046 = u859.new("Frame")
            u1046.Size = u821.new(0, 6, 1, 4)
            u1046.AnchorPoint = Vector2.new(0.5, 0.5)
            u1046.Position = u821.new(u1038._h, 0, 0.5, 0)
            u1046.BackgroundColor3 = u820.fromRGB(0, 0, 0)
            u1046.BorderSizePixel = 0
            u1046.ZIndex = 4
            u1046.Visible = false
            u1046.Parent = u1045
            local r4_11 = u859.new("UICorner")
            r4_11.CornerRadius = u822.new(0, 3)
            r4_11.Parent = u1046
            local r4_12 = u859.new("Frame")
            r4_12.Size = u821.new(0, 4, 1, 0)
            r4_12.AnchorPoint = Vector2.new(0.5, 0.5)
            r4_12.Position = u821.new(0.5, 0, 0.5, 0)
            r4_12.BackgroundColor3 = u820.new(1, 1, 1)
            r4_12.BorderSizePixel = 0
            r4_12.ZIndex = 5
            r4_12.Parent = u1046
            local r14_2 = u859.new("UICorner")
            r14_2.CornerRadius = u822.new(0, 2)
            r14_2.Parent = r4_12

            local function u1047()
                return u820.fromHSV(u1038._h, u1038._s, u1038._v)
            end

            local function u1048()
                u1040.BackgroundColor3 = u1047()
                u1043.BackgroundColor3 = u820.fromHSV(u1038._h, 1, 1)
                u1044.Position = u821.new(u1038._s, 0, 1 - u1038._v, 0)
                u1046.Position = u821.new(u1038._h, 0, 0.5, 0)
            end

            local function u1049()
                u864._config._gui.colors[u1039] = {H = u1038._h, S = u1038._s, V = u1038._v}
                local r7 = u1047()
                u861.Colors[u1039] = r7

                if u1039 == "Stroke" then
                    u861.Colors.StrokeHot = u820.new(math.clamp(r7.R * 1.2 + 0.05, 0, 1), math.clamp(r7.G * 1.2 + 0.05, 0, 1), math.clamp(r7.B * 1.22 + 0.06, 0, 1))
                end

                if u1039 == "Accent" then
                    u861.Colors.AccentSoft = u820.new(math.clamp(r7.R * 0.55 + 0.42, 0, 1), math.clamp(r7.G * 0.55 + 0.42, 0, 1), math.clamp(r7.B * 0.58 + 0.45, 0, 1))
                    u861.Colors.AccentDim = u820.new(math.clamp(r7.R * 0.42, 0, 1), math.clamp(r7.G * 0.42, 0, 1), math.clamp(r7.B * 0.48, 0, 1))
                    u861.Colors.AccentGlow = r7
                end

                if u1039 == "Card" then
                    u861.Colors.CardDeep = u820.new(r7.R * 0.78, r7.G * 0.78, r7.B * 0.8)
                end

                u867:save(u796.GameId, u864._config)
            end

            local u1050 = 0
            local u1051 = false
            local u1052 = false

            u1043.InputBegan:Connect(function(r0)
                if r0.UserInputType == u824.UserInputType.MouseButton1 then
                    u1051 = true
                    u864._blocking_drag = true
                end
            end)

            u1045.InputBegan:Connect(function(r0)
                if r0.UserInputType == u824.UserInputType.MouseButton1 then
                    u1052 = true
                    u864._blocking_drag = true
                end
            end)

            u863["gcp_m_" .. u1039] = u830.InputChanged:Connect(function(r0)
                if r0.UserInputType ~= u824.UserInputType.MouseMovement then
                    return
                end

                local r2 = u817()

                if u1051 then
                    u1038._s = math.clamp((r0.Position.X - u1043.AbsolutePosition.X) / u1043.AbsoluteSize.X, 0, 1)
                    u1038._v = 1 - math.clamp((r0.Position.Y - u1043.AbsolutePosition.Y) / u1043.AbsoluteSize.Y, 0, 1)
                    u1048()
                    u1049()

                    if r2 - u1050 >= 0.08 then
                        u1050 = r2
                        u876:apply_gui_theme_fast()
                    end
                end

                if not u1052 then
                    return
                end

                u1038._h = math.clamp((r0.Position.X - u1045.AbsolutePosition.X) / u1045.AbsoluteSize.X, 0, 1)
                u1048()
                u1049()

                if r2 - u1050 >= 0.08 then
                    u1050 = r2
                    u876:apply_gui_theme_fast()
                end
            end)

            u863["gcp_e_" .. u1039] = u830.InputEnded:Connect(function(r0)
                if r0.UserInputType ~= u824.UserInputType.MouseButton1 then
                    return
                end

                if u1051 or u1052 then
                    u1051 = false
                    u1052 = false
                    u864._blocking_drag = false
                    u1049()
                    u876:apply_gui_theme()
                end
            end)

            local u1053 = false

            r7.MouseButton1Click:Connect(function()
                u1053 = not u1053
                u1044.Visible = u1053
                u1046.Visible = u1053

                u832:Create(u1042, TweenInfo.new(0.35, u824.EasingStyle.Quint, u824.EasingDirection.Out), {
                    Size = u821.new(1, 0, 0, u1053 and 90 or 0)
                }):Play()

                u832:Create(u1041, TweenInfo.new(0.3), {Rotation = u1053 and -90 or 90}):Play()
            end)

            u1048()

            function u1038.updateVisuals(r0)
                u1040.BackgroundColor3 = u1047()
                u1043.BackgroundColor3 = u820.fromHSV(u1038._h, 1, 1)
                u1044.Position = u821.new(u1038._s, 0, 1 - u1038._v, 0)
                u1046.Position = u821.new(u1038._h, 0, 0.5, 0)
            end

            function u1038.SetFromColor(r0, r1)
                local r4 = u1038
                local r8 = u1038
                local r305, r306, r307 = u820.toHSV(r1)
                u1038._h = r305
                r4._s = r306
                r8._v = r307
                u1038:updateVisuals()
                u864._config._gui.colors[u1039] = {H = u1038._h, S = u1038._s, V = u1038._v}
                u861.Colors[u1039] = r1

                if u1039 == "Stroke" then
                    u861.Colors.StrokeHot = u820.new(math.clamp(r1.R * 1.2 + 0.05, 0, 1), math.clamp(r1.G * 1.2 + 0.05, 0, 1), math.clamp(r1.B * 1.22 + 0.06, 0, 1))
                end

                if u1039 == "Accent" then
                    u861.Colors.AccentSoft = u820.new(math.clamp(r1.R * 0.55 + 0.42, 0, 1), math.clamp(r1.G * 0.55 + 0.42, 0, 1), math.clamp(r1.B * 0.58 + 0.45, 0, 1))
                    u861.Colors.AccentDim = u820.new(math.clamp(r1.R * 0.42, 0, 1), math.clamp(r1.G * 0.42, 0, 1), math.clamp(r1.B * 0.48, 0, 1))
                    u861.Colors.AccentGlow = r1
                end

                if u1039 == "Card" then
                    u861.Colors.CardDeep = u820.new(r1.R * 0.78, r1.G * 0.78, r1.B * 0.8)
                end
            end

            u1036[u1039] = u1038
        end

        for r7, r8 in ipairs(u1037) do
            r20(r8.title, r8.key, r7)
        end

        local r2_8 = u859.new("TextButton")
        r2_8.Name = "resetBtn"
        r2_8.Size = u821.new(1, 0, 0, 32)
        r2_8.BackgroundColor3 = u877.CardDeep
        r2_8.BackgroundTransparency = 0.25
        r2_8.Text = ""
        r2_8.AutoButtonColor = false
        r2_8.LayoutOrder = 900
        r2_8.Parent = u1021
        local r1_3 = u859.new("UICorner")
        r1_3.CornerRadius = u822.new(0, 8)
        r1_3.Parent = r2_8
        local r1_4 = u859.new("UIStroke")
        r1_4.Color = u877.StrokeHot
        r1_4.Transparency = 0.4
        r1_4.Parent = r2_8
        local r3_12 = u859.new("TextLabel")
        r3_12.BackgroundTransparency = 1
        r3_12.Size = u821.new(1, 0, 1, 0)
        r3_12.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", u824.FontWeight.SemiBold)
        r3_12.TextSize = 11
        r3_12.TextColor3 = u877.AccentSoft
        r3_12.Text = "Restore Default Theme"
        r3_12.Parent = r2_8
        u876._gui_reset_btn = {btn = r2_8, stroke = r2_8:FindFirstChildOfClass("UIStroke"), lbl = r3_12}

        r2_8.MouseButton1Click:Connect(function()
            u864._config._gui.bg_transparency = 0.04
            u864._config._gui.colors = {}

            for r1, r2 in pairs(u861.DefaultColors) do
                local r3, r4, r5 = u820.toHSV(r2)
                u864._config._gui.colors[r1] = {H = r3, S = r4, V = r5}
                u861.Colors[r1] = r2
            end

            local r7 = u861.Colors
            local r6 = r7.Stroke
            r7.StrokeHot = u820.new(math.clamp(r6.R * 1.2 + 0.05, 0, 1), math.clamp(r6.G * 1.2 + 0.05, 0, 1), math.clamp(r6.B * 1.22 + 0.06, 0, 1))
            local r8 = r7.Accent
            r7.AccentSoft = u820.new(math.clamp(r8.R * 0.55 + 0.42, 0, 1), math.clamp(r8.G * 0.55 + 0.42, 0, 1), math.clamp(r8.B * 0.58 + 0.45, 0, 1))
            r7.AccentDim = u820.new(math.clamp(r8.R * 0.42, 0, 1), math.clamp(r8.G * 0.42, 0, 1), math.clamp(r8.B * 0.48, 0, 1))
            r7.AccentGlow = r8
            local r0 = r7.Card
            r7.CardDeep = u820.new(r0.R * 0.78, r0.G * 0.78, r0.B * 0.8)
            u867:save(u796.GameId, u864._config)
            u1034(0.04)

            for r4_2, r5_2 in ipairs(u1037) do
                if u1036[r5_2.key] then
                    u1036[r5_2.key]:SetFromColor(u861.DefaultColors[r5_2.key])
                end
            end

            u876:apply_gui_theme()
        end)

        u876._gui_sections = {u1017, r12}
    end

    task.defer(function()
        u876:get_device()
        u1016()
        u876:apply_gui_theme()
    end)

    u876:bind_gui_toggle_key()

    u878.Container.Handler.Minimize.MouseButton1Click:Connect(function()
        if not u878.Enabled then
            u878.Enabled = true
        end

        u876._ui_open = not u876._ui_open
        u876:change_visiblity(u876._ui_open)
    end)

    return u876
end

--============================================================
-- ALLUSIVE UI ONLY EXPORT
-- Gameplay code after the UI library has been removed.
-- Internal variable names are intentionally preserved so the
-- original library logic remains unchanged.
--============================================================

return u864

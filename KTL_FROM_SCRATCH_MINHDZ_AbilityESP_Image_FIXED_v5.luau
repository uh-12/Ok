-- Deobfuscated By Ron Luraph
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
        u798()._KTLObfuscationRegistry = {GuiRoot = r0, GlobalKey = u842, MarkerAttribute = u843}
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

    local u854 = u798()._KTLObfuscationRegistry

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
        Background = u820.fromRGB(5, 5, 5),
        Card = u820.fromRGB(24, 25, 24),
        CardDeep = u820.fromRGB(12, 12, 12),
        Stroke = u820.fromRGB(105, 105, 105),
        StrokeHot = u820.fromRGB(225, 225, 225),
        Accent = u820.fromRGB(255, 255, 255),
        AccentDim = u820.fromRGB(125, 125, 125),
        AccentSoft = u820.fromRGB(230, 230, 230),
        AccentGlow = u820.fromRGB(255, 255, 255),
        Text = u820.fromRGB(255, 255, 255),
        SubText = u820.fromRGB(175, 175, 175),
        NotifyBg = u820.fromRGB(16, 16, 16),
        Danger = u820.fromRGB(220, 220, 220),
        Success = u820.fromRGB(230, 230, 230)
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

if not isfolder("KTL") then
    makefolder("KTL")
end

local u867 = {}
u867.__index = u867

function u867.save(r0, u868, u869)
    local function r4()
        writefile("KTL/" .. u868 .. ".json", u833:JSONEncode(u869))
    end

    local r3, r4_2 = pcall(r4)

    if not r3 then
        u813("failed to save config", r4_2)
    end
end

function u867.load(u871, u870, u872)
    local function r4()
        if not isfile("KTL/" .. u870 .. ".json") then
            u871:save(u870, u872)
            return
        end

        local r4 = readfile("KTL/" .. u870 .. ".json")

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
    __S[3].bg_transparency = 0.35
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
    u875.BackgroundColor3 = u820.fromRGB(10, 10, 10)
    u875.BackgroundTransparency = 0.18
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
    r2_3.BackgroundColor3 = u820.fromRGB(255, 255, 255)
    r2_3.BackgroundTransparency = 0.92
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
    r2_4.BackgroundColor3 = u820.fromRGB(255, 255, 255)
    r2_4.BackgroundTransparency = 0.82
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
    r3_4.ImageColor3 = u820.fromRGB(255, 255, 255)
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
    r20.BackgroundColor3 = u820.fromRGB(255, 255, 255)
    r20.BackgroundTransparency = 0.25
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

function u864.notify(title, text, success, duration)
    u864.SendNotification({
        title = tostring(title or "KTL"),
        text = tostring(text or ""),
        duration = tonumber(duration) or 3.5,
        icon = success and "check" or "info",
        iconColor = success and u861.Colors.Accent or u861.Colors.SubText
    })
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

    -- KTL monochrome theme overrides previously saved colors
    u861.Colors.Background = u820.fromRGB(5, 5, 5)
    u861.Colors.Card = u820.fromRGB(24, 25, 24)
    u861.Colors.CardDeep = u820.fromRGB(12, 12, 12)
    u861.Colors.Stroke = u820.fromRGB(105, 105, 105)
    u861.Colors.StrokeHot = u820.fromRGB(225, 225, 225)
    u861.Colors.Accent = u820.fromRGB(255, 255, 255)
    u861.Colors.AccentDim = u820.fromRGB(125, 125, 125)
    u861.Colors.AccentSoft = u820.fromRGB(230, 230, 230)
    u861.Colors.AccentGlow = u820.fromRGB(255, 255, 255)
    u861.Colors.Text = u820.fromRGB(255, 255, 255)
    u861.Colors.SubText = u820.fromRGB(175, 175, 175)
    u861.Colors.NotifyBg = u820.fromRGB(16, 16, 16)
    u861.Colors.Danger = u820.fromRGB(220, 220, 220)
    u861.Colors.Success = u820.fromRGB(230, 230, 230)

    local u877 = u861.Colors
    local u878 = u857()
    local u879 = r4.new("Frame")
    u879.ClipsDescendants = true
    u879.AnchorPoint = Vector2.new(0.5, 0.5)
    u879.Name = "Container"
    u879.BackgroundTransparency = 0.35
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
    u880.Size = u821.new(0, 698, 0, 495)
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
    u884.Size = u821.new(0, 129, 0, 456)
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

    r32(u821.new(0.23, 0, 0.12, 0), u821.new(0, 466, 0, 1))
    r32(u821.new(0, 0, 0.12, 0), u821.new(0, 157, 0, 1))
    local r34 = r4.new("Frame")
    r34.BackgroundTransparency = 0.48
    r34.BorderSizePixel = 0
    r34.BackgroundColor3 = u877.Stroke
    r34.Position = u821.new(0.225, 0, 0.13, 0)
    r34.Size = u821.new(0, 1, 0.80, 0)
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
    r47.Text = "KTL"
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
    u885.Position = u821.new(0.025, 0, 0.045, 0)
    u885.Name = "Icon"
    u885.Size = u821.new(0, 24, 0, 24)
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
    r81.Position = u821.new(0.0201, 0, 0.0192, 0)
    r81.Size = u821.new(0, 24, 0, 24)
    r81.BorderSizePixel = 0
    r81.Parent = u880

    -- Animated minimize/open icon (GIF-like frame loop)
    local KTL_MinimizeFrames = {
        "rbxassetid://91830926982086",
        "rbxassetid://103273659544841",
        "rbxassetid://139859333008059",
        "rbxassetid://115074856427531",
        "rbxassetid://77352356611275",
        "rbxassetid://82206912146933"
    }

    u885.Size = u821.new(0, 24, 0, 24)
    u885.Position = u821.new(0.0201, 0, 0.045, 0)
    u885.ScaleType = u824.ScaleType.Fit
    u885.ImageTransparency = 0

    task.spawn(function()
        local frameIndex = 1
        while u878 and u878.Parent and u885 and u885.Parent do
            u885.Image = KTL_MinimizeFrames[frameIndex]
            frameIndex = (frameIndex % #KTL_MinimizeFrames) + 1
            task.wait(0.12)
        end
    end)

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
            u879.BackgroundTransparency = 0.35
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
        if r1 == "Settings" then
            u897.Visible = false
        end

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
            ColorSequenceKeypoint.new(0.65, u820.fromRGB(165, 165, 165)),
            ColorSequenceKeypoint.new(1, u820.fromRGB(65, 65, 65))
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
            u909.BackgroundColor3 = u820.fromRGB(8, 8, 8)
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
                u913 = true
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
                        BackgroundColor3 = u820.fromRGB(8, 8, 8),
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
                local ok_callback, callback_error = pcall(u903.callback, r0._state)
                if not ok_callback then
                    u864.SendNotification({title = u903.title or "KTL", text = "Error: " .. tostring(callback_error), icon = "x", iconColor = u877.Danger, duration = 3.5})
                end

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
                pcall(u903.callback, u901._state)
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
                u926.TextColor3 = u820.fromRGB(245, 245, 245)
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
                        if type(u920.callback) == "function" then
                            u920.callback(r4)
                        end
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
                        if type(u945.callback) == "function" then
                            u945.callback({unpack(u950)})
                        end

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
                        if type(u945.callback) == "function" then
                            u945.callback(r1)
                        end

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
                        if type(u945.callback) == "function" then
                            u945.callback({unpack(u950)})
                        end
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
                    if type(u945.callback) == "function" then
                        u945.callback(u945.options[1])
                    end
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
                    if type(u972.callback) == "function" then
                    u972.callback(r0._state)
                end
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
                    r3.TextColor3 = u820.fromRGB(245, 245, 245)
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
                    r3_3.BackgroundColor3 = u820.fromRGB(245, 245, 245)
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
                u982.BackgroundColor3 = u820.fromRGB(22, 22, 22)
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
                        if type(u981.callback) == "function" then
                            u981.callback(r1)
                        end
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
                        BackgroundColor3 = u820.fromRGB(20, 20, 20),
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
                        BackgroundColor3 = u820.fromRGB(20, 20, 20),
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

                local draggingSV, draggingHue = false, false
                local activeInput = nil

                local function updateFromPosition(position, isHue)
                    if isHue then
                        u993._h = math.clamp((position.X - u1001.AbsolutePosition.X) / math.max(u1001.AbsoluteSize.X, 1), 0, 1)
                    else
                        u993._s = math.clamp((position.X - u999.AbsolutePosition.X) / math.max(u999.AbsoluteSize.X, 1), 0, 1)
                        u993._v = 1 - math.clamp((position.Y - u999.AbsolutePosition.Y) / math.max(u999.AbsoluteSize.Y, 1), 0, 1)
                    end
                    u1004()
                    if u994.callback then u994.callback(u1003()) end
                end

                local function beginDrag(input, hue)
                    if input.UserInputType ~= u824.UserInputType.MouseButton1
                        and input.UserInputType ~= u824.UserInputType.Touch then return end
                    draggingSV, draggingHue = not hue, hue
                    activeInput = input.UserInputType == u824.UserInputType.Touch and input or nil
                    u864._blocking_drag = true
                    updateFromPosition(input.Position, hue)
                end

                u999.Active = true
                u1001.Active = true
                u999.InputBegan:Connect(function(input) beginDrag(input, false) end)
                u1001.InputBegan:Connect(function(input) beginDrag(input, true) end)

                u863["cp_moved_" .. tostring(u994.flag)] = u830.InputChanged:Connect(function(input)
                    if not draggingSV and not draggingHue then return end
                    if activeInput then
                        if input ~= activeInput then return end
                    elseif input.UserInputType ~= u824.UserInputType.MouseMovement then
                        return
                    end
                    updateFromPosition(input.Position, draggingHue)
                end)

                u863["cp_ended_" .. tostring(u994.flag)] = u830.InputEnded:Connect(function(input)
                    if not draggingSV and not draggingHue then return end
                    if activeInput then
                        if input ~= activeInput then return end
                    elseif input.UserInputType ~= u824.UserInputType.MouseButton1 then
                        return
                    end
                    draggingSV, draggingHue, activeInput = false, false, nil
                    u864._blocking_drag = false
                    u1005()
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
        u1027.BackgroundColor3 = u820.fromRGB(8, 8, 8)
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
        -- Settings tab removed
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

__S[84] = u864.new()
__S[84]:load()
local u1054 = u799(u796:GetService("Players"))
local u1055 = u799(u796:GetService("RunService"))
local u1056 = u799(u796:GetService("UserInputService"))
local u1057 = u799(u796:GetService("ReplicatedStorage"))
local u1058 = u799(u796:GetService("Workspace"))
local u1059 = u799(u796:GetService("Stats"))
local u1060 = u850.new("VirtualInputManager")
u799(u796:GetService("InsertService"))
local u1061 = u1054.LocalPlayer
local u1062 = u1058.CurrentCamera
local u1063 = u1055.Heartbeat
local u1064 = u1055.RenderStepped
local u1065 = u1055.PreSimulation
u797 = u1058
local u1066 = u829.clock
local u1067 = u797:FindFirstChild("Runtime")
local u1068 = u796.PlaceId == 0
local u1069 = {}

local u1070 = {
    config = {
        auto_parry = false,
        accuracy = 75,
        randomize_accuracy = false,
        random_accuracy_min = 1,
        random_accuracy_max = 100,
        curve_mode = 2,
        parry_mode = "Remote",
        is_mobile = u1056.TouchEnabled and not u1056.MouseEnabled,
        target_player_enabled = false,
        target_player_name = nil,
        auto_curve = false,
        auto_curve_sensitivity = 50,
        kill_pre_click = false,
        kill_pre_click_range = 30,
        kill_pre_click_speed = 1
    },
    detections = {
        infinity = false,
        deathslash = false,
        tornado_time = 0,
        slashesoffury = false,
        forcefield = false,
        timehole = false,
        dribble = false
    },
    state = {
        grab_track = nil,
        ball_tracking = {},
        parried = false,
        infinity_active = false,
        deathslash_active = false,
        slashesoffury_active = false,
        forcefield_active = false,
        timehole_active = false,
        last_dribble_use = 0,
        last_dribble_success = 0
    },
    curve_detection = {
        per_ball = {},
        curve_time = 0,
        velocity_history = {},
        dot_histories = {}
    },
    cache = {
        ping = 50,
        ping_t = 0,
        emotes_shared = nil,
        trove_module = nil
    },
    parry_cooldown = {
        failed_at = 0,
        duration = 2,
        last_parrying = nil,
        conn = nil,
        pending_id = 0,
        success_window = 0.75
    },
    triggerbot = {enabled = false, is_parrying = false, connection = nil},
    spam = {
        manual_enabled = false,
        auto_enabled = false,
        parries = 0,
        threshold = 1.5,
        sensitivity_multiplier = 1,
        connection_manual = nil,
        connection_auto = nil,
        animation_fix_manual = false,
        animation_fix_auto = false,
        manual_mode = "Remote",
        auto_mode = "Remote",
        remote_list = {},
        remote_list_dirty = true,
        auto_decay_at = {},
        ping_cache = 0,
        ping_cache_t = 0,
        balls_ref = nil,
        alive_ref = nil
    },
    ability = {cooldown_protection = false, auto_ability = false},
    mobile_guis = {triggerbot = nil, manual_spam = nil},
    ability_esp = {
        active = false,
        drawings = {},
        connection = nil,
        mode = "Text",
        show_name = false,
        name_mode = "Display Name",
        name_size = 18,
        name_color = u820.fromRGB(255, 255, 255),
        ability_size = 16,
        ability_color = u820.fromRGB(120, 200, 255),
        show_cd = true,
        cd_size = 15,
        cd_color = u820.fromRGB(180, 180, 180),
        show_timer = true,
        active_size = 15,
        active_color = u820.fromRGB(255, 200, 80)
    },
    ball_velocity = {
        active = false,
        gui = nil,
        peak = {},
        connection = nil
    },
    ball_indicator = {
        active = false,
        gui = nil,
        position = Vector2.new(0, 0),
        rotation = 0,
        connection = nil,
        size = u1056.TouchEnabled and not u1056.MouseEnabled and 30 or 40,
        distance = u1056.TouchEnabled and not u1056.MouseEnabled and 70 or 90
    },
    no_render = {active = false, connection = nil},
    plushies = {
        active = false,
        active_types = {},
        folder = nil,
        connection = nil,
        loaded_models = {},
        models = {
            Reimu = "rbxassetid://17657672380",
            Youmou = "rbxassetid://13242826151",
            Shion = "rbxassetid://12124164278",
            Yuuka = "rbxassetid://12181667428",
            Flandre = "rbxassetid://12136125365",
            Ayanami = "rbxassetid://11965563704",
            Padoru = "rbxassetid://11905337091"
        },
        scales = {
            Reimu = 1.5,
            Youmou = 2.3,
            Shion = 2.3,
            Yuuka = 1.5,
            Flandre = 3.3,
            Ayanami = 1.5,
            Padoru = 1.5
        },
        rotations = {
            Reimu = u819.Angles(0, u827.rad(0), 0),
            Youmou = u819.Angles(0, u827.rad(-90), 0),
            Shion = u819.Angles(u827.rad(110), 0, u827.rad(90)),
            Yuuka = u819.Angles(u827.rad(-90), u827.rad(180), 0),
            Flandre = u819.Angles(0, u827.rad(-40), 0),
            Ayanami = u819.Angles(0, 0, 0),
            Padoru = u819.Angles(0, 0, 0)
        },
        positions = {
            u818.new(2.5, 2, 0),
            u818.new(-2.5, 2, 0),
            u818.new(0, 4, 2.5),
            u818.new(0, 4, -2.5),
            u818.new(2.5, 2, 2.5),
            u818.new(-2.5, 2, 2.5),
            u818.new(2.5, 2, -2.5)
        }
    },
    remote = {},
    remotes = {hellhook = nil},
    animation = {},
    ball = {},
    player = {},
    curve = {},
    parry = {},
    sword_changer = {
        original = {model = nil, saved = false},
        model_cache = {},
        swords_controller = nil,
        parry_func = nil,
        loaded = false,
        enabled = false,
        model = "",
        animations = "",
        fx = "",
        slash_name = "SlashEffect",
        update = nil
    },
    avatar_changer = {
        applying = false,
        applied_id = nil,
        cache = {},
        original_desc = nil,
        enabled = false,
        target = "",
        respawn_token = 0,
        expected_accessories = 0
    },
    emotes = {
        storage = {},
        current = nil,
        trove = nil,
        enabled = false,
        auto_stop = false,
        paused = false,
        _replay_t = 0,
        _loop_t = 0,
        connection = nil
    },
    avatar = {
        korblox_enabled = false,
        headless_enabled = false,
        korblox_conn = nil,
        headless_conn = nil
    },
    dribble_detection = {
        active = false,
        phase = "Idle",
        ball = nil,
        fired_at = 0,
        seen_return = {},
        connection = nil
    },
    dribble_parry = {
        enabled = false,
        delay = 0,
        pending = {}
    },
    parry_visualizer = {
        active = false,
        color = u820.fromRGB(255, 255, 255),
        parts = {},
        connection = nil,
        char_conn = nil,
        sphere = nil,
        weld = nil
    },
    parry_hits = {active = false, color = u820.fromRGB(255, 255, 255), parts = {}},
    player_mods = {
        fov_enabled = false,
        fov = 70,
        speed_enabled = false,
        speed = 16,
        gravity_enabled = false,
        gravity = 196.2,
        jump_power_enabled = false,
        jump_power = 50,
        infinite_jump_enabled = false,
        infinite_jump_conn = nil,
        speed_conn = nil,
        jump_conn = nil
    },
    ball_trail = {
        active = false,
        color = u820.fromRGB(0, 255, 255),
        num_trails = 8,
        attachments = {},
        connection = nil
    },
    orbit_ball = {
        active = false,
        speed = 50,
        height = 5,
        distance = 15,
        angle = 0,
        connection = nil
    },
    winstreak = {
        enabled = false,
        streak = "1",
        conn = nil,
        enabled_conn = nil,
        char_conn = nil,
        original_text = nil,
        original_icon = nil,
        original_enabled = nil
    },
    custom_win = {
        enabled = false,
        win_message = "KTL",
        kill_message = "KTL",
        connections = {}
    },
    immortal = {
        config = {
            radius = 25,
            height = 30,
            angles = 360,
            visualizer_enabled = false,
            visualizer_color = u820.fromRGB(255, 0, 0)
        },
        state = {
            enabled = false,
            notify = false,
            connections = {},
            cache = {
                character = nil,
                hrp = nil,
                head = nil,
                alive = nil,
                original_cframe = nil,
                original_velocity = nil
            },
            visualizer = {parts = {}, folder = nil}
        },
        constants = {empty_cframe = u819.new(), velocity = u818.new(1, 1, 1)}
    },
    staff_detection = {mode = "Notify"},
    slashesoffury_detection = {max_parries = 36, parry_delay = 0.05},
    phantom = {
        enabled = false,
        mode = "Ability",
        range = 130,
        active = false
    }
}

__S[3] = function()
    local r4 = u1061.Character

    if r4 == u1070.immortal.state.cache.character then
        return
    end

    u1070.immortal.state.cache.character = r4

    if r4 then
        u1070.immortal.state.cache.hrp = r4:FindFirstChild("HumanoidRootPart")
        u1070.immortal.state.cache.head = r4:FindFirstChild("Head")
        u1070.immortal.state.cache.alive = u797:FindFirstChild("Alive")
    else
        u1070.immortal.state.cache.hrp = nil
        u1070.immortal.state.cache.head = nil
    end
end

u1070.immortal.update_cache = __S[3]

__S[3] = function()
    return u1070.immortal.state.cache.alive and u1070.immortal.state.cache.character and u1070.immortal.state.cache.character.Parent == u1070.immortal.state.cache.alive
end

u1070.immortal.is_in_alive = __S[3]

__S[3] = function()
    if not u1070.immortal.state.cache.hrp then
        return u819.new()
    end

    local r3 = u1070.immortal.state.cache.hrp
    local r4 = r3.Position
    local r0 = (nil)(math.random(0, u1070.immortal.config.angles))
    local r5 = u1070.immortal.config.radius
    local r2 = math.floor(u817() * 11.9) % 2 == 0 and 0 or u1070.immortal.config.height
    local r1 = r4.X + math.cos(r0) * r5
    r2 = r4.Y - r3.Size.Y * 0.5 + 5 + r2
    local r3_2 = r4.Z + math.sin(r0) * r5
    return u819.new(r1, r2, r3_2)
end

u1070.immortal.get_random_position = __S[3]

__S[3] = function()
    if u1070.immortal.state.visualizer.folder then
        u1070.immortal.state.visualizer.folder:Destroy()
    end

    local r0 = u850.new("Folder")
    r0.Name = "ImmortalVisualizer"
    r0.Parent = u797
    u1070.immortal.state.visualizer.folder = r0
end

u1070.immortal.create_visualizer = __S[3]

__S[3] = function(r0)
    if not u1070.immortal.config.visualizer_enabled or not u1070.immortal.state.visualizer.folder then
        return
    end

    for r2, r3 in ipairs(u1070.immortal.state.visualizer.parts) do
        if r3 and r3.Parent then
            r3:Destroy()
        end
    end

    u1070.immortal.state.visualizer.parts = {}
    local r2_2 = u850.new("Part")
    r2_2.Size = Vector3.new(2, 0.5, 2)
    r2_2.CFrame = r0
    r2_2.Anchored = true
    r2_2.CanCollide = false
    r2_2.Material = u824.Material.Neon
    r2_2.Color = u1070.immortal.config.visualizer_color
    r2_2.Transparency = 0.5
    r2_2.Parent = u1070.immortal.state.visualizer.folder
    table.insert(u1070.immortal.state.visualizer.parts, r2_2)
    u796:GetService("Debris"):AddItem(r2_2, 0.1)
end

u1070.immortal.update_visualizer = __S[3]

__S[3] = function()
    if u1070.immortal.state.visualizer.folder then
        u1070.immortal.state.visualizer.folder:Destroy()
        u1070.immortal.state.visualizer.folder = nil
    end

    u1070.immortal.state.visualizer.parts = {}
end

u1070.immortal.destroy_visualizer = __S[3]

__S[6] = function()
    u1070.immortal.update_cache()

    if not u1070.immortal.state.enabled or not u1070.immortal.state.cache.hrp or not u1070.immortal.is_in_alive() then
        return
    end

    local v1 = u1070.immortal.state.cache.hrp
    u1070.immortal.state.cache.original_cframe = v1.CFrame
    u1070.immortal.state.cache.original_velocity = v1.AssemblyLinearVelocity
    local v2 = u1070.immortal.get_random_position()
    v1.CFrame = v2
    v1.AssemblyLinearVelocity = u1070.immortal.constants.velocity

    if u1070.immortal.config.visualizer_enabled then
        u1070.immortal.update_visualizer(v2)
    end

    u1064:Wait()
    v1.CFrame = u1070.immortal.state.cache.original_cframe
    v1.AssemblyLinearVelocity = u1070.immortal.state.cache.original_velocity
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.immortal.perform_desync = __S[6]

__S[3] = function()
    u1070.immortal.state.cache.character = nil
    u1070.immortal.state.cache.hrp = nil

    u1070.immortal.state.cache.head = nil
    u1070.immortal.state.cache.alive = nil
    u1070.immortal.state.cache.original_cframe = nil
    u1070.immortal.state.cache.original_velocity = nil
end

u1070.immortal.reset_cache = __S[3]

__S[3] = function()
    if u1070.immortal.state.enabled then
        return
    end

    u1070.immortal.state.enabled = true

    if u1070.immortal.config.visualizer_enabled then
        u1070.immortal.create_visualizer()
    end

    if not u1070.immortal.state.connections.heartbeat then
        u1070.immortal.state.connections.heartbeat = u1063:Connect(u1070.immortal.perform_desync)
    end
end

u1070.immortal.start = __S[3]

__S[3] = function()
    if not u1070.immortal.state.enabled then
        return
    end

    u1070.immortal.state.enabled = false

    if u1070.immortal.state.connections.heartbeat then
        u1070.immortal.state.connections.heartbeat:Disconnect()
        u1070.immortal.state.connections.heartbeat = nil
    end

    u1070.immortal.destroy_visualizer()
    u1070.immortal.reset_cache()
end

u1070.immortal.stop = __S[3]

u1061.CharacterAdded:Connect(function(r0)
    if not u1070.immortal.state.enabled then
        return
    end

    task.wait(1)
    u1070.immortal.reset_cache()

    if u1070.immortal.state.connections.heartbeat then
        u1070.immortal.state.connections.heartbeat:Disconnect()
    end

    u1070.immortal.state.connections.heartbeat = u1063:Connect(u1070.immortal.perform_desync)

    if u1070.immortal.config.visualizer_enabled then
        u1070.immortal.create_visualizer()
    end
end)

local u1071

__S[3] = function(v1, v2)
    if not u1070.immortal.state.enabled or (u805()) or v2 ~= "CFrame" or not u1070.immortal.state.cache.hrp or not u1070.immortal.is_in_alive() then
        return u1071(v1, v2)
    end

    if v1 == u1070.immortal.state.cache.hrp then
        return u1070.immortal.state.cache.original_cframe or u1070.immortal.constants.empty_cframe
    elseif v1 == u1070.immortal.state.cache.head and u1070.immortal.state.cache.original_cframe then
        local v3 = u818.new(0, u1070.immortal.state.cache.hrp.Size.Y * 0.5 + 0.5, 0)
        return u1070.immortal.state.cache.original_cframe + v3
    end

    return u1071(v1, v2)
end --[[ LPH_NO_VIRTUALIZE ]]

u1071 = __S[10](u796, "__index", __S[11](__S[3]))

__S[3] = function()
    local r0 = u1057:FindFirstChild("Misc")

    if not r0 then
        return
    end

    local r4 = r0:FindFirstChild("Emotes")

    if not r4 then
        return
    end

    local r292 = r4:GetChildren()

    for r1, r2 in pairs(r292) do
        if r2:IsA("Animation") and r2:GetAttribute("EmoteName") then
            local r3 = r2:GetAttribute("EmoteName")
            u1070.emotes.storage[r3] = r2
        end
    end
end

u1070.emotes.load_animations = __S[3]

__S[3] = function()
    local r3 = {}

    for r1, r2 in pairs(u1070.emotes.storage) do
        table.insert(r3, r1)
    end

    table.sort(r3)
    return r3
end

u1070.emotes.get_emotes_list = __S[3]

__S[6] = function()
    if u1070.cache.emotes_shared ~= nil then
        return u1070.cache.emotes_shared or nil
    end

    local v1 = u1057:FindFirstChild("Shared")
    local v2 = v1 and (v1:FindFirstChild("EmotesShared"))

    if not v2 then
        u1070.cache.emotes_shared = false
        return nil
    end

    v1 = getthreadidentity()
    setthreadidentity(6)
    local v3, v4 = u808(require, v2)
    setthreadidentity(v1)

    if v3 and u809(v4) == "table" and u809(v4.Play) == "function" then
        u1070.cache.emotes_shared = v4
    end

    if not (v3 and u809(v4) == "table" and u809(v4.Play) == "function") then
        u1070.cache.emotes_shared = false
    end

    return u1070.cache.emotes_shared or nil
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.emotes.get_shared = __S[6]

__S[6] = function()
    if u1070.cache.trove_module ~= nil then
        return u1070.cache.trove_module or nil
    end

    local v1 = u1057:FindFirstChild("Packages")
    local v2 = v1 and (v1:FindFirstChild("Trove"))

    if not v2 then
        u1070.cache.trove_module = false
        return nil
    end

    local v3, v4 = u808(require, v2)

    if v3 and u809(v4) == "table" and u809(v4.new) == "function" then
        u1070.cache.trove_module = v4
    end

    if not (v3 and u809(v4) == "table" and u809(v4.new) == "function") then
        u1070.cache.trove_module = false
    end

    return u1070.cache.trove_module or nil
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.emotes.get_trove_module = __S[6]

__S[3] = function(r0)
    local u1072 = u1070.emotes

    if u1072.trove then
        pcall(function()
            u1072.trove:Destroy()
        end)

        u1072.trove = nil
    end

    if not r0 then
        u1072.current = nil
        u1072.paused = false
    end
end

u1070.emotes._stop_track = __S[3]

__S[6] = function(v1)
    local v2 = u1070.emotes.storage[v1]

    if not v2 then
        return false
    end

    local v3 = u1061.Character

    if not v3 or not v3.PrimaryPart then
        return false
    end

    if not v3:FindFirstChildWhichIsA("Humanoid") then
        return false
    end

    local v4, v5 = u1070.emotes.get_shared(), u1070.emotes.get_trove_module()

    if not v4 or not v5 then
        return false
    end

    u1070.emotes._stop_track(false)
    u1070.emotes.paused = false
    u1070.emotes.trove = v5.new()
    u1070.emotes.current = v1

    if not u808(function()
        v4:Play(v3, u1070.emotes.trove, v2.Name, true, u1058:GetServerTimeNow(), nil)
    end) then
        u1070.emotes._stop_track(false)
        return false
    end

    return true
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.emotes.play = __S[6]

__S[6] = function(v1)
    if u809(v1) ~= "string" or v1 == "" then
        return false
    end

    local v2 = u1061.Character

    if not v2 or not v2.PrimaryPart then
        return false
    end

    if not v2:FindFirstChildWhichIsA("Humanoid") then
        return false
    end

    local v3, v4 = u1070.emotes.get_shared(), u1070.emotes.get_trove_module()

    if not v3 or not v4 then
        return false
    end

    u1070.emotes._stop_track(false)
    u1070.emotes.paused = false
    u1070.emotes.trove = v4.new()
    u1070.emotes.current = v1

    if not u808(function()
        v3:Play(v2, u1070.emotes.trove, v1, true, u1058:GetServerTimeNow(), nil)
    end) then
        u1070.emotes._stop_track(false)
        return false
    end

    return true
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.emotes.play_internal = __S[6]

__S[3] = function()
    u1070.emotes._stop_track(false)
end

u1070.emotes.stop = __S[3]

__S[6] = function()
    local v1 = u1070.emotes

    if not v1.enabled or not v1.current then
        return
    end

    local v2 = u1066()

    if v2 - v1._loop_t < 0.08 then
        return
    end

    v1._loop_t = v2
    local v3 = u1061.Character

    if not v3 then
        return
    end

    local v4 = v3.PrimaryPart

    if not v4 then
        return
    end

    v3 = v4.AssemblyLinearVelocity.Magnitude > 2

    if v1.auto_stop then
        if v3 then
            if not v1.paused then
                v1._stop_track(true)
                v1.paused = true
            end
        elseif v1.paused then
            v1.paused = false
            v1.play(v1.current)
        end

        return
    end

    if not v1.trove then
        if v2 - v1._replay_t >= 0.3 then
            v1._replay_t = v2
            v1.play(v1.current)
        end
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.emotes.update_loop = __S[6]

__S[3] = function()
    u1070.emotes.enabled = true

    if not u1070.emotes.connection then
        local function r2()
            if u1070.emotes.enabled then
                u1070.emotes.update_loop()
            end
        end --[[ LPH_NO_VIRTUALIZE ]]

        u1070.emotes.connection = u1055.Heartbeat:Connect(r2)
    end

    if u1070.emotes.current then
        u1070.emotes.play(u1070.emotes.current)
    end
end

u1070.emotes.start = __S[3]

__S[3] = function()
    u1070.emotes.enabled = false
    local r0 = u1070.emotes.current
    u1070.emotes.stop()
    u1070.emotes.current = r0

    if u1070.emotes.connection then
        u1070.emotes.connection:Disconnect()
        u1070.emotes.connection = nil
    end
end

u1070.emotes.cleanup = __S[3]
u1070.emotes.load_animations()
local u1073 = {"Camera", "Random", "Accelerated", "Back", "Down", "Up", "Dot"}

local function u1074()
    local function r1()
        return u1059.Network.ServerStatsItem["Data Ping"]:GetValue()
    end

    local r0, r1_2 = pcall(r1)
    return r0 and r1_2 or 50
end

__S[6] = function()
    local v1 = u1070.cache
    local v2 = u1066()

    if v2 - v1.ping_t >= 0.12 then
        v1.ping = u1074()
        v1.ping_t = v2
    end

    return v1.ping
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.cache.get_ping = __S[6]

local function u1075()
    if u1070.config.is_mobile then
        u1060:SendMouseButtonEvent(0, 0, 0, true, u796, 0)
        u1060:SendMouseButtonEvent(0, 0, 0, false, u796, 0)
    else
        u1060:SendKeyEvent(true, u824.KeyCode.F, false, u796)
        u1060:SendKeyEvent(false, u824.KeyCode.F, false, u796)
    end
end

local function u1076()
    if u1070.config.curve_mode == 1 and u1070.config.parry_mode == "Keypress" then
        u1075()
        return
    end

    local r0 = u1070.curve.get_cframe()
    local r8 = u1062.CFrame
    u1062.CFrame = r0

    if u1070.config.is_mobile then
        u1060:SendMouseButtonEvent(0, 0, 0, true, u796, 0)
        u1060:SendMouseButtonEvent(0, 0, 0, false, u796, 0)
    else
        u1060:SendKeyEvent(true, u824.KeyCode.F, false, u796)
        u1060:SendKeyEvent(false, u824.KeyCode.F, false, u796)
    end

    u1064:Wait()
    u1062.CFrame = r8
end

local function u1077(u1078)
    local r2 = tonumber(u1078)

    if r2 then
        return r2
    end

    local function r4()
        return u1054:GetUserIdFromNameAsync(tostring(u1078))
    end

    local r3, r4_2 = pcall(r4)
    return r3 and r4_2 or nil
end

local function u1079(r0, r1, r2)
    local r8 = u858()
    local u1080 = u847("TextButton")
    u1080.Size = u821.new(0, 120, 0, 48)
    u1080.Position = u821.new(0.5, -60, r1, 0)
    u1080.BackgroundTransparency = 1
    u1080.AnchorPoint = Vector2.new(0.5, 0)
    u1080.AutoButtonColor = false
    u1080.ZIndex = 2
    u1080.Text = ""
    u1080.Parent = r8
    local r10 = u847("Frame")
    r10.Size = u821.new(1, 0, 1, 0)
    r10.BackgroundColor3 = u820.fromRGB(18, 18, 24)
    r10.BorderSizePixel = 0
    r10.Parent = u1080
    local r6 = u847("UICorner")
    r6.CornerRadius = u822.new(0, 10)
    r6.Parent = r10
    local r3 = u847("UIStroke")
    r3.Color = r2
    r3.Thickness = 1.5
    r3.Transparency = 0.3
    r3.Parent = r10
    local r10_2 = u847("TextLabel")
    r10_2.Size = u821.new(1, 0, 1, 0)
    r10_2.BackgroundTransparency = 1
    r10_2.Text = r0
    r10_2.Font = u824.Font.GothamBold
    r10_2.TextSize = 14
    r10_2.TextColor3 = u820.fromRGB(245, 245, 245)
    r10_2.ZIndex = 3
    r10_2.Parent = u1080
    local u1081 = false
    local u1082
    local u1083

    u1080.InputBegan:Connect(function(r0)
        if r0.UserInputType == u824.UserInputType.Touch then
            u1081 = true
            u1082 = r0.Position
            u1083 = u1080.Position
        end
    end)

    u1080.InputChanged:Connect(function(r0)
        local r2 = u1081

        if not u1081 or r0.UserInputType ~= u824.UserInputType.Touch then
            return
        end

        local r1 = r0.Position - u1082

        if r1.Magnitude > 8 then
            u1080.Position = u821.new(u1083.X.Scale, u1083.X.Offset + r1.X, u1083.Y.Scale, u1083.Y.Offset + r1.Y)
        end
    end)

    u1080.InputEnded:Connect(function(r0)
        if r0.UserInputType == u824.UserInputType.Touch then
            u1081 = false
        end
    end)

    return {gui = r8, button = u1080, label = r10_2}
end

local u1084 = u1057

u808(function()
    u1084.Remotes.DeathBall.OnClientEvent:Connect(function(r0, r1)
        u1070.state.deathslash_active = r1 or false
    end)
end)

u808(function()
    u1084.Remotes.InfinityBall.OnClientEvent:Connect(function(r0, r1)
        u1070.state.infinity_active = r1 or false
    end)
end)

u808(function()
    local r1 = u1084.Remotes.ParrySuccessAll.OnClientEvent
    local u1085 = r1.Connect

    u1085(r1, function(r0, r1)
        local r2 = u1061.Character

        if not r2 or not r2.PrimaryPart then
            return
        end

        local r10 = r2.PrimaryPart
        local r5 = u797:FindFirstChild("Balls")

        if not r5 then
            return
        end

        local r296 = r5:GetChildren()

        for r3, r0_2 in ipairs(r296) do
            if r0_2:IsA("BasePart") then
                local r4 = r0_2:FindFirstChild("zoomies")

                if r4 then
                    local r5_2 = r4.VectorVelocity.Magnitude
                    local r12 = (r10.Position - r0_2.Position).Magnitude
                    local r13 = u1070.cache.get_ping()
                    local r4_2 = r12 / math.max(r5_2, 1) - r13 / 1000
                    local r6 = math.min(r5_2 / 100, 40)
                    r6 = 15 - math.min(r12 / 1000, 15) + r6

                    if r5_2 > 1 and r13 / 10 < r4_2 then
                        r6 = math.max(r6 - 15, 15)
                    end

                    if r1 == r10 then
                        break
                    end

                    if not (r6 < r12) then
                        break
                    end

                    u1070.curve_detection.curve_time = u817()
                    break
                end
            end
        end
    end)
end)

u808(function()
    u1061.AttributeChanged:Connect(function(r0)
        if r0 == "TimeHoleActivate" then
            u1070.state.timehole_active = u1061:GetAttribute("TimeHoleActivate") ~= nil
        end
    end)
end)

u1070.remotes.hellhook = u1057:FindFirstChild("Remotes") and u1057.Remotes:FindFirstChild("PlrHellHooked") or nil

u808(function()
    local function refresh_forcefield(character)
        character = character or u1061.Character

        if not character then
            u1070.state.forcefield_active = false
            return
        end

        local equipped = u1061:GetAttribute("CurrentlyEquippedAbility") or character:GetAttribute("CurrentlyEquippedAbility")
        if type(equipped) ~= "string" then
            u1070.state.forcefield_active = false
            return
        end

        equipped = equipped:lower():gsub("%s+", "")
        u1070.state.forcefield_active = equipped == "forcefield" and character:GetAttribute("AbilityActive") == true
    end

    local function bind_character(character)
        if not character then
            return
        end

        character.AttributeChanged:Connect(function(name)
            if name == "AbilityActive" or name == "CurrentlyEquippedAbility" then
                refresh_forcefield(character)
            end
        end)

        refresh_forcefield(character)
    end

    u1061.AttributeChanged:Connect(function(name)
        if name == "CurrentlyEquippedAbility" then
            refresh_forcefield()
        end
    end)

    if u1061.Character then
        bind_character(u1061.Character)
    end

    u1061.CharacterAdded:Connect(function(character)
        bind_character(character)
    end)
end)

-- Dribble runtime used by the two Dribble detection modules.
u1070.dribble_detection.reset = function()
    local state = u1070.dribble_detection
    state.phase = "Idle"
    state.ball = nil
    state.fired_at = 0
    state.seen_return = {}
end

u1070.dribble_detection.process = function()
    local state = u1070.dribble_detection
    local dribble_parry = u1070.dribble_parry
    local character = u1061.Character
    if not character then
        return
    end

    local root = character:FindFirstChild("HumanoidRootPart")
    if not root then
        return
    end

    local balls_folder = u1070.cache.get_balls_folder and u1070.cache.get_balls_folder()
    if not balls_folder then
        balls_folder = u797:FindFirstChild("Balls")
    end
    if not balls_folder then
        return
    end

    local local_name = u1061.Name
    local equipped = u1061:GetAttribute("CurrentlyEquippedAbility") or character:GetAttribute("CurrentlyEquippedAbility")

    for _, ball in ipairs(balls_folder:GetChildren()) do
        if not ball:IsA("BasePart") then
            continue
        end

        local targeted = ball:GetAttribute("target") == local_name
        local dribble_active = ball:GetAttribute("DribbleActive") == true

        if u1070.detections.dribble and equipped == "Dribble" and targeted and not dribble_active then
            if state.phase == "Idle" and os.clock() - (u1070.state.last_dribble_use or 0) > 0.75 then
                u1070.state.last_dribble_use = os.clock()
                state.phase = "Pending"
                state.ball = ball
                state.fired_at = os.clock()
                pcall(function()
                    u1084.Remotes.AbilityButtonPress:Fire()
                end)
            end
        end

        if dribble_active and targeted then
            state.phase = "Outbound"
            state.ball = ball
            u1070.state.last_dribble_success = os.clock()
        elseif state.ball == ball and state.phase == "Outbound" and not dribble_active and targeted then
            state.phase = "Return"
            u1070.state.last_dribble_success = os.clock()

            if u1070.detections.dribble then
                u1070.parry.execute()
            end

            state.phase = "Idle"
            state.ball = nil
        end

        if dribble_parry.enabled and dribble_active and targeted and not dribble_parry.pending[ball] then
            dribble_parry.pending[ball] = true
            local delay = dribble_parry.delay or 0
            if delay <= 0 then
                u1070.parry.execute()
            else
                u828.delay(delay, function()
                    if dribble_parry.enabled and ball.Parent then
                        u1070.parry.execute()
                    end
                end)
            end
        elseif not dribble_active then
            dribble_parry.pending[ball] = nil
        end
    end

    if state.phase ~= "Idle" and state.fired_at > 0 and os.clock() - state.fired_at > 2 then
        state.phase = "Idle"
        state.ball = nil
    end
end

u828.spawn(function()
    while task.wait(0.03) do
        pcall(u1070.dribble_detection.process)
    end
end)

u808(function()
    local u1086 = u1084.Remotes.AbilityButtonPress
    local r1 = u1084.Remotes.Phantom.OnClientEvent
    local u1087 = r1.Connect

    u1087(r1, function(...)
        local r9 = {...}
        local r1 = r9[2]

        if typeof(r1) ~= "Instance" then
            return
        end

        if r1.Name ~= u1061.Name then
            return
        end

        if not u1070.phantom.enabled then
            return
        end

        local r9_2 = u1061.Character

        if not r9_2 then
            return
        end

        local r8 = r9_2:FindFirstChild("HumanoidRootPart")

        if not r8 then
            return
        end

        local r5 = u1070.phantom.range
        local r293 = u1070.ball.get_all()
        local r6

        for r2, r3 in ipairs(r293) do
            local r7 = (r3.part.Position - r8.Position).Magnitude

            if r7 <= r5 then
                r5 = r7
                r6 = r3
            end
        end

        if not r6 then
            return
        end

        u1070.phantom.active = true

        if u1070.phantom.mode == "Ability" then
            u1086:Fire()

            task.delay(1, function()
                u1070.phantom.active = false
            end)
        elseif u1070.phantom.mode == "Teleport" then
            u1070.parry.execute()
            r8.CFrame = u819.new(r6.part.Position)

            task.delay(0.5, function()
                u1070.phantom.active = false
            end)
        end
    end)
end)

local u1088

local function u1089(u1090)
    if u1088 then
        u1088:Disconnect()
        u1088 = nil
    end

    u1088 = u1090.AttributeChanged:Connect(function(r0)
        if r0 == "AbilityActive" then
            local r6 = u1090:GetAttribute("AbilityActive")

            if u1061:GetAttribute("CurrentlyEquippedAbility") == "Slashes of Fury" and r6 == true then
                u1070.state.slashesoffury_active = true
            else
                u1070.state.slashesoffury_active = false
            end
        end

        if r0 ~= "FuryCatch" then
            return
        end

        if u1090:GetAttribute("FuryCatch") == nil then
            return
        end

        if not u1070.detections.slashesoffury then
            return
        end

        task.spawn(function()
            local r0 = 0

            while u1070.state.slashesoffury_active and r0 < u1070.slashesoffury_detection.max_parries and u1070.detections.slashesoffury do
                r0 = r0 + 1
                u1070.parry.execute()
                task.wait(u1070.slashesoffury_detection.parry_delay)
            end
        end)
    end)
end

if u1061.Character then
    u808(u1089, u1061.Character)
end

u1061.CharacterAdded:Connect(function(r0)
    pcall(u1089, r0)
end)

local u1091 = u1057
__S[49] = u1091:WaitForChild("Shared", 9000000000):WaitForChild("ReplicatedInstances", 9000000000):WaitForChild("Swords", 9000000000)
local u1092 = require(__S[49])

u828.spawn(function()
    while task.wait() and not u1070.sword_changer.swords_controller do
        for r1, r2 in u800(u1091.Remotes.FireSwordInfo.OnClientEvent) do
            if r2.Function and u804(r2.Function) then
                local r3 = u801(r2.Function)

                if #r3 == 1 and type(r3[1]) == "table" then
                    u1070.sword_changer.swords_controller = r3[1]
                    break
                end
            end
        end
    end
end)

u828.spawn(function()
    local r4

    while task.wait() and not r4 do
        for r2, r3 in u800(u1091.Remotes.ParrySuccessAll.OnClientEvent) do
            if r3.Function and u803(r3.Function).name == "parrySuccessAll" then
                u1070.sword_changer.parry_func = r3.Function
                r3:Disable()
                r4 = r3
                break
            end
        end
    end

    local u1093
    local r1 = u1093

    while task.wait() and not r1 do
        for r5, r6 in u800(u1091.Remotes.ParrySuccessClient.Event) do
            if r6.Function and u803(r6.Function).name == "parrySuccessAll" then
                r6:Disable()
                r1 = r6
                break
            end
        end
    end

    u1091.Remotes.ParrySuccessAll.OnClientEvent:Connect(function(...)
        if not u1070.sword_changer.loaded then
            return u1070.sword_changer.parry_func(...)
        end

        setthreadidentity(2)
        local r5 = {...}
        local r7 = select("#", ...)

        if u1070.sword_changer.enabled and u1070.sword_changer.fx ~= "" then
            if 4 <= r7 and typeof(r5[4]) == "Instance" and r5[4]:IsA("Player") then
                if r5[4] == u1061 then
                    r5[1] = u1070.sword_changer.slash_name
                    r5[3] = u1070.sword_changer.fx
                end
            else
                local r0 = u1061.Character

                if r0 and typeof(r5[2]) == "Instance" then
                    local r3 = r5[2]

                    if r3 ~= r0 then
                        r3 = r5[2].Parent
                        local r2 = r3 == r0
                    end

                    if r3 == r0 then
                        r5[1] = u1070.sword_changer.slash_name
                        r5[3] = u1070.sword_changer.fx
                    end
                end
            end
        end

        return u1070.sword_changer.parry_func(unpack(r5, 1, r7))
    end)
end)

local u1094 = __S[19](u1092, "EquipSwordTo")
local u1095

for r8_8, r9_7 in u812(u801(u1094)) do
    if u809(r9_7) == "table" and u809(__S[19](r9_7, "getInstance")) == "function" then
        u1095 = r9_7
        break
    end
end

__S[23](u1095, "u8 not found")
local u1096
__S[7] = nil

for r11_7, r12_2 in u812(u801(u1095.getInstance)) do
    if u809(r12_2) == "table" then
        if __S[19](r12_2, "Collections") and not u1096 then
            u1096 = r12_2
        end

        if u809(__S[19](r12_2, "deserialize")) == "function" and not __S[7] then
            __S[7] = r12_2.deserialize
        end
    end
end

__S[23](u1096, "u46 not found")
__S[23](u809(__S[7]) == "function", "deserialize_fn not found")
local u1097
local u1098
local u1099

for r14_3, r15_3 in u812(u801(__S[7])) do
    if u810(r15_3) == "Instance" and r15_3.ClassName == "HttpService" then
        u1097 = r15_3
    elseif u809(r15_3) == "table" then
        if u809(__S[19](r15_3, "decode")) == "function" and not u1098 then
            u1098 = r15_3
        else
            __S[7] = u809(__S[19](r15_3, "deserialize")) == "function"

            if __S[7] and u809(__S[19](r15_3, "serialize")) == "function" then
                __S[7] = not u1099

                if __S[7] then
                    u1099 = r15_3
                end
            end
        end
    end
end

if not u1097 then
    u1097 = u796:GetService("HttpService")
end

__S[23](u1098, "roblox_buff_dyn not found")
__S[23](u1099, "instance_serializer not found")

local u1100 = (function()
    if not u1096.Collections then
        return nil
    end

    if u1096.Collections.Swords then
        return "Swords"
    end

    for r2, r3 in pairs(u1096.Collections) do
        if type(r2) == "string" and r2:lower() == "swords" then
            return r2
        end
    end

    return nil
end)()

local function u1101(u1102)
    if u1070.sword_changer.model_cache[u1102] and u1070.sword_changer.model_cache[u1102].Parent then
        return u1070.sword_changer.model_cache[u1102]:Clone()
    end

    local r3

    if u1100 then
        local r4 = u1096.Collections[u1100]
        r3 = nil

        if r4 and r4.Instances then
            r3 = r4.Instances[u1102]
        end
    end

    if not r3 then
        local u1103 = u1100 or "Swords"

        local function r11()
            return u1096:GetInstance(u1103, u1102)
        end

        local r10, r11_2 = pcall(r11)

        if r10 then
            r3 = r11_2 or r3
        end
    end

    if not r3 then
        return nil
    end

    local function r6(r0)
        local r10

        if r0:IsA("StringValue") then
            r10 = r0.Value
        else
            if not r0:IsA("ModuleScript") then
                return nil
            end

            local r3 = getthreadidentity()
            setthreadidentity(6)
            local r5, r6 = pcall(require, r0)
            local r8 = r6
            setthreadidentity(r3)

            if not r5 then
                return nil
            elseif type(r8) == "string" then
                r10 = r8
            else
                if typeof(r8) == "buffer" then
                    local r6_2, r7 = pcall(u1098.decode, r8)

                    if not r6_2 then
                        return nil
                    end

                    local r9 = {}

                    for r3_2, r4 in r0:GetChildren() do
                        r9[r4.Name] = r4
                    end

                    local r4_2, r5_2 = pcall(u1099.deserialize, r7, r9)

                    if r4_2 then
                        return r5_2
                    end

                    return nil
                end

                r10 = nil

                if type(r8) == "table" then
                    local r6_3, r7_2 = pcall(u1098.decode, r8)
                    local r2 = r7_2

                    if r6_3 then
                        local r3_3 = {}

                        for r6_4, r7_3 in r0:GetChildren() do
                            r3_3[r7_3.Name] = r7_3
                        end

                        local r4_3, r5_3 = pcall(u1099.deserialize, r2, r3_3)

                        if r4_3 then
                            return r5_3
                        end
                    end

                    local r5_4, r6_5 = pcall(u1097.JSONEncode, u1097, r8)
                    r10 = r6_5

                    if not r5_4 then
                        r10 = nil
                    end
                end
            end
        end

        if not r10 or r10 == "" then
            return nil
        end

        local r7_4, r8_2 = pcall(u1097.JSONDecode, u1097, r10)

        if not r7_4 then
            return nil
        end

        local r6_6, r7_5 = pcall(u1098.decode, r8_2)

        if not r6_6 then
            return nil
        end

        local r3_4 = {}

        for r9_2, r10_2 in r0:GetChildren() do
            r3_4[r10_2.Name] = r10_2
        end

        local r5_5, r6_7 = pcall(u1099.deserialize, r7_5, r3_4)

        if not r5_5 then
            return nil
        end

        return r6_7
    end

    local r5

    if typeof(r3) == "Instance" and r3:IsA("Model") then
        r5 = r3:Clone()
    elseif typeof(r3) == "Instance" and r3:IsA("Tool") then
        r5 = u850.new("Model")
        r5.Name = u1102
        local r10_2 = r3:Clone()
        r10_2.Name = u1102
        r10_2.Parent = r5
        local r9 = r10_2:FindFirstChildWhichIsA("BasePart", true)

        if r9 then
            r5.PrimaryPart = r9
        end
    else
        if typeof(r3) ~= "Instance" or not r3:IsA("StringValue") and not r3:IsA("ModuleScript") then
            return nil
        end

        r5 = r6(r3)

        if not r5 then
            return nil
        elseif not r5:IsA("Model") then
            if r5:IsA("Tool") then
                r5.Name = u1102
                local r4_2 = u850.new("Model")
                r4_2.Name = u1102
                r5.Parent = r4_2
                local r9_2 = r5:FindFirstChildWhichIsA("BasePart", true)

                if r9_2 then
                    r4_2.PrimaryPart = r9_2
                    r5 = r4_2
                else
                    r5 = r4_2
                end
            else
                local r6_2 = u850.new("Model")
                r6_2.Name = u1102
                r5.Parent = r6_2
                local r9_3 = r5:IsA("BasePart") and r5 or r5:FindFirstChildWhichIsA("BasePart", true)

                if r9_3 then
                    r6_2.PrimaryPart = r9_3
                    r5 = r6_2
                else
                    r5 = r6_2
                end
            end
        end
    end

    if not r5 then
        return nil
    end

    local r9_4 = r5:FindFirstChildWhichIsA("Tool", true)

    if r9_4 and r9_4.Name ~= u1102 then
        r9_4.Name = u1102
    end

    u1070.sword_changer.model_cache[u1102] = r5
    return r5:Clone()
end

local function u1104(r0, u1106)
    local u1105 = u1101(u1106)

    if not u1105 then
        return
    end

    local r302 = u801(u1094)
    local r16
    local r12

    for r3, r4 in ipairs(r302) do
        if r4 == u1095 then
            if not r16 then
                r16 = r3
            elseif type(r4) == "boolean" and not r12 then
                r12 = r3
            end
        elseif type(r4) == "boolean" and not r12 then
            r12 = r3
        end
    end

    if not r16 then
        return
    end

    local r17 = {
        getInstance = function(r0, r1)
            if r1 == u1106 then
                return u1105
            end

            return u1101(r1)
        end
    }

    if r12 then
        u802(u1094, r12, false)
    end

    u802(u1094, r16, r17)
    pcall(u1092.EquipSwordTo, u1092, r0, u1106)
    u802(u1094, r16, u1095)

    if r12 then
        u802(u1094, r12, true)
    end
end

local function u1107(r0)
    if not r0 or r0 == "" then
        return "SlashEffect"
    end

    local r2 = u1092:GetSword(r0)

    if r2 then
        r2 = r2.SlashName
    end

    if not r2 then
        r2 = "SlashEffect"
    end

    return r2
end

local function u1108()
    if not u1070.sword_changer.enabled or not u1070.sword_changer.loaded then
        return
    end

    local r0 = u1061.Character

    if not r0 then
        return
    end

    if u1070.sword_changer.model ~= "" then
        u1104(r0, u1070.sword_changer.model)
    end

    if u1070.sword_changer.animations ~= "" and u1070.sword_changer.swords_controller then
        u1070.sword_changer.swords_controller:SetSword(u1070.sword_changer.animations)
    end
end

__S[261] = function()
    if u1070.sword_changer.original.saved then
        return
    end

    local r1 = u1061.Character

    if not r1 then
        return
    end

    local r3 = r1:GetAttribute("CurrentlyEquippedSword") or u1061:GetAttribute("CurrentlyEquippedSword")

    if r3 then
        u1070.sword_changer.original.model = r3
        u1070.sword_changer.original.saved = true
    end
end

u1070.sword_changer.save_original = __S[261]

__S[263] = function()
    if not u1070.sword_changer.original.saved then
        return
    end

    local r0 = u1061.Character

    if not r0 then
        return
    end

    u1104(r0, u1070.sword_changer.original.model)

    if u1070.sword_changer.swords_controller then
        u1070.sword_changer.swords_controller:SetSword(u1070.sword_changer.original.model)
    end
end

u1070.sword_changer.restore_original = __S[263]

function u1070.sword_changer.update()
    if not u1070.sword_changer.loaded then
        return
    end

    if u1070.sword_changer.fx ~= "" then
        u1070.sword_changer.slash_name = u1107(u1070.sword_changer.fx)
    end

    u1108()
end

u828.spawn(function()
    while task.wait(1) do
        if not (not u1070.sword_changer.enabled or not u1070.sword_changer.loaded) then
            local r4 = u1061.Character

            if r4 then
                if u1070.sword_changer.model ~= "" then
                    if u1061:GetAttribute("CurrentlyEquippedSword") ~= u1070.sword_changer.model then
                        u1108()
                    end

                    if not r4:FindFirstChild(u1070.sword_changer.model) then
                        u1108()
                    end

                    for r1, r2 in r4:GetChildren() do
                        if r2:IsA("Model") and r2.Name ~= u1070.sword_changer.model then
                            r2:Destroy()
                        end
                    end
                end

                if u1070.sword_changer.animations ~= "" and u1070.sword_changer.swords_controller then
                    u1070.sword_changer.swords_controller:SetSword(u1070.sword_changer.animations)
                end
            end
        end
    end
end)

__S[3] = function()
    if u1070.avatar_changer.original_desc then
        return
    end

    local u1109 = u1070.avatar_changer.saving_original

    if u1109 then
        return
    end

    u1070.avatar_changer.saving_original = true

    task.spawn(function()
        for r2 = 1, 5 do
            local function r1()
                return u1054:GetHumanoidDescriptionFromUserIdAsync(u1061.UserId)
            end

            local r0, r1_2 = pcall(r1)

            if r0 and r1_2 then
                u1070.avatar_changer.original_desc = r1_2
                break
            end

            task.wait(0.3 * r2)
        end

        u1070.avatar_changer.saving_original = false
    end)
end

u1070.avatar_changer.save_original = __S[3]

__S[3] = function(u1110)
    if u1070.avatar_changer.cache[u1110] then
        return u1070.avatar_changer.cache[u1110]
    end

    for r2 = 1, 5 do
        local function r6()
            return u1054:GetHumanoidDescriptionFromUserIdAsync(u1110)
        end

        local r5, r6_2 = pcall(r6)

        if r5 and r6_2 then
            u1070.avatar_changer.cache[u1110] = r6_2
            return r6_2
        elseif r2 < 5 then
            task.wait(0.2 * r2)
        end
    end

    return nil
end

u1070.avatar_changer.get_description = __S[3]

__S[3] = function(u1111, r1)
    if not r1 then
        r1 = u824.HumanoidRigType.R15
    end

    local function r2(u1112)
        local function r6()
            return u1054:CreateHumanoidModelFromDescriptionAsync(u1111, u1112, u824.AssetTypeVerification.Always)
        end

        local r5, r6_2 = pcall(r6)

        if not r5 or not r6_2 then
            local function r3()
                return u1054:CreateHumanoidModelFromDescriptionAsync(u1111, u1112)
            end

            r5, r6_2 = pcall(r3)
        end

        if not r5 or not r6_2 then
            return nil
        end

        r6_2.Name = "KTLAvatarPreview"
        r6_2.Parent = u1057

        pcall(function()
            u1055.Heartbeat:Wait()
        end)

        return r6_2
    end

    local r3 = r2(r1)

    if r3 then
        return r3
    end

    return r2(r1 == u824.HumanoidRigType.R15 and u824.HumanoidRigType.R6 or u824.HumanoidRigType.R15)
end

u1070.avatar_changer.create_temp_model = __S[3]

__S[3] = function(r0)
    local r291 = r0:GetDescendants()

    for r2, r3 in ipairs(r291) do
        if r3:IsA("Weld") or r3:IsA("Motor6D") or r3:IsA("WeldConstraint") then
            r3:Destroy()
        end
    end
end

u1070.avatar_changer.strip_accessory_joints = __S[3]

__S[3] = function(r0, r1)
    if not r1 or r1 == "" then
        return nil
    end

    local r12 = r0:FindFirstChild(r1)

    if r12 and r12:IsA("BasePart") then
        return r12
    end

    local r7 = {
        ["Left Arm"] = {"LeftUpperArm", "LeftLowerArm", "LeftHand"},
        ["Right Arm"] = {"RightUpperArm", "RightLowerArm", "RightHand"},
        ["Left Leg"] = {"LeftUpperLeg", "LeftLowerLeg", "LeftFoot"},
        ["Right Leg"] = {"RightUpperLeg", "RightLowerLeg", "RightFoot"},
        Torso = {"UpperTorso", "LowerTorso"}
    }

    local r4 = r7[r1] or {}

    for r4_2, r5 in ipairs(r4) do
        local r12_2 = r0:FindFirstChild(r5)

        if r12_2 and r12_2:IsA("BasePart") then
            return r12_2
        end
    end

    return nil
end

u1070.avatar_changer.find_body_part = __S[3]

__S[3] = function(r0, u1116, r2)
    if not r0 or not r2 then
        return false
    end

    local u1115 = r2:Clone()
    u1070.avatar_changer.strip_accessory_joints(u1115)
    local r7 = u1115:FindFirstChild("Handle")

    if not r7 or not r7:IsA("BasePart") then
        u1115:Destroy()
        return false
    end

    r7.Anchored = false
    r7.CanCollide = false
    r7.Massless = true
    local r3 = r2:FindFirstChild("Handle")

    if r3 then
        r3 = r3:FindFirstChild("AccessoryWeld")
    end

    local r17 = u819.new()
    local r18 = u819.new()
    local r9

    if r3 and r3:IsA("Weld") and r3.Part1 then
        r9 = u1070.avatar_changer.find_body_part(r0, r3.Part1.Name)
        r17 = r3.C0
        r18 = r3.C1
    end

    local r16

    if not r9 then
        local r2_2 = r7:FindFirstChildOfClass("Attachment")

        if r2_2 then
            local r305 = r0:GetDescendants()

            for r4, r5 in ipairs(r305) do
                if r5:IsA("Attachment") and r5.Name == r2_2.Name and not r5:IsDescendantOf(u1115) then
                    r9 = r5.Parent
                    r17 = r2_2.CFrame
                    r18 = r5.CFrame
                    break
                end
            end

            r16 = r9
        else
            r16 = r9
        end
    else
        r16 = r9
    end

    local r4_2

    if not r16 then
        local r3_2 = u1115.AccessoryType
        local r5_2 = r3_2 == u824.AccessoryType.Hair
        local r2_3

        if r5_2 then
            r2_3 = r5_2
        else
            local r2_4 = u824.AccessoryType.Hat
            r5_2 = r3_2 == r2_4

            if r3_2 ~= r2_4 then
                r2_4 = u824.AccessoryType.Face
                r5_2 = r3_2 == r2_4
            end

            if r3_2 ~= r2_4 then
                r2_4 = u824.AccessoryType.Eyebrow
                r5_2 = r3_2 == r2_4
            end

            if r3_2 == r2_4 then
                r2_3 = r5_2
            else
                r2_3 = r3_2 == u824.AccessoryType.Eyelash
            end
        end

        if r2_3 then
            r16 = r0:FindFirstChild("Head")
        end

        if not r16 then
            r16 = r0:FindFirstChild("Head") or r0:FindFirstChild("UpperTorso") or r0:FindFirstChild("Torso")
        end

        r17 = u819.new(0, 0.5, 0)
        r18 = u819.new()
        r4_2 = r16
    else
        r4_2 = r16
    end

    if r4_2 and r4_2:IsA("BasePart") then
        local r3_3 = u850.new("Weld")
        r3_3.Name = "AccessoryWeld"
        r3_3.Part0 = r7
        r3_3.Part1 = r4_2
        r3_3.C0 = r17
        r3_3.C1 = r18
        r3_3.Parent = r7
        u1115.Parent = r0
        return true
    end

    if u1116 then
        local function r3_4()
            u1116:AddAccessory(u1115)
        end

        if pcall(r3_4) and u1115.Parent == r0 then
            return true
        end
    end

    u1115:Destroy()
    return false
end

u1070.avatar_changer.attach_accessory = __S[3]

__S[3] = function(u1120, u1122)
    local u1117 = {}
    local u1118 = {}
    local r17

    local function u1119(r0)
        if not r0 or u1118[r0] then
            return
        end

        u1118[r0] = true
        table.insert(u1117, r0)
    end

    if u1120 then
        local r3 = u1120:GetChildren()

        for r3_2, r4 in ipairs(r3) do
            if r4:IsA("Accessory") or r4:IsA("Hat") then
                u1119(r4)
            end
        end

        if #u1117 == 0 then
            local r4_2 = u1120
            u1120 = "Humanoid"
            local u1121 = r4_2:FindFirstChildOfClass(u1120)

            if u1121 then
                pcall(function()
                    local r287 = u1121:GetAccessories()

                    for r1, r2 in ipairs(r287) do
                        u1119(r2)
                    end
                end)
            end
        end
    end

    if u1122 and u1122.GetAccessories then
        pcall(function()
            local r1 = u1122:GetAccessories(true)

            for r1_2, r2 in ipairs(r1) do
                local u1123 = r2.AssetId

                if u1123 and 0 < u1123 then
                    pcall(function()
                        local r4 = u796:GetObjects("rbxassetid://" .. u1123)

                        for r1, r2 in ipairs(r4) do
                            local r9 = r2:IsA("Accessory") and r2 or r2:FindFirstChildOfClass("Accessory")

                            if not r9 then
                                local r298 = r2:GetDescendants()

                                for r4_2, r5 in ipairs(r298) do
                                    if r5:IsA("Accessory") then
                                        r9 = r5
                                        break
                                    end
                                end
                            end

                            if r9 then
                                u1119(r9)
                            end
                        end
                    end)
                end
            end
        end)
    end

    if u1122 and #u1117 == 0 then
        for r6, r7 in ipairs({
            "HatAccessory",
            "HairAccessory",
            "FaceAccessory",
            "NeckAccessory",
            "ShouldersAccessory",
            "FrontAccessory",
            "BackAccessory",
            "WaistAccessory"
        }) do
            local r2 = u1122[r7]

            if r2 and r2 ~= "" then
                for r9, r10 in string.gmatch(tostring(r2), "%d+") do
                    local u1125 = tonumber(r9)

                    if u1125 and 0 < u1125 then
                        local function r4_3()
                            local r4 = u796:GetObjects("rbxassetid://" .. u1125)

                            for r1, r2 in ipairs(r4) do
                                local r9 = r2:IsA("Accessory") and r2 or r2:FindFirstChildOfClass("Accessory")

                                if not r9 then
                                    local r298 = r2:GetDescendants()

                                    for r4_2, r5 in ipairs(r298) do
                                        if r5:IsA("Accessory") then
                                            r9 = r5
                                            break
                                        end
                                    end
                                end

                                if r9 then
                                    u1119(r9)
                                end
                            end
                        end

                        u1120 = pcall
                        u1120(r4_3)
                    end
                end
            end
        end
    end

    return u1117
end

u1070.avatar_changer.collect_accessories = __S[3]

__S[3] = function(r0)
    local r290 = r0:GetChildren()

    for r2, r3 in ipairs(r290) do
        if r3:IsA("Accessory") or r3:IsA("Hat") then
            r3:Destroy()
        end
    end
end

u1070.avatar_changer.remove_accessories = __S[3]

__S[3] = function(r0, r1)
    if not r0 or not r1 then
        return false
    end

    local r13 = r1:FindFirstChild("Handle")

    if not r13 or not r13:IsA("BasePart") then
        return false
    end

    r13.Anchored = false
    r13.CanCollide = false
    r13.Massless = true
    local r8 = r13:FindFirstChild("AccessoryWeld")

    if not r8 then
        local r302 = r13:GetChildren()

        for r4, r5 in ipairs(r302) do
            if r5:IsA("Weld") or r5:IsA("WeldConstraint") then
                r8 = r5
                break
            end
        end
    end

    if r8 and r8.Part1 then
        local r13_2 = u1070.avatar_changer.find_body_part(r0, r8.Part1.Name)

        if r13_2 then
            r8.Part1 = r13_2
            r1.Parent = r0
            return true
        end
    end

    return u1070.avatar_changer.attach_accessory(r0, nil, r1)
end

u1070.avatar_changer.transfer_accessory_from_temp = __S[3]

__S[3] = function(u1126, r1, r2, r3)
    u1070.avatar_changer.remove_accessories(u1126)
    local u1127 = 0

    if r2 then
        local r308 = r2:GetChildren()

        for r6, r7 in ipairs(r308) do
            if (r7:IsA("Accessory") or r7:IsA("Hat")) and u1070.avatar_changer.transfer_accessory_from_temp(u1126, r7) then
                u1127 = u1127 + 1
            end
        end

        if u1127 == 0 then
            local u1128 = r2:FindFirstChildOfClass("Humanoid")

            if u1128 then
                pcall(function()
                    local r288 = u1128:GetAccessories()

                    for r1, r2 in ipairs(r288) do
                        if u1070.avatar_changer.transfer_accessory_from_temp(u1126, r2) then
                            u1127 = u1127 + 1
                        end
                    end
                end)
            end
        end
    end

    if u1127 == 0 then
        local r5 = u1070.avatar_changer.collect_accessories(nil, r3)

        for r10, r11 in ipairs(r5) do
            if u1070.avatar_changer.attach_accessory(u1126, r1, r11) then
                u1127 = u1127 + 1
            end
        end
    end

    return u1127
end

u1070.avatar_changer.apply_accessories = __S[3]

__S[3] = function(r0, r1)
    if not r0 or not r1 then
        return
    end

    for r3, r4 in ipairs({
        {"BodyHeightScale", r1.HeightScale, false},
        {"BodyWidthScale", r1.WidthScale, false},
        {"BodyDepthScale", r1.DepthScale, false},
        {"HeadScale", r1.HeadScale, false},
        {"BodyTypeScale", r1.BodyTypeScale, true},
        {"ProportionScale", r1.ProportionScale, true}
    }) do
        local r16 = r4[1]
        local r7 = r4[2]
        local r5 = r4[3]

        if typeof(r7) == "number" and (r7 > 0 or r5 and r7 >= 0) then
            local r5_2 = r0:FindFirstChild(r16)

            if not r5_2 and r0.RigType == u824.HumanoidRigType.R15 then
                local r6 = u850.new("NumberValue")
                r6.Name = r16
                r6.Parent = r0
                r5_2 = r6
            end

            if r5_2 and r5_2:IsA("NumberValue") then
                r5_2.Value = r7
            end
        end
    end
end

u1070.avatar_changer.apply_body_scales = __S[3]

__S[3] = function(u1129, r1)
    if not u1129 or not r1 then
        return
    end

    if r1.Head and (r1.Head == 15093053680 or r1.Head == 134082513) then
        pcall(u1070.avatar.apply_headless, u1129)
    end

    if r1.RightLeg and r1.RightLeg == 139607718 then
        pcall(function()
            if u1129:FindFirstChild("RightLeg") or u1129:FindFirstChild("Right Leg") then
                u1070.avatar.apply_korblox(u1129)
                return
            end

            for r1, r2 in ipairs({"RightUpperLeg", "RightLowerLeg", "RightFoot"}) do
                local r7 = u1129:FindFirstChild(r2)

                if r7 then
                    r7.Transparency = 1
                end
            end

            local r0 = u1129:FindFirstChild("RightUpperLeg")

            if r0 and not r0:FindFirstChild("KorbloxLeg") then
                local r1_2 = u850.new("Part")
                r1_2.Name = "KorbloxLeg"
                r1_2.CanCollide = false
                r1_2.Massless = true
                r1_2.Size = Vector3.new(1, 2, 1)
                local r2_2 = u850.new("SpecialMesh")
                r2_2.MeshId = "rbxassetid://101851696"
                r2_2.TextureId = "rbxassetid://115727863"
                r2_2.Scale = Vector3.new(1, 1, 1)
                r2_2.Parent = r1_2
                local r2_3 = u850.new("Weld")
                r2_3.Part0 = r0
                r2_3.Part1 = r1_2
                r2_3.C0 = u819.new(0, -0.5, 0)
                r2_3.Parent = r1_2
                r1_2.Parent = r0
            end
        end)
    end
end

u1070.avatar_changer.apply_special_body_parts = __S[3]

__S[3] = function(u1130, u1131, r2)
    if not u1130 or not u1131 then
        return
    end

    if r2 and r2.RigType ~= u824.HumanoidRigType.R15 then
        local r327 = u1130:GetChildren()

        for r4, u1132 in ipairs(r327) do
            if u1132:IsA("CharacterMesh") then
                pcall(function()
                    local r290 = u1131:GetChildren()

                    for r1, r2 in ipairs(r290) do
                        if r2:IsA("CharacterMesh") and r2.BodyPart == u1132.BodyPart then
                            r2:Destroy()
                        end
                    end

                    u1132:Clone().Parent = u1131
                end)
            end
        end

        return
    end

    for r7, r8 in ipairs({
        "Head",
        "UpperTorso",
        "LowerTorso",
        "LeftUpperArm",
        "LeftLowerArm",
        "LeftHand",
        "RightUpperArm",
        "RightLowerArm",
        "RightHand",
        "LeftUpperLeg",
        "LeftLowerLeg",
        "LeftFoot",
        "RightUpperLeg",
        "RightLowerLeg",
        "RightFoot"
    }) do
        local u1133 = u1130:FindFirstChild(r8)
        local u1134 = u1131:FindFirstChild(r8)

        if u1133 and u1134 and u1133:IsA("MeshPart") and u1134:IsA("MeshPart") then
            local u1135 = false

            pcall(function()
                u1134:ApplyMesh(u1133)
                u1135 = true
            end)

            if not u1135 then
                pcall(function()
                    u1134.MeshId = u1133.MeshId
                end)

                pcall(function()
                    u1134.TextureID = u1133.TextureID
                end)
            end

            pcall(function()
                local r4 = u1134:FindFirstChildOfClass("SurfaceAppearance")

                if r4 then
                    r4:Destroy()
                end

                local r0 = u1133:FindFirstChildOfClass("SurfaceAppearance")

                if r0 then
                    r0:Clone().Parent = u1134
                end
            end)
        end
    end
end

u1070.avatar_changer.transfer_body_meshes = __S[3]

__S[3] = function(r0, r1, u1136, u1137)
    if not r0 or not r1 or not u1136 then
        return false
    end

    pcall(function()
        if u1136.ApplyDescriptionClientServer then
            u1136:ApplyDescriptionClientServer(u1137)
        else
            u1136:ApplyDescription(u1137)
        end
    end)

    u1070.avatar_changer.transfer_body_meshes(r0, r1, u1136)

    for r5, r6 in ipairs({"Shirt", "Pants", "ShirtGraphic"}) do
        local r15 = r0:FindFirstChildOfClass(r6)

        if r15 then
            local r7 = r1:FindFirstChildOfClass(r6)

            if r7 then
                r7:Destroy()
            end

            r15:Clone().Parent = r1
        end
    end

    local r15_2 = r0:FindFirstChildOfClass("BodyColors")
    local r6_2 = r1:FindFirstChildOfClass("BodyColors")

    if not r6_2 then
        r6_2 = u850.new("BodyColors")
        r6_2.Parent = r1
    end

    if r15_2 then
        r6_2.HeadColor3 = r15_2.HeadColor3
        r6_2.TorsoColor3 = r15_2.TorsoColor3
        r6_2.LeftArmColor3 = r15_2.LeftArmColor3
        r6_2.RightArmColor3 = r15_2.RightArmColor3
        r6_2.LeftLegColor3 = r15_2.LeftLegColor3
        r6_2.RightLegColor3 = r15_2.RightLegColor3
    end

    if u1137 then
        r6_2.HeadColor3 = u1137.HeadColor
        r6_2.TorsoColor3 = u1137.TorsoColor
        r6_2.LeftArmColor3 = u1137.LeftArmColor
        r6_2.RightArmColor3 = u1137.RightArmColor
        r6_2.LeftLegColor3 = u1137.LeftLegColor
        r6_2.RightLegColor3 = u1137.RightLegColor
    end

    local r14 = r0:FindFirstChild("Head")
    local r5_2 = r1:FindFirstChild("Head")

    if r14 and r5_2 then
        local r11 = r14:FindFirstChild("face") or r14:FindFirstChildOfClass("Decal")

        if r11 then
            local r6_3 = r5_2:FindFirstChild("face") or r5_2:FindFirstChildOfClass("Decal")

            if r6_3 then
                r6_3:Destroy()
            end

            local r4 = r11:Clone()
            r4.Name = "face"
            r4.Parent = r5_2
        end
    end

    u1070.avatar_changer.apply_body_scales(u1136, u1137)
    u1070.avatar_changer.apply_special_body_parts(r1, u1137)
    u1070.avatar_changer.apply_accessories(r1, u1136, r0, u1137)
    return true
end

u1070.avatar_changer.transfer_appearance = __S[3]

__S[3] = function(r0)
    local r15 = {}
    local r325 = r0:GetChildren()

    for r3, r4 in ipairs(r325) do
        if r4:IsA("Tool") or r4:IsA("HopperBin") then
            table.insert(r15, r4)
            r4.Parent = nil
        end
    end

    local r3_2 = r0.Parent and r0.Parent:FindFirstChild("Backpack")

    if r3_2 then
        local r327 = r3_2:GetChildren()

        for r6, r7 in ipairs(r327) do
            if r7:IsA("Tool") or r7:IsA("HopperBin") then
                table.insert(r15, r7)
            end
        end
    end

    local r4_2 = {}
    local r323 = r0:GetDescendants()

    for r9, r10 in ipairs(r323) do
        if r10:IsA("BaseScript") then
            r4_2[r10] = true

            if r10.Parent then
                r4_2[r10.Parent] = true
            end
        end
    end

    local r321 = r0:GetChildren()

    for r12, r13 in ipairs(r321) do
        if not r4_2[r13] and (r13:IsA("Accessory") or r13:IsA("Hat") or r13:IsA("BodyColors") or r13:IsA("CharacterMesh") or r13:IsA("Shirt") or r13:IsA("Pants") or r13:IsA("ShirtGraphic")) then
            r13:Destroy()
        end
    end

    for r15_2, r16 in ipairs(r15) do
        if r16 and r16.Parent == nil then
            if r3_2 then
                r16.Parent = r3_2
            end

            if not r3_2 then
                r16.Parent = r0
            end
        end
    end
end

u1070.avatar_changer.clean = __S[3]

__S[3] = function(r0, u1138, r2)
    if not r0 or not u1138 then
        return
    end

    if not r2 then
        local r5 = u1070.avatar_changer.original_parts or {}
        u1070.avatar_changer.original_parts = r5

        if not u1070.avatar_changer.original_parts[r0.Name] then
            local r7 = r0:Clone()
            local r319 = r7:GetChildren()

            for r4, r5_2 in ipairs(r319) do
                if r5_2:IsA("JointInstance") then
                    r5_2:Destroy()
                end
            end

            u1070.avatar_changer.original_parts[r0.Name] = r7
        end
    end

    u1138.Name = r0.Name
    u1138.CFrame = r0.CFrame
    u1138.Color = r0.Color
    u1138.Transparency = r0.Transparency
    u1138.CanCollide = r0.CanCollide
    u1138.Anchored = r0.Anchored
    local r315 = r0:GetChildren()

    for r8, u1139 in ipairs(r315) do
        if u1139:IsA("Attachment") and not u1138:FindFirstChild(u1139.Name) then
            pcall(function()
                u1139:Clone().Parent = u1138
            end)
        end
    end

    local r4_2 = {}
    local r14 = r0.Parent

    if r14 then
        local r317 = r14:GetDescendants()

        for r11, r12 in ipairs(r317) do
            if r12:IsA("Motor6D") and (r12.Part0 == r0 or r12.Part1 == r0) then
                table.insert(r4_2, {
                    class = r12.ClassName,
                    name = r12.Name,
                    parent = r12.Parent == r0 and "new" or r12.Parent,
                    part0 = r12.Part0 == r0 and "new" or r12.Part0,
                    part1 = r12.Part1 == r0 and "new" or r12.Part1,
                    c0 = r12.C0,
                    c1 = r12.C1,
                    joint_obj = r12
                })
            end
        end
    end

    u1138.Parent = r0.Parent

    for r14_2, u1140 in ipairs(r4_2) do
        local u1141 = u1140.joint_obj
        local r4_3 = u1140.part0 == "new" and u1138 or u1140.part0
        local r5_3 = u1140.part1 == "new" and u1138 or u1140.part1
        local r6 = u1140.parent == "new" and u1138 or u1140.parent

        pcall(function()
            u1141:Destroy()
        end)

        local u1142 = r4_3
        local u1143 = r5_3
        local u1144 = r6

        pcall(function()
            local r0 = u850.new("Motor6D")
            r0.Name = u1140.name
            r0.Part0 = u1142
            r0.Part1 = u1143
            r0.C0 = u1140.c0
            r0.C1 = u1140.c1
            r0.Parent = u1144
        end)
    end

    r0:Destroy()
end

u1070.avatar_changer.replace_body_part = __S[3]

__S[3] = function(u1145)
    if not u1145 then
        return
    end

    pcall(u1070.avatar.remove_headless, u1145)
    pcall(u1070.avatar.remove_korblox, u1145)

    pcall(function()
        for r1, r2 in ipairs({"RightUpperLeg", "RightLowerLeg", "RightFoot"}) do
            local r3 = u1145:FindFirstChild(r2)

            if r3 then
                r3.Transparency = 0
            end
        end

        local r0 = u1145:FindFirstChild("RightUpperLeg")

        if r0 then
            r0 = r0:FindFirstChild("KorbloxLeg")
        end

        if r0 then
            r0:Destroy()
        end
    end)

    if not u1070.avatar_changer.original_parts then
        return
    end

    for r4, u1146 in pairs(u1070.avatar_changer.original_parts) do
        local u1147 = u1145:FindFirstChild(r4)

        if u1147 then
            pcall(function()
                u1070.avatar_changer.replace_body_part(u1147, u1146:Clone(), true)
            end)
        end
    end

    u1070.avatar_changer.original_parts = nil
end

u1070.avatar_changer.revert_to_original = __S[3]

__S[3] = function(u1148, r1, u1149)
    if u1070.avatar_changer.applying then
        return
    end

    u1070.avatar_changer.applying = true

    pcall(function()
        u1070.avatar_changer.expected_accessories = #u1148:GetAccessories(true)
    end)

    task.spawn(function()
        local function u1150()
            local function r6()
                if u1149 then
                    return false
                end

                return not u1070.avatar_changer.enabled
            end

            local r7 = u1061.Character or u1061.CharacterAdded:Wait()

            if r6() then
                u1070.avatar_changer.applying = false
                return
            end

            if not r7 then
                u1070.avatar_changer.applying = false
                return
            end

            r7 = u1061.Character or r7
            local u1151 = r7:FindFirstChildOfClass("Humanoid") or r7:WaitForChild("Humanoid", 5)

            if not u1151 then
                u1070.avatar_changer.applying = false
                return
            end

            if not u1149 then
                u1070.avatar_changer.revert_to_original(r7)
            end

            u1070.avatar_changer.clean(r7)

            if r6() then
                u1070.avatar_changer.applying = false
                return
            end

            local r6_2 = u1070.avatar_changer.create_temp_model(u1148, u1151.RigType)
            local r9 = false

            if r6_2 then
                r9 = u1070.avatar_changer.transfer_appearance(r6_2, r7, u1151, u1148)
                r6_2:Destroy()
            end

            if r9 then
                return
            end

            pcall(function()
                if u1151.ApplyDescriptionClientServer then
                    u1151:ApplyDescriptionClientServer(u1148)
                else
                    u1151:ApplyDescription(u1148)
                end
            end)

            u1070.avatar_changer.apply_body_scales(u1151, u1148)
            u1070.avatar_changer.apply_special_body_parts(r7, u1148)
            local r2 = r7:FindFirstChildOfClass("BodyColors")

            if not r2 then
                r2 = u850.new("BodyColors")
                r2.Parent = r7
            end

            r2.HeadColor3 = u1148.HeadColor
            r2.TorsoColor3 = u1148.TorsoColor
            r2.LeftArmColor3 = u1148.LeftArmColor
            r2.RightArmColor3 = u1148.RightArmColor
            r2.LeftLegColor3 = u1148.LeftLegColor
            r2.RightLegColor3 = u1148.RightLegColor
            u1070.avatar_changer.apply_accessories(r7, u1151, nil, u1148)
        end

        pcall(u1150)
        u1150 = u1070.avatar_changer
        u1150.applying = false
    end)
end

u1070.avatar_changer.apply_description = __S[3]

__S[3] = function(u1153)
    if u1070.avatar_changer.applying then
        return
    end

    u1070.avatar_changer.attempt_id = (u1070.avatar_changer.attempt_id or 0) + 1
    local u1152 = u1070.avatar_changer.attempt_id

    task.spawn(function()
        if not u1070.avatar_changer.enabled or u1070.avatar_changer.target ~= u1153 or u1070.avatar_changer.attempt_id ~= u1152 then
            return
        end

        local r0 = u1077(u1153)

        if not r0 then
            return
        end

        if u1070.avatar_changer.applied_id == r0 then
            return
        end

        local r1 = u1070.avatar_changer.get_description(r0)

        if not r1 then
            return
        end

        if not u1070.avatar_changer.enabled or u1070.avatar_changer.target ~= u1153 or u1070.avatar_changer.attempt_id ~= u1152 then
            return
        end

        u1070.avatar_changer.applied_id = r0
        u1070.avatar_changer.apply_description(r1, r0)
    end)
end

u1070.avatar_changer.apply = __S[3]

__S[3] = function()
    if not u1070.avatar_changer.original_desc then
        return
    end

    u1070.avatar_changer.applied_id = nil
    u1070.avatar_changer.applying = false
    local r0 = u1061.Character

    if r0 then
        u1070.avatar_changer.revert_to_original(r0)
    end

    u1070.avatar_changer.apply_description(u1070.avatar_changer.original_desc, u1061.UserId, true)
end

u1070.avatar_changer.restore = __S[3]

local function u1154(r0, r1)
    u1070.avatar_changer.applying = false
    u1070.avatar_changer.applied_id = nil
    u1070.avatar_changer.apply(r0)
    local r2 = 0

    while not u1070.avatar_changer.applying and r2 < 2 do
        task.wait(0.05)
        r2 = r2 + 0.05
    end

    local r2_2 = 0

    while u1070.avatar_changer.applying do
        if not (r2_2 < (r1 or 8)) then
            break
        end

        task.wait(0.05)
        r2_2 = r2_2 + 0.05
    end
end

function u1070.avatar_changer.reapply_on_spawn(u1155)
    if not (u1070.avatar_changer.enabled and u1070.avatar_changer.target ~= "") then
        return
    end

    if not u1155 then
        return
    end

    u1070.avatar_changer.respawn_token = (u1070.avatar_changer.respawn_token or 0) + 1
    local u1156 = u1070.avatar_changer.respawn_token

    task.spawn(function()
        if not (u1155:FindFirstChildOfClass("Humanoid") or u1155:WaitForChild("Humanoid", 10)) then
            return
        end

        u1155:WaitForChild("HumanoidRootPart", 10)
        local u1157 = false

        pcall(function()
            u1157 = u1061:HasAppearanceLoaded()
        end)

        if not u1157 then
            local u1158 = false

            local r1 = u1061.CharacterAppearanceLoaded:Connect(function()
                u1158 = true
            end)

            local r3 = 0

            while not u1158 and r3 < 6 do
                task.wait(0.1)
                r3 = r3 + 0.1

                pcall(function()
                    if u1061:HasAppearanceLoaded() then
                        u1158 = true
                    end
                end)
            end

            if r1 then
                r1:Disconnect()
            end
        end

        if u1070.avatar_changer.respawn_token ~= u1156 then
            return
        end

        for r1_2 = 1, 3 do
            if u1070.avatar_changer.respawn_token ~= u1156 then
                return
            end

            if not (u1070.avatar_changer.enabled and u1070.avatar_changer.target ~= "") then
                return
            end

            if u1155.Parent == nil then
                return
            end

            u1154(u1070.avatar_changer.target, 8)

            if r1_2 < 3 then
                task.wait(1)
            end
        end
    end)
end

u1061.CharacterAdded:Connect(function(r0)
    u1070.avatar_changer.reapply_on_spawn(r0)
end)

__S[3] = function(r0)
    local r4 = r0:FindFirstChild("RightLeg") or r0:FindFirstChild("Right Leg")

    if not r4 then
        return
    end

    local r296 = r4:GetChildren()

    for r2, r3 in ipairs(r296) do
        if r3:IsA("SpecialMesh") or r3:IsA("Mesh") then
            r3:Destroy()
        end
    end

    local r1 = u850.new("SpecialMesh")
    r1.MeshId = "rbxassetid://101851696"
    r1.TextureId = "rbxassetid://115727863"
    r1.Scale = Vector3.new(1, 1, 1)
    r1.Parent = r4
end

u1070.avatar.apply_korblox = __S[3]

__S[3] = function(r0)
    local r1 = r0:FindFirstChild("RightLeg") or r0:FindFirstChild("Right Leg")

    if not r1 then
        return
    end

    local r293 = r1:GetChildren()

    for r2, r3 in ipairs(r293) do
        if r3:IsA("SpecialMesh") and r3.MeshId == "rbxassetid://101851696" then
            r3:Destroy()
        end
    end
end

u1070.avatar.remove_korblox = __S[3]

__S[3] = function(r0)
    u1070.avatar.korblox_enabled = r0

    if u1070.avatar.korblox_conn then
        u1070.avatar.korblox_conn:Disconnect()
        u1070.avatar.korblox_conn = nil
    end

    local r2 = u1061.Character

    if r0 then
        if r2 then
            u1070.avatar.apply_korblox(r2)
        end

        local function r0_2(r0)
            task.wait(0.1)

            if u1070.avatar.korblox_enabled then
                u1070.avatar.apply_korblox(r0)
            end
        end

        u1070.avatar.korblox_conn = u1061.CharacterAdded:Connect(r0_2)
    elseif r2 then
        u1070.avatar.remove_korblox(r2)
    end
end

u1070.avatar.set_korblox = __S[3]

__S[3] = function(r0)
    local r1 = r0:FindFirstChild("Head")

    if not r1 then
        return
    end

    r1.Transparency = 1
    local r1_2 = r1:FindFirstChildOfClass("Decal")

    if r1_2 then
        r1_2:Destroy()
    end
end

u1070.avatar.apply_headless = __S[3]

__S[3] = function(r0)
    local r2 = r0:FindFirstChild("Head")

    if not r2 then
        return
    end

    r2.Transparency = 0
end

u1070.avatar.remove_headless = __S[3]

__S[3] = function(r0)
    u1070.avatar.headless_enabled = r0

    if u1070.avatar.headless_conn then
        u1070.avatar.headless_conn:Disconnect()
        u1070.avatar.headless_conn = nil
    end

    local r2 = u1061.Character

    if r0 then
        if r2 then
            u1070.avatar.apply_headless(r2)
        end

        local function r0_2(r0)
            task.wait(0.1)

            if u1070.avatar.headless_enabled then
                u1070.avatar.apply_headless(r0)
            end
        end

        u1070.avatar.headless_conn = u1061.CharacterAdded:Connect(r0_2)
    else
        if r2 then
            u1070.avatar.remove_headless(r2)
        end
    end
end

u1070.avatar.set_headless = __S[3]

__S[3] = function(r0)
    return 0.5 + (math.clamp(r0 or u1070.config.accuracy, 1, 100) - 1) * 0.010101010101010102
end

u1070.parry.get_divisor_multiplier = __S[3]

__S[3] = function(r0, r1)
    return math.clamp(u1070.cache.get_ping() / 10 / 10, 5, 17) + math.max(r0 / ((2.4 + math.min(math.max(r0 - 9.5, 0), 650) * 0.002) * u1070.parry.get_divisor_multiplier(r1)), 9.5)
end

u1070.parry.get_premium_parry_distance = __S[3]

__S[3] = function()
    local r0 = u1070.parry_cooldown
    r0.pending_id = r0.pending_id + 1
    local u1159 = r0.pending_id

    task.delay(r0.success_window, function()
        if u1070.parry_cooldown.pending_id == u1159 then
            u1070.parry_cooldown.failed_at = u817()
        end
    end)
end

u1070.parry.mark_attempt = __S[3]

__S[3] = function(u1160)
    if u1070.parry_cooldown.conn then
        u1070.parry_cooldown.conn:Disconnect()
        u1070.parry_cooldown.conn = nil
    end

    if not u1160 then
        return
    end

    u1070.parry_cooldown.last_parrying = u1160:GetAttribute("Parrying")
    u1070.parry_cooldown.failed_at = 0

    u1070.parry_cooldown.conn = u1160:GetAttributeChangedSignal("Parrying"):Connect(function()
        local r0 = u1160:GetAttribute("Parrying")

        if u1070.parry_cooldown.last_parrying == true and r0 == false then
            u1070.parry_cooldown.failed_at = u817()
        elseif r0 == nil or r0 == true then
            u1070.parry_cooldown.failed_at = 0
        end

        u1070.parry_cooldown.last_parrying = r0
    end)
end

u1070.parry.hook_cooldown_tracker = __S[3]

if u1061.Character then
    u808(u1070.parry.hook_cooldown_tracker, u1061.Character)
end

u1061.CharacterAdded:Connect(function(r0)
    pcall(u1070.parry.hook_cooldown_tracker, r0)
end)

__S[3] = function()
    local r291 = u1070.ball.get_all()
    local r4 = 0

    for r1, r2 in ipairs(r291) do
        r4 = math.max(r4, u1070.ball.get_velocity(r2.part, r2.model).Magnitude)
    end

    return math.clamp(u1070.parry.get_premium_parry_distance(r4, u1070.config.accuracy), 4, 60)
end

u1070.parry_visualizer.get_parry_radius = __S[3]

__S[3] = function()
    local r4 = u1070.parry_visualizer

    if r4.sphere and r4.sphere.Parent then
        r4.sphere:Destroy()
    end

    r4.sphere = nil
    r4.weld = nil
    local r5 = u1070.player.get_root()

    if not r5 then
        return
    end

    local r6 = u850.new("Part")
    r6.Name = "ParryVisualizerSphere"
    r6.Shape = u824.PartType.Ball
    r6.Material = u824.Material.ForceField
    r6.Color = r4.color
    r6.Size = Vector3.new(8, 8, 8)
    r6.Anchored = true
    r6.CanCollide = false
    r6.CanTouch = false
    r6.CanQuery = false
    r6.CastShadow = false
    r6.Transparency = 0.35
    r6.CFrame = r5.CFrame
    r6.Parent = u1058
    r4.sphere = r6
end

u1070.parry_visualizer.rebuild_sphere = __S[3]

__S[3] = function(u1163)
    local u1161 = u1070.parry_hits
    local r9 = u1161.color

    while #u1161.parts >= 20 do
        local r5 = table.remove(u1161.parts, 1)

        if r5 and r5.Parent then
            r5:Destroy()
        end
    end

    local u1162 = {}

    for r2 = 1, 12 do
        local r3 = r2 <= 4
        local r1 = r3 and math.random(70, 110) / 100 or math.random(25, 55) / 100
        local r12 = u850.new("Part")
        r12.Size = Vector3.new(0.1, r1, 0.1)
        r12.Anchored = true
        r12.CanCollide = false
        r12.CanTouch = false
        r12.CanQuery = false
        r12.CastShadow = false
        r12.Material = u824.Material.Neon
        r12.Color = r9
        r12.CFrame = u819.new(u1163)
        r12.Parent = u1058

        if r2 == 1 then
            local r4 = u850.new("PointLight")
            r4.Brightness = 5
            r4.Range = 12
            r4.Color = r9
            r4.Parent = r12
        end

        r2 = r2 / 12 * 3.141592653589793 * 2 + math.random() * 0.5
        local r7 = r3 and 3.141592653589793 * 0.35 + math.random() * 3.141592653589793 * 0.3 or math.random() * 3.141592653589793

        table.insert(u1162, {
            part = r12,
            dir = Vector3.new(math.sin(r7) * math.cos(r2), math.abs(math.cos(r7)) * 0.5 + math.random() * 0.6, math.sin(r7) * math.sin(r2)).Unit,
            speed = r3 and math.random(6, 10) or math.random(3, 6),
            init_len = r1,
            rx = (math.random() - 0.5) * 0.25,
            ry = (math.random() - 0.5) * 0.25,
            rz = (math.random() - 0.5) * 0.25
        })

        table.insert(u1161.parts, r12)
    end

    task.spawn(function()
        local r8 = 0

        while r8 < 1.4 do
            r8 = r8 + u1063:Wait()
            local r9 = r8 / 1.4

            for r1, r2 in ipairs(u1162) do
                if r2.part.Parent then
                    r2.part.CFrame = u819.new(u1163 + r2.dir * (r2.speed * (1 - (1 - r9) ^ 3) * 3.5)) * u819.Angles(r2.rx * r8 * 6, r2.ry * r8 * 6, r2.rz * r8 * 6)
                    local r3 = math.max(1 - r9, 0)
                    r2.part.Size = Vector3.new(0.1, r2.init_len * r3, 0.1)
                    r2.part.Transparency = math.clamp((r9 - 0.3) / 0.7, 0, 1)
                    local r3_2 = r2.part:FindFirstChildOfClass("PointLight")

                    if r3_2 then
                        r3_2.Brightness = 5 * (1 - r9) ^ 2
                    end
                end
            end
        end

        for r4, r5 in ipairs(u1162) do
            if r5.part.Parent then
                local r6 = table.find(u1161.parts, r5.part)

                if r6 then
                    table.remove(u1161.parts, r6)
                end

                r5.part:Destroy()
            end
        end
    end)
end

u1070.parry_hits.spawn = __S[3]

__S[3] = function()
    u1070.parry_hits.active = true
end

u1070.parry_hits.start = __S[3]

__S[3] = function()
    u1070.parry_hits.active = false

    for r1, r2 in ipairs(u1070.parry_hits.parts) do
        if r2 and r2.Parent then
            r2:Destroy()
        end
    end

    u1070.parry_hits.parts = {}
end

u1070.parry_hits.stop = __S[3]

__S[3] = function(r0)
    u1070.parry_hits.color = r0
end

u1070.parry_hits.update_color = __S[3]

__S[3] = function()
    if u1070.parry_visualizer.active then
        return
    end

    u1070.parry_visualizer.active = true
    u1070.parry_visualizer.rebuild_sphere()

    u1070.parry_visualizer.char_conn = u1061.CharacterAdded:Connect(function()
        task.wait(0.5)

        if u1070.parry_visualizer.active then
            u1070.parry_visualizer.rebuild_sphere()
        end
    end)

    local function r3()
    end

    u1070.parry_visualizer.connection = u1063:Connect(r3)
end

u1070.parry_visualizer.start = __S[3]

__S[3] = function()
    if not u1070.parry_visualizer.active then
        return
    end

    u1070.parry_visualizer.active = false

    if u1070.parry_visualizer.connection then
        u1070.parry_visualizer.connection:Disconnect()
        u1070.parry_visualizer.connection = nil
    end

    if u1070.parry_visualizer.char_conn then
        u1070.parry_visualizer.char_conn:Disconnect()
        u1070.parry_visualizer.char_conn = nil
    end

    if u1070.parry_visualizer.sphere and u1070.parry_visualizer.sphere.Parent then
        u1070.parry_visualizer.sphere:Destroy()
    end

    u1070.parry_visualizer.sphere = nil
    u1070.parry_visualizer.weld = nil

    for r2, r3 in ipairs(u1070.parry_visualizer.parts) do
        if r3 and r3.Parent then
            r3:Destroy()
        end
    end

    u1070.parry_visualizer.parts = {}
end

u1070.parry_visualizer.stop = __S[3]

__S[3] = function(r0)
    u1070.parry_visualizer.color = r0

    if u1070.parry_visualizer.sphere and u1070.parry_visualizer.sphere.Parent then
        u1070.parry_visualizer.sphere.Color = r0
    end
end

u1070.parry_visualizer.update_color = __S[3]

local function KTL_MinhdzAbilityImage(abilityName)
    if not abilityName or abilityName == "" then
        return ""
    end
    local shared = u1057:FindFirstChild("Shared")
    local abilities = shared and shared:FindFirstChild("Abilities")
    local module = abilities and abilities:FindFirstChild(abilityName)
    if not module then
        return ""
    end
    local ok, data = pcall(require, module)
    if ok and type(data) == "table" and type(data.iconId) == "string" then
        return data.iconId
    end
    return ""
end

local function u1164(u1165)
    if not u1165 or u1165 == "" then
        return nil
    end

    local function r5()
        return require(u1057.Shared.Abilities[u1165])
    end

    local r4, r5_2 = pcall(r5)
    return r4 and r5_2 or nil
end

local function u1166(u1168, u1167)
    if not u1167 or u1167 == "" then
        return 0
    end

    local function r3()
        return u1168.Upgrades[u1167].Value
    end

    local r2, r3_2 = pcall(r3)
    return r2 and r3_2 or 0
end

local function u1169(r0)
    return 2 + u1166(r0, "Dribble")
end

local function u1170(r0, r1)
    if not r0 or r0 == "" then
        return nil
    end

    return r0 .. " V" .. u1166(r1, r0) + 1
end

local function u1171()
    local function r1()
        return tonumber(u1061.PlayerGui.Hotbar.Ability.ready.counts.Text)
    end

    local u1172 = pcall
    local r1_2
    u1172, r1_2 = u1172(r1)
    u1172 = u1172 and r1_2 or nil
    return u1172
end

__S[3] = function()
    local r4 = Drawing.new("Text")
    r4.Visible = false
    r4.Center = true
    r4.Outline = true
    r4.OutlineColor = u820.new(0, 0, 0)
    r4.Color = u1070.ability_esp.cd_color
    r4.Size = u1070.ability_esp.cd_size
    r4.Font = Drawing.Fonts.UI
    return r4
end

u1070.ability_esp.new_cd_drawing = __S[3]

__S[3] = function(r0)
    r0.nameDraw.Visible = false
    r0.abilityDraw.Visible = false
    r0.timerDraw.Visible = false
    r0.cdDraw.Visible = false
    r0.usesDraw.Visible = false

    for r3, r4 in ipairs(r0.cdDrawings) do
        r4.Visible = false
    end

    if r0.billboard then
        r0.billboard.Enabled = false
        r0.billboard.Adornee = nil
    end
end

u1070.ability_esp.hide_all = __S[3]

__S[3] = function(r0, r1)
    if not r0.billboard or not r0.billboard.Parent then
        if not u1070.ability_esp._holder or not u1070.ability_esp._holder.Parent then
            u1070.ability_esp._holder = u858()
        end

        local r8 = u850.new("BillboardGui")
        r8.AlwaysOnTop = true
        r8.Enabled = false
        r8.Parent = u1070.ability_esp._holder
        local r9 = u850.new("ImageLabel")
        r9.Size = u821.new(1, 0, 1, 0)
        r9.BackgroundTransparency = 1
        r9.Image = ""
        r9.Parent = r8
        local r6 = u850.new("TextLabel")
        r6.BackgroundTransparency = 1
        r6.TextStrokeTransparency = 0
        r6.TextStrokeColor3 = u820.new(0, 0, 0)
        r6.Font = u824.Font.GothamBold
        r6.Parent = r8
        r0.billboard = r8
        r0.billboardImg = r9
        r0.billboardLvl = r6
    end

    local r7 = u1070.ability_esp
    local r4 = r7.ability_size * 3
    r0.billboard.Size = u821.new(0, r4, 0, r4)
    r0.billboard.StudsOffset = Vector3.new(0, 4, 0)

    if r0.billboardLvl then
        local r8_2 = r7.ability_size
        r0.billboardLvl.Size = u821.new(0, r8_2 * 2, 0, r8_2 + 4)
        r0.billboardLvl.Position = u821.new(1, -r8_2, 0, 0)
        r0.billboardLvl.TextSize = r8_2
        r0.billboardLvl.TextColor3 = r7.ability_color
    end

    r0.billboard.Adornee = r1
    return r0.billboard, r0.billboardImg, r0.billboardLvl
end

u1070.ability_esp.get_billboard = __S[3]

__S[3] = function(r0)
    if u1070.ability_esp.drawings[r0] then
        u1070.ability_esp.remove_drawing(r0)
    end

    local r3 = u1070.ability_esp

    local function r2(r0, r1)
        local r6 = Drawing.new("Text")
        r6.Visible = false
        r6.Center = true
        r6.Outline = true
        r6.OutlineColor = u820.new(0, 0, 0)
        r6.Color = r1
        r6.Size = r0
        r6.Font = Drawing.Fonts.UI
        return r6
    end

    r3.drawings[r0] = {
        nameDraw = r2(r3.name_size, r3.name_color),
        abilityDraw = r2(r3.ability_size, r3.ability_color),
        timerDraw = r2(r3.active_size, r3.active_color),
        cdDraw = r2(r3.cd_size, r3.cd_color),
        usesDraw = r2(r3.active_size, u820.fromRGB(100, 255, 150)),
        cdQueue = {},
        cdDrawings = {},
        curUses = nil,
        maxUses = nil,
        activeStart = nil,
        activeDur = nil,
        cdStart = nil,
        cdLen = nil,
        abilityName = nil,
        abilityLine = nil,
        iconId = nil,
        billboard = nil,
        billboardImg = nil,
        billboardLvl = nil,
        charConns = {}
    }
end

u1070.ability_esp.create_drawing = __S[3]

__S[3] = function(r0)
    local r2 = u1070.ability_esp.drawings[r0]

    if not r2 then
        return
    end

    r2.nameDraw:Remove()
    r2.abilityDraw:Remove()
    r2.timerDraw:Remove()
    r2.cdDraw:Remove()
    r2.usesDraw:Remove()

    for r5, r6 in ipairs(r2.cdDrawings) do
        r6:Remove()
    end

    if r2.billboard then
        r2.billboard:Destroy()
    end

    local r8 = r2.charConns or {}

    for r8_2, u1173 in ipairs(r8) do
        pcall(function()
            u1173:Disconnect()
        end)
    end

    u1070.ability_esp.drawings[r0] = nil
end

u1070.ability_esp.remove_drawing = __S[3]

__S[3] = function(r0, r1)
    local r3 = u1164(r0.abilityName)

    if not r3 then
        return
    end

    local r1_2 = u1166(r1, r0.abilityName)
    local r1_3 = math.max(0, r3.cooldown - (r3.cooldownReductionPerUpgrade or 0) * r1_2)

    if r1_3 > 0 then
        r0.cdStart = u817()
        r0.cdLen = r1_3
    end
end

u1070.ability_esp.begin_cd = __S[3]

__S[3] = function(u1174)
    u1070.ability_esp.create_drawing(u1174)

    local function u1175(u1177)
        local r8 = u1070.ability_esp.drawings[u1174]

        if not r8 then
            return
        end

        for r3, u1176 in ipairs(r8.charConns) do
            pcall(function()
                u1176:Disconnect()
            end)
        end

        table.clear(r8.charConns)
        r8.activeStart = nil
        r8.activeDur = nil
        r8.cdStart = nil
        r8.cdLen = nil
        r8.cdQueue = {}
        r8.curUses = nil
        r8.maxUses = nil

        for r6, r7 in ipairs(r8.cdDrawings) do
            r7.Visible = false
        end

        if r8.billboard then
            r8.billboard.Adornee = nil
            r8.billboard.Enabled = false
        end

        local r9 = u1174:GetAttribute("CurrentlyEquippedAbility")

        if r9 and r9 ~= "" then
            r8.abilityName = r9
            r8.abilityLine = u1170(r9, u1174)
            r8.iconId = KTL_MinhdzAbilityImage(r9)

            if r9 == "Dribble" then
                r8.maxUses = u1169(u1174)
                r8.curUses = r8.maxUses
            end
        end

        table.insert(r8.charConns, u1177.AttributeChanged:Connect(function(r0)
            local r3 = u1070.ability_esp.drawings[u1174]

            if not r3 then
                return
            end

            if r0 == "DribbleDebounce" and u1177:GetAttribute("DribbleDebounce") == true and r3.abilityName == "Dribble" then
                local r2 = u1164("Dribble")

                if r2 then
                    table.insert(r3.cdQueue, {t = u817(), dur = r2.cooldown})
                end

                if r3.curUses ~= nil then
                    r3.curUses = math.max(0, r3.curUses - 1)
                end
            end

            if r0 == "AbilityUpgrade" and u1177:GetAttribute("AbilityUpgrade") ~= nil and r3.abilityName ~= "Dribble" then
                r3.abilityLine = u1170(r3.abilityName, u1174)
                u1070.ability_esp.begin_cd(r3, u1174)
            end

            if r0 ~= "AbilityActive" then
                return
            end

            local r9 = u1177:GetAttribute("AbilityActive")
            local r10 = u1174:GetAttribute("AbilityDuration")

            if r9 == true and r10 and r10 > 0 then
                r3.activeStart = u817()
                r3.activeDur = r10
            else
                r3.activeStart = nil
                r3.activeDur = nil
            end
        end))

        table.insert(r8.charConns, u1174.AttributeChanged:Connect(function(r0)
            local r5 = u1070.ability_esp.drawings[u1174]

            if not r5 then
                return
            end

            if r0 == "CurrentlyEquippedAbility" then
                local r8 = u1174:GetAttribute("CurrentlyEquippedAbility")
                r5.abilityName = r8
                r5.abilityLine = u1170(r8, u1174)
                r5.cdStart = nil
                r5.cdLen = nil
                r5.cdQueue = {}

                for r3, r4 in ipairs(r5.cdDrawings) do
                    r4.Visible = false
                end

                r5.iconId = KTL_MinhdzAbilityImage(r8)

                if r8 == "Dribble" then
                    r5.maxUses = u1169(u1174)
                    r5.curUses = r5.maxUses
                else
                    r5.maxUses = nil
                    r5.curUses = nil
                end
            end

            if r0 ~= "AbilityDuration" then
                return
            end

            local r6 = u1177:GetAttribute("AbilityActive")
            local r7 = u1174:GetAttribute("AbilityDuration")

            if r6 == true and r7 and r7 > 0 then
                r5.activeStart = u817()
                r5.activeDur = r7
            end
        end))
    end

    if u1174.Character then
        u1175(u1174.Character)
    end

    u1174.CharacterAdded:Connect(function(r0)
        u1175(r0)
    end)

    u1174.CharacterRemoving:Connect(function()
        local r0 = u1070.ability_esp.drawings[u1174]

        if not r0 then
            return
        end

        u1070.ability_esp.hide_all(r0)
        r0.activeStart = nil
        r0.activeDur = nil
        r0.cdStart = nil
        r0.cdLen = nil
        r0.cdQueue = {}
        r0.curUses = nil
        r0.maxUses = nil
    end)
end

u1070.ability_esp.track_player = __S[3]

__S[6] = function()
    local v1 = u817()
    local v2 = u1070.ability_esp

    for v3, v4 in u811(v2.drawings) do
        if not v3 or not v3.Parent then
            v2.remove_drawing(v3)
            continue
        end

        local v5 = v3.Character
        local v6 = v5 and (v5:FindFirstChild("HumanoidRootPart"))

        if not v6 then
            v2.hide_all(v4)
            continue
        end

        local v7, v8 = u1062:WorldToViewportPoint(v6.Position + u818.new(0, 3.5, 0))

        if not v8 or v7.Z < 0 then
            v2.hide_all(v4)
            continue
        end

        v5, v8 = Vector2.new(v7.X, v7.Y), 0

        if v2.show_name then
            v7 = v2.name_mode == "Username" and v3.Name or v3.DisplayName
            v4.nameDraw.Position = v5 + Vector2.new(0, -(v2.name_size - 9))
            v4.nameDraw.Text = v7
            v4.nameDraw.Size = v2.name_size
            v4.nameDraw.Color = v2.name_color
            v4.nameDraw.Visible = true
        else
            v4.nameDraw.Visible = false
        end

        if v2.mode == "Image" then
            v4.abilityDraw.Visible = false

            if v4.iconId and v4.iconId ~= "" and v4.iconId ~= "rbxassetid://0" then
                local v9, v10, v11 = v2.get_billboard(v4, v6)
                v10.Image = v4.iconId

                if v11 then
                    v11.Text = "V" .. u1166(v3, v4.abilityName) + 1
                end

                v9.Enabled = true
            elseif v4.billboard then
                v4.billboard.Enabled = false
            end

            local v12, v13, v14 = v2.ability_size * 3, u1062:WorldToViewportPoint(v6.Position + u818.new(0, 3.5 + (v4.billboard and v4.billboard.StudsOffset.Y or 4), 0))

            if v14 and v13.Z > 0 then
                u1062:WorldToViewportPoint(v6.Position + u818.new(0, 3.5 + (v4.billboard and v4.billboard.StudsOffset.Y or 4), 0))
                v8 += v12 * (v12 / u827.max(1, u1062.ViewportSize.Y / 10)) * 0.5 + 4
            else
                v8 += v2.ability_size + 4
            end
        else
            if v4.billboard then
                v4.billboard.Enabled = false
            end

            if v4.abilityLine then
                v4.abilityDraw.Position = v5 + Vector2.new(0, v8)
                v4.abilityDraw.Text = v4.abilityLine
                v4.abilityDraw.Size = v2.ability_size
                v4.abilityDraw.Color = v2.ability_color
                v4.abilityDraw.Visible = true
                v8 += v2.ability_size + 4
            else
                v4.abilityDraw.Visible = false
            end
        end

        if v4.abilityName == "Dribble" then
            v4.cdDraw.Visible = false
            local v15 = v4.maxUses or (u1169(v3))
            v7 = v3 == u1061 and (u1171()) or v4.curUses

            if v2.show_cd and v7 ~= nil then
                local v16 = v7 / u827.max(1, v15)
                v4.usesDraw.Color = u820.fromRGB(u827.floor(255 * (1 - v16)), u827.floor(255 * v16), 50)
                v4.usesDraw.Size = v2.active_size
                v4.usesDraw.Position = v5 + Vector2.new(0, v8)
                v4.usesDraw.Text = "uses  " .. v7
                v4.usesDraw.Visible = true
                v8 += v2.active_size + 2
            else
                v4.usesDraw.Visible = false
            end

            local v17 = 1

            while v17 <= #v4.cdQueue do
                v6 = v4.cdQueue[v17]

                if v1 - v6.t >= v6.dur then
                    if v3 ~= u1061 and v4.curUses ~= nil then
                        v4.curUses = u827.min(v15, v4.curUses + 1)
                    end

                    u825.remove(v4.cdQueue, v17)
                else
                    v17 += 1
                end
            end

            while #v4.cdDrawings < #v4.cdQueue do
                u825.insert(v4.cdDrawings, v2.new_cd_drawing())
            end

            if v2.show_cd then
                for v18, v19 in u812(v4.cdQueue) do
                    v17, v15 = u827.max(0, v19.dur - (v1 - v19.t)), v4.cdDrawings[v18]
                    v15.Size = v2.cd_size
                    v15.Color = v2.cd_color
                    v15.Position = v5 + Vector2.new(0, v8)
                    v15.Text = u826.format("cd %d  %.1fs", v18, v17)
                    v15.Visible = true
                    v8 += v2.cd_size + 2
                end

                for v20 = #v4.cdQueue + 1, #v4.cdDrawings do
                    v4.cdDrawings[v20].Visible = false
                end
            else
                for v21, v22 in u812(v4.cdDrawings) do
                    v22.Visible = false
                end
            end
        else
            v4.usesDraw.Visible = false

            for v23, v24 in u812(v4.cdDrawings) do
                v24.Visible = false
            end

            if v2.show_cd and v4.cdStart and v4.cdLen then
                local v25 = u827.max(0, v4.cdLen - (v1 - v4.cdStart))

                if v25 > 0 then
                    v4.cdDraw.Size = v2.cd_size
                    v4.cdDraw.Color = v2.cd_color
                    v4.cdDraw.Position = v5 + Vector2.new(0, v8)
                    v4.cdDraw.Text = u826.format("cd  %.1fs", v25)
                    v4.cdDraw.Visible = true
                    v8 += v2.cd_size + 2
                else
                    v4.cdDraw.Visible = false
                    v4.cdStart = nil
                    v4.cdLen = nil
                end
            else
                v4.cdDraw.Visible = false

                if v4.cdStart and v4.cdLen then
                    if v4.cdLen - (v1 - v4.cdStart) <= 0 then
                        v4.cdStart = nil
                        v4.cdLen = nil
                    end
                end
            end
        end

        if v2.show_timer and v4.activeStart and v4.activeDur then
            v3 = u827.max(0, v4.activeDur - (v1 - v4.activeStart))

            if v3 > 0 then
                v4.timerDraw.Size = v2.active_size
                v4.timerDraw.Color = v2.active_color
                v4.timerDraw.Position = v5 + Vector2.new(0, v8)
                v4.timerDraw.Text = u826.format("active  %.1fs", v3)
                v4.timerDraw.Visible = true
            else
                v4.timerDraw.Visible = false
                v4.activeStart = nil
                v4.activeDur = nil
            end
        else
            v4.timerDraw.Visible = false

            if v4.activeStart and v4.activeDur then
                if v4.activeDur - (v1 - v4.activeStart) <= 0 then
                    v4.activeStart = nil
                    v4.activeDur = nil
                end
            end
        end
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ability_esp.update = __S[6]

__S[3] = function()
    if u1070.ability_esp.active then
        return
    end

    u1070.ability_esp.active = true

    pcall(function()
        require(u1057.Shared.Abilities)
    end)

    local r1 = u1054:GetPlayers()

    for r1_2, r2 in ipairs(r1) do
        if r2 ~= u1061 then
            u1070.ability_esp.track_player(r2)
        end
    end

    u1054.PlayerAdded:Connect(function(r0)
        if u1070.ability_esp.active and r0 ~= u1061 then
            u1070.ability_esp.track_player(r0)
        end
    end)

    u1054.PlayerRemoving:Connect(function(r0)
        u1070.ability_esp.remove_drawing(r0)
    end)

    u1070.ability_esp.connection = u1064:Connect(u1070.ability_esp.update)
end

u1070.ability_esp.start = __S[3]

__S[3] = function()
    if not u1070.ability_esp.active then
        return
    end

    u1070.ability_esp.active = false

    if u1070.ability_esp.connection then
        u1070.ability_esp.connection:Disconnect()
        u1070.ability_esp.connection = nil
    end

    for r1, r2 in pairs(u1070.ability_esp.drawings) do
        u1070.ability_esp.remove_drawing(r1)
    end
end

u1070.ability_esp.stop = __S[3]

__S[6] = function(v1, v2, v3, v4, v5, v6)
    if not v3 then
        local v7 = u1061.Character
        local v8 = v7 and v7.PrimaryPart

        if not v8 then
            return false, false
        end

        v3 = v8.Position
    end

    if not v4 then
        local v9 = v1:FindFirstChild("zoomies")

        if not v9 then
            return false, false
        end

        v4 = v9.VectorVelocity
        v5 = v4.Magnitude
    end

    v5 = v5 or v4.Magnitude

    if v5 < 1 then
        return false, false
    end

    local v10 = v1.Position
    v6 = v6 or (v3 - v10).Magnitude
    local v11 = 1 / v5
    local v12, v13 = v4 * v11, (v3 - v10).Unit
    v3 = v13:Dot(v12)
    local v14 = v3 < 0
    v10 = u1070.cache.get_ping()
    local v15 = v10 * 0.001
    local v16, v17, v18, v19, v20 = u827.min(v5 * 0.01, 40), v3 > 0 and 40 * v3 or 0, v3 - v13:Dot((v12 - v4).Unit), 0.5 - v15, (v6 * v11 - v15) / 1.5
    local v21, v22 = 15 - u827.min(v6 * 0.001, 15) + v17 + v16, u1070.curve_detection
    v17 = v22.per_ball[v1]

    if not v17 then
        v17 = {vel = {}, last_warping = 0, lerp = 0}
        v22.per_ball[v1] = v17
    end

    v1 = v17.vel
    v16 = #v1

    if v16 >= 4 then
        v1[1], v1[2], v1[3] = v1[2], v1[3], v1[4]
        v1[4] = v4
        v16 = 4
    else
        v16 += 1
        v1[v16] = v4
    end

    if v6 < (if v5 > 100 and v6 * v11 - v15 > v10 * 0.1 then (u827.max(v21 - 15, 15)) else v21) then
        return false, v14
    end

    v5 = u817()

    if v5 - (v22.curve_time or 0) < v20 then
        return true, v14
    end

    if v18 < v19 then
        return true, v14
    end

    v18 = u827.rad(u827.asin(u827.clamp(v3, -1, 1)))
    v17.lerp = v17.lerp + (v18 - v17.lerp) * 0.8

    if v17.lerp < 0.018 then
        v17.last_warping = v5
    end

    if v5 - v17.last_warping < v20 then
        return true, v14
    end

    if v16 == 4 then
        if v3 - v13:Dot((v12 - v1[1].Unit).Unit) < v19 then
            return true, v14
        end

        if v3 - v13:Dot((v12 - v1[2].Unit).Unit) < v19 then
            return true, v14
        end
    end

    return v3 < v19, v14
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball.is_curved = __S[6]
local u1178

local function u1179()
    if u1178 then
        return true
    end

    local r4 = u1057:FindFirstChild("Controllers")

    if not r4 then
        return false
    end

    local r292 = r4:GetChildren()

    for r1, r2 in ipairs(r292) do
        if r2.Name:find("SwordsController", 1, true) == 1 then
            local r7 = r2:FindFirstChild("PRY")

            if r7 then
                local r5, r6 = pcall(require, r7)

                if r5 and type(r6) == "function" then
                    u1178 = require(u1057.Packages.Signal).new()
                    u1178:Connect(r6)
                    return true
                end
            end
        end
    end

    return false
end

__S[6] = function()
    if u1068 then
        return false
    end

    if not u1179() then
        return false
    end

    local r1 = u1178.Fire
    local r2 = u1178
    local r4 = u1070.curve.get_cframe()
    local r5 = u1070.parry.get_event_data()
    local r6 = u1070.parry.get_mouse_vec()
    return pcall(r1, r2, 0.5, r4, r5, r6, false)
end

u1070.parry.fire_remote = __S[6]

u1061.CharacterAdded:Connect(function()
    u1070.state.grab_track = nil
end)

__S[3] = function()
    local r1 = u1061.Character

    if not r1 then
        return nil
    end

    local r4 = u1070.sword_changer.enabled

    if r4 then
        r4 = u1070.sword_changer.animations ~= "" and u1070.sword_changer.animations or r1:GetAttribute("CurrentlyEquippedSword")
    elseif not r4 then
        r4 = r1:GetAttribute("CurrentlyEquippedSword")
    end

    if not r4 then
        r4 = u1061:GetAttribute("CurrentlyEquippedSword")
    end

    return r4
end

u1070.animation.get_sword_name = __S[3]

__S[3] = function()
    local u1180 = u1070.animation.get_sword_name()
    local r4 = u1057.Shared.SwordAPI.Collection

    if u1180 then
        local function r0()
            return u1057.Shared.ReplicatedInstances.Swords.GetSword:Invoke(u1180)
        end

        local r2, r3 = pcall(r0)
        local r5 = r3

        if r2 and r5 and r5.AnimationType then
            local r0_2 = r4:FindFirstChild(r5.AnimationType)

            if r0_2 then
                return r0_2
            end
        end
    end

    return r4.Default
end

u1070.animation.get_anim_folder = __S[3]

__S[3] = function(r0, r1)
    if not r0 then
        return
    end

    local r300 = r0:GetPlayingAnimationTracks()

    for r3, u1181 in ipairs(r300) do
        for r6, r7 in ipairs(r1) do
            if u1181:GetAttribute(r7) then
                pcall(function()
                    u1181:Stop(u1181:GetAttribute("StopFadeTime"))
                end)

                break
            end
        end
    end
end

u1070.animation.stop_tracks_with_attrs = __S[3]

__S[3] = function()
    local r4 = u1061.Character

    if not r4 then
        return
    end

    local r5 = r4:FindFirstChildOfClass("Humanoid")
    local r10 = r5 and r5:FindFirstChildOfClass("Animator")

    if not r10 then
        return
    end

    if r4:GetAttribute("InOverdriveMech") then
        return
    end

    u1070.animation.stop_tracks_with_attrs(r10, {"SuccessParry", "Parry", "GrabParry"})
    local r1 = u1070.animation.get_anim_folder()

    if not r1 then
        return
    end

    local r11 = r1:FindFirstChild("GrabParry") or r1:FindFirstChild("Grab") or r1:FindFirstChild("Parry")

    if not r11 then
        return
    end

    local r13 = r10:LoadAnimation(r11)
    r13.Priority = u824.AnimationPriority.Action4
    r13:Play(r13:GetAttribute("PlayFadeTime"), r13:GetAttribute("PlayWeight"), r13:GetAttribute("PlaySpeed"))
    local r8 = r13:GetAttribute("PlaySpeed") or 1
    r4:SetAttribute("ParryTime", math.max(r4:GetAttribute("ParryTime") or 0, r13.Length == 0 and 1 or (r13.Length - r13.TimePosition) * r8))
    u1070.state.grab_track = r13
end

u1070.animation.play_grab = __S[3]

__S[3] = function()
    local u1182 = u1070.state.grab_track

    if u1182 then
        pcall(function()
            u1182:Stop(u1182:GetAttribute("StopFadeTime"))
        end)
    end

    u1070.state.grab_track = nil
    local r5 = u1061.Character

    if r5 then
        r5 = r5:FindFirstChildOfClass("Humanoid")
    end

    local r7 = r5 and r5:FindFirstChildOfClass("Animator")

    if not r7 then
        return
    end

    u1070.animation.stop_tracks_with_attrs(r7, {"GrabParry", "Parry"})
end

u1070.animation.stop_grab = __S[3]

__S[3] = function()
    local function u1183()
        local r1 = u1057.Remotes.ParrySuccess.OnClientEvent
        local u1184 = r1.Connect

        u1184(r1, function()
            local r0 = u1070.parry_cooldown
            r0.pending_id = r0.pending_id + 1
            u1070.parry_cooldown.failed_at = 0
            u1070.animation.stop_grab()

            if u1070.parry_hits.active then
                local r0_2 = u1070.player.get_root()

                if r0_2 then
                    u1070.parry_hits.spawn(r0_2.Position)
                end
            end

            if u1070.config.auto_parry and u1070.state.parried then
                local u1185 = task.delay

                u1185(0.15, function()
                    local r4 = u797:FindFirstChild("Alive")
                    local r9

                    if r4 then
                        local r8 = false
                        local r292 = r4:GetChildren()
                        r9 = true

                        for r1, r2 in ipairs(r292) do
                            if r2.Name == u1061.Name then
                                r9 = true
                            else
                                local r7 = u1054:FindFirstChild(r2.Name)

                                if not r7 then
                                    r9 = false
                                    r8 = true
                                    break
                                end

                                if r7:GetAttribute("CurrentlyEquippedAbility") ~= "Invisibility" then
                                    r8 = true
                                    r9 = false
                                    break
                                end

                                r8 = true

                                if not r2:GetAttribute("AbilityActive") then
                                    r9 = false
                                    r8 = true
                                    break
                                end

                                r9 = true
                            end
                        end

                        if not r8 then
                            r9 = false
                        end
                    else
                        r9 = false
                    end

                    if r9 and #u1070.ball.get_targeted() > 0 then
                        u1070.state.parried = false
                    end
                end)
            end
        end)
    end

    pcall(u1183)
end

u1070.animation.init = __S[3]

__S[3] = function(r0)
    local r3 = r0:FindFirstChild("CollisionWhitelist")

    if not r3 then
        return false
    end

    return r3.Value == u1061.Character
end

u1070.ball.is_model_targeting_me = __S[3]

__S[6] = function()
    local v1 = {}
    local v2 = {"Balls", "TrainingBalls"}

    for v3, v4 in u812(v2) do
        v3 = u797:FindFirstChild(v4)

        if not v3 then
            continue
        end

        for v5, v6 in u812(v3:GetChildren()) do
            if v6:GetAttribute("realBall") then
                u825.insert(v1, {part = v6, model = nil})
                continue
            end

            if v6:IsA("Model") then
                v5 = v6:FindFirstChild("Corpo") or v6.PrimaryPart or (v6:FindFirstChildWhichIsA("BasePart"))

                if v5 then
                    u825.insert(v1, {part = v5, model = v6})
                end
            end
        end
    end

    return v1
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball.get_all = __S[6]

__S[6] = function()
    local v1 = u1061.Name
    local v2 = {}

    for v3, v4 in u812(u1070.ball.get_all()) do
        if if v4.model then (u1070.ball.is_model_targeting_me(v4.model)) else v4.part:GetAttribute("target") == v1 then
            u825.insert(v2, v4)
        end
    end

    return v2
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball.get_targeted = __S[6]

__S[6] = function(v1, v2)
    if v2 then
        local v3 = v2:GetAttribute("Velocity")

        if u810(v3) == "Vector3" then
            return v3
        end
    end

    v2 = v1:FindFirstChild("zoomies")

    if v2 then
        return v2.VectorVelocity
    end

    return v1.AssemblyLinearVelocity
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball.get_velocity = __S[6]

__S[3] = function()
    local r5 = u797:FindFirstChild("Balls")

    if not r5 then
        return nil
    end

    local r292 = r5:GetChildren()

    for r2, r3 in ipairs(r292) do
        if r3:IsA("BasePart") then
            return r3
        end
    end

    return nil
end

u1070.ball.get_first = __S[3]

__S[6] = function(v1, v2)
    local v3 = u814(v1)
    local v4 = u1070.curve_detection

    if not u1070.state.ball_tracking[v3] then
        u1070.state.ball_tracking[v3] = {samples = {}}
    end

    if not v4.velocity_history[v3] then
        v4.velocity_history[v3] = {}
    end

    if not v4.dot_histories[v3] then
        v4.dot_histories[v3] = {}
    end

    local v5 = u1070.ball.get_velocity(v1, v2)
    local v6 = u1070.player.get_root()
    local v7 = u1070.state.ball_tracking[v3].samples
    u825.insert(v7, {vel = v5, t = u1066()})

    if #v7 > 20 then
        u825.remove(v7, 1)
    end

    v7 = v4.velocity_history[v3]
    u825.insert(v7, v5)

    if #v7 > 10 then
        u825.remove(v7, 1)
    end

    if v6 then
        v7, v2 = v4.dot_histories[v3], (v6.Position - v1.Position).Unit:Dot(v5.Unit)
        u825.insert(v7, v2)

        if #v7 > 10 then
            u825.remove(v7, 1)
        end
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball.update_tracking = __S[6]

__S[3] = function(u1186)
    if u1186:FindFirstChild("AeroDynamicSlashVFX") then
        pcall(function()
            u1186.AeroDynamicSlashVFX:Destroy()
        end)

        u1070.detections.tornado_time = u817()
    end

    if u1067 and u1067:FindFirstChild("Tornado") then
        local r3 = u1067.Tornado:GetAttribute("TornadoTime") or 1

        if u817() - u1070.detections.tornado_time < r3 + 0.314159 then
            return true
        end
    end

    return false
end

u1070.ball.check_tornado = __S[3]

__S[6] = function()
    local v1 = u1061.Character
    return v1 and (v1:FindFirstChild("HumanoidRootPart"))
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.player.get_root = __S[6]

__S[3] = function()
    local r4 = u1061.Character

    if not r4 then
        return false
    end

    local r3 = r4:FindFirstChildOfClass("Humanoid")
    local r0 = r4:FindFirstChild("HumanoidRootPart")
    local r1 = r3 ~= nil

    if r3 ~= nil then
        r1 = r0 ~= nil

        if r0 ~= nil then
            r1 = r3.Health > 0
        end
    end

    return r1
end

u1070.player.is_alive = __S[3]

__S[3] = function()
    local r1 = u1061.Character

    if not r1 or not r1.PrimaryPart then
        return false
    end

    return r1.PrimaryPart:FindFirstChild("SingularityCape") ~= nil
end

u1070.player.has_singularity_cape = __S[3]

__S[3] = function()
    local r4 = u797:FindFirstChild("Alive")

    if r4 then
        return r4:GetChildren()
    end

    local r4_2 = {}
    local r289 = u1054:GetPlayers()

    for r1, r2 in ipairs(r289) do
        if r2.Character then
            table.insert(r4_2, r2.Character)
        end
    end

    return r4_2
end

u1070.player.get_alive_chars = __S[3]

__S[3] = function()
    if not u1070.player.get_root() then
        return nil
    end

    local function r6()
        return u1056:GetMouseLocation()
    end

    local r5, r6_2 = pcall(r6)

    if not r5 then
        return nil
    end

    local r0 = u1062:ScreenPointToRay(r6_2.X, r6_2.Y)
    local r8 = u819.lookAt(r0.Origin, r0.Origin + r0.Direction)
    local r9 = -(1/0)
    local r295 = u1070.player.get_alive_chars()
    local r10

    for r1, r2 in ipairs(r295) do
        if not (r2 == u1061.Character) then
            local r3 = r2:FindFirstChild("HumanoidRootPart")

            if r3 then
                local r4 = r8.LookVector:Dot((r3.Position - u1062.CFrame.Position).Unit)

                if r9 < r4 then
                    r9 = r4
                    r10 = r2
                end
            end
        end
    end

    return r10
end

u1070.player.get_closest_to_cursor = __S[3]

__S[3] = function()
    if u1070.config.target_player_enabled and u1070.config.target_player_name then
        local r0 = u1054:FindFirstChild(u1070.config.target_player_name)

        if r0 and r0.Character then
            local r1 = r0.Character:FindFirstChild("HumanoidRootPart")

            if r1 then
                return r1.Position
            end
        end
    end

    local r2 = u1070.player.get_closest_to_cursor()

    if r2 then
        local r1_2 = r2:FindFirstChild("HumanoidRootPart")

        if r1_2 then
            return r1_2.Position
        end
    end

    local r0_2 = u1070.player.get_root()

    if r0_2 then
        r0_2 = r0_2.Position + u1062.CFrame.LookVector * 100
    end

    return r0_2
end

u1070.curve.get_target_pos = __S[3]

__S[3] = function()
    local r12 = u1070.player.get_root()

    if not r12 then
        return u1062.CFrame
    end

    local r13 = u1070.curve.get_target_pos() or r12.Position + u1062.CFrame.LookVector * 100
    local r7 = u1062.CFrame.RightVector
    local r1 = Vector3.new(0, 1, 0)
    local r14 = -(r13 - r12.Position).Unit
    local r15 = u1070.config.curve_mode
    local r0 = math.random

    if r15 == 1 then
        return u1062.CFrame
    elseif r15 == 2 then
        local r17 = r0(0, 1) == 0 and -1 or 1

        local r8 = {
            r14 * r0(7000, 12000) + r7 * (r17 * r0(2000, 5000)) + r1 * r0(3000, 6000),
            r14 * r0(8000, 15000) + r7 * (r17 * r0(1500, 4000)) + r1 * r0(2000, 5000),
            r7 * (r17 * r0(8000, 15000)) + r14 * r0(2000, 5000) + r1 * r0(2000, 5000),
            r7 * (r17 * r0(10000, 18000)) + r14 * r0(1000, 3000) + r1 * r0(1500, 4000),
            r14 * r0(10000, 18000) + r7 * (r17 * r0(3000, 6000)) + r1 * r0(2500, 5500),
            r1 * r0(6000, 10000) + r14 * r0(4000, 8000) + r7 * (r17 * r0(2000, 5000))
        }

        return u819.new(r12.Position, r13 + r8[r0(1, #r8)])
    elseif r15 == 3 then
        return u819.new(r12.Position, r13 + Vector3.new(0, 5, 0))
    elseif r15 == 4 then
        return u819.new(u1062.CFrame.Position, r12.Position + (r12.Position - r13).Unit * 10000 + Vector3.new(0, 1000, 0))
    elseif r15 == 5 then
        return u819.new(r12.Position, r13 + Vector3.new(0, -9e+18, 0))
    elseif r15 == 6 then
        return u819.new(r12.Position, r13 + Vector3.new(0, 9e+18, 0))
    elseif r15 == 7 then
        local r2 = math.clamp(((r12.Position - r13).Magnitude - 60) * 0.2, -25, 5)
        local r0_2 = r13 + Vector3.new(0, r2, 0)
        return u819.new(r12.Position, r0_2)
    end

    return u1062.CFrame
end

u1070.curve.get_cframe = __S[3]

__S[3] = function()
    local r6 = {}

    if u1070.config.target_player_enabled and u1070.config.target_player_name then
        local u1187 = u1054:FindFirstChild(u1070.config.target_player_name)

        if u1187 and u1187.Character and u1187.Character.PrimaryPart then
            local function r5()
                return u1062:WorldToScreenPoint(u1187.Character.PrimaryPart.Position)
            end

            local r4, r5_2 = pcall(r5)

            if r4 then
                r6[u1187.Character.Name] = r5_2
            end
        end

        return r6
    end

    local r291 = u1070.player.get_alive_chars()

    for r1, u1188 in ipairs(r291) do
        if u1188.PrimaryPart then
            local function r5_3()
                return u1062:WorldToScreenPoint(u1188.PrimaryPart.Position)
            end

            local r4_2, r5_4 = pcall(r5_3)

            if r4_2 then
                r6[u1188.Name] = r5_4
            end
        end
    end

    return r6
end

u1070.parry.get_event_data = __S[3]

__S[3] = function()
    if u1070.config.is_mobile then
        local r0 = u1062.ViewportSize
        return {r0.X / 2, r0.Y / 2}
    end

    if u1070.config.target_player_enabled and u1070.config.target_player_name then
        local r0_2 = u1054:FindFirstChild(u1070.config.target_player_name)

        if r0_2 and r0_2.Character then
            local u1189 = r0_2.Character:FindFirstChild("HumanoidRootPart")

            if u1189 then
                local function r3()
                    return u1062:WorldToScreenPoint(u1189.Position)
                end

                local r2, r3_2 = pcall(r3)

                if r2 then
                    return {r3_2.X, r3_2.Y}
                end
            end
        end
    end

    local r2_2 = u1070.player.get_closest_to_cursor()

    if r2_2 then
        local u1190 = r2_2:FindFirstChild("HumanoidRootPart")

        if u1190 then
            local function r3_3()
                return u1062:WorldToScreenPoint(u1190.Position)
            end

            local r2_3, r3_4 = pcall(r3_3)

            if r2_3 then
                return {r3_4.X, r3_4.Y}
            end
        end
    end

    local function r2_4()
        return u1056:GetMouseLocation()
    end

    local r1, r2_5 = pcall(r2_4)

    if r1 then
        r1 = {r2_5.X, r2_5.Y}
    end

    if not r1 then
        r1 = {0, 0}
    end

    return r1
end

u1070.parry.get_mouse_vec = __S[3]

__S[3] = function()
    if u1070.config.parry_mode == "Keypress" then
        u1076()
        task.spawn(u1070.animation.play_grab)
        return
    end

    if not u1070.parry.fire_remote() then
        u1076()
    end

    task.spawn(u1070.animation.play_grab)
end

u1070.parry.execute = __S[3]

__S[6] = function(v1)
    if v1 == "Keypress" then
        u1075()
        return
    end

    if not u1070.parry.fire_remote() then
        u1075()
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.parry.execute_fast = __S[6]

__S[3] = function(r0, r1)
    local r2 = u1070.player.get_root()

    if not r2 then
        return false
    end

    local r6 = u1070.ball.get_velocity(r0, r1).Magnitude
    return (r2.Position - r0.Position).Magnitude <= u1070.parry.get_premium_parry_distance(r6, u1070.config.accuracy)
end

u1070.parry.should_fire = __S[3]

__S[3] = function()
    if not u1070.ability.cooldown_protection then
        return false
    end

    local r0 = u1070.parry_cooldown.failed_at

    if r0 == 0 then
        return false
    end

    if u817() - r0 >= u1070.parry_cooldown.duration then
        u1070.parry_cooldown.failed_at = 0
        return false
    end

    local r0_2 = pcall(function()
        u1057.Remotes.AbilityButtonPress:Fire()
    end)

    u1070.parry_cooldown.failed_at = 0
    return r0_2
end

u1070.parry.try_cooldown_protection = __S[3]

__S[3] = function()
    local u1191 = u1070.ability.auto_ability

    if not u1191 then
        return false
    end

    local function r1()
        if u1061.PlayerGui.Hotbar.Ability.UIGradient.Offset.Y ~= 0.5 then
            return false
        end

        local r9 = u1061.Character and u1061.Character:FindFirstChild("Abilities")

        if not r9 then
            return false
        end

        for r1, r2 in ipairs({
            "Raging Deflection",
            "Rapture",
            "Calming Deflection",
            "Aerodynamic Slash",
            "Fracture",
            "Death Slash"
        }) do
            local r6 = r9:FindFirstChild(r2)

            if r6 and r6.Enabled then
                u1057.Remotes.AbilityButtonPress:Fire()

                if r2 == "Death Slash" then
                    local u1192 = task.delay

                    u1192(2.432, function()
                        pcall(function()
                            u1057:WaitForChild("Remotes"):WaitForChild("DeathSlashShootActivation"):FireServer(true)
                        end)
                    end)
                end

                return true
            end
        end

        return false
    end

    u1191 = pcall
    local r1_2
    u1191, r1_2 = u1191(r1)
    return u1191 and r1_2
end

u1070.parry.try_auto_ability = __S[3]

__S[6] = function()
    local v1 = u1070.config

    if not v1.auto_parry then
        return
    end

    if u1070.triggerbot.enabled then
        return
    end

    if u1070.phantom.active then
        return
    end

    local v2 = u1061.Character

    if not v2 then
        return
    end

    local v3 = v2:FindFirstChild("HumanoidRootPart")

    if not v3 then
        return
    end

    local v4 = v2:FindFirstChildOfClass("Humanoid")

    if not v4 or v4.Health <= 0 then
        return
    end

    if v2.PrimaryPart and (v2.PrimaryPart:FindFirstChild("SingularityCape")) then
        return
    end

    v2 = u1070.ball.get_targeted()

    if #v2 == 0 then
        return
    end

    local v5 = v3.Position
    local v6 = u1070.state
    local v7 = u1070.detections

    for v8, v9 in u812(v2) do
        v8, v4 = v9.part, v9.model

        if v4 then
            (v4:FindFirstChild("CollisionWhitelist") or v4).Changed:Once(function()
                v6.parried = false
            end)
        else
            v8:GetAttributeChangedSignal("target"):Once(function()
                v6.parried = false
            end)
        end

        if v6.parried then
            continue
        end

        if v8:FindFirstChild("ComboCounter") then
            continue
        end

        if u1070.ball.check_tornado(v8) then
            continue
        end

        if v7.infinity and v6.infinity_active then
            continue
        end

        if v7.deathslash and v6.deathslash_active then
            continue
        end

        if v7.slashesoffury and v6.slashesoffury_active then
            continue
        end

        if v7.timehole and v6.timehole_active then
            continue
        end

        if v7.forcefield and v6.forcefield_active then
            continue
        end

        v3 = u1070.ball.get_velocity(v8, v4)
        local v10, v11 = v3.Magnitude, (v8.Position - v5).Magnitude
        u1070.ball.update_tracking(v8, v4)

        if v10 >= 40 then
            local v12, v13 = u1070.ball.is_curved(v8, v4, v5, v3, v10, v11)

            if v12 then
                continue
            end

            if v13 then
                continue
            end
        end

        if v11 > u1070.parry.get_premium_parry_distance(v10, v1.accuracy) then
            continue
        end

        if v1.randomize_accuracy then
            v8, v10 = u827.clamp(u827.floor(u827.min(v1.random_accuracy_min, v1.random_accuracy_max)), 1, 100), u827.clamp(u827.floor(u827.max(v1.random_accuracy_min, v1.random_accuracy_max)), 1, 100)
            v1.accuracy = u827.random(v8, v10)
        end

        if u1070.parry.try_cooldown_protection() then
            continue
        end

        if not u1070.parry.try_auto_ability() then
            u1070.parry.execute()
        end

        u1070.parry.mark_attempt()
        v6.parried = true
        u1070.spam.parries += 1

        u828.delay(0.5, function()
            if u1070.spam.parries > 0 then
                u1070.spam.parries -= 1
            end
        end)

        local v14 = u817()

        u828.spawn(function()
            repeat
                u1065:Wait()
            until u817() - v14 >= 1 or not v6.parried

            v6.parried = false
        end)
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.parry.process = __S[6]

__S[6] = function()
    if not u1070.triggerbot.enabled then
        return
    end

    if u1070.player.has_singularity_cape() then
        return
    end

    if u1070.triggerbot.is_parrying then
        return
    end

    local v1 = u797:FindFirstChild("Balls")

    if not v1 then
        return
    end

    for v2, v3 in u812(v1:GetChildren()) do
        if not v3:IsA("BasePart") then
            continue
        end

        if v3:GetAttribute("target") ~= u1061.Name then
            continue
        end

        u1070.triggerbot.is_parrying = true
        u828.spawn(u1070.animation.play_grab)
        u1070.parry.execute()

        v3:GetAttributeChangedSignal("target"):Once(function()
            u1070.triggerbot.is_parrying = false
        end)

        local v4 = u817()

        u828.spawn(function()
            repeat
                u1063:Wait()
            until u817() - v4 >= 1 or not u1070.triggerbot.is_parrying

            u1070.triggerbot.is_parrying = false
        end)

        break
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.triggerbot.process = __S[6]

__S[3] = function(r0)
    u1070.triggerbot.enabled = r0

    if r0 then
        if not u1070.triggerbot.connection then
            u1070.triggerbot.connection = u1063:Connect(u1070.triggerbot.process)
        end
    else
        if u1070.triggerbot.connection then
            u1070.triggerbot.connection:Disconnect()
            u1070.triggerbot.connection = nil
        end

        u1070.triggerbot.is_parrying = false
    end
end

u1070.triggerbot.set = __S[3]

__S[3] = function()
    if u1070.spam.connection_manual then
        u1070.spam.connection_manual:Disconnect()
    end

    u1070.spam.manual_enabled = true

    local function r2()
        if not u1070.spam.manual_enabled then
            return
        end

        local v1 = u1061.Character

        if not v1 then
            return
        end

        local v2 = v1:FindFirstChildOfClass("Humanoid")

        if not v2 or v2.Health <= 0 then
            return
        end

        if not v1:FindFirstChild("HumanoidRootPart") then
            return
        end

        local v3 = u1070.spam.alive_ref

        if not v3 or v3.Parent ~= u797 then
            v3 = u797:FindFirstChild("Alive")
            u1070.spam.alive_ref = v3
        end

        if not v3 or not v3:FindFirstChild(u1061.Name) then
            return
        end

        v3 = u1070.spam.manual_mode

        if v3 == "Remote" and u1070.spam.animation_fix_manual then
            u1075()
        end

        u1070.parry.execute_fast(v3)
    end --[[ LPH_NO_VIRTUALIZE ]]

    u1070.spam.connection_manual = u1065:Connect(r2)
end

u1070.spam.manual_start = __S[3]

__S[3] = function()
    u1070.spam.manual_enabled = false

    if not u1070.spam.connection_manual then
        return
    end

    u1070.spam.connection_manual:Disconnect()

    u1070.spam.connection_manual = nil
end

u1070.spam.manual_stop = __S[3]

__S[3] = function()
    if u1070.spam.connection_auto then
        u1070.spam.connection_auto:Disconnect()
    end

    u1070.spam.auto_enabled = true
    u1070.spam.parries = 0
    table.clear(u1070.spam.auto_decay_at)
    local r4 = u1070.spam.auto_decay_at
    local r5 = u1070.spam
    local r0 = u1065:Connect(nil)
end

u1070.spam.auto_start = __S[3]

__S[3] = function()
    u1070.spam.auto_enabled = false
    u1070.spam.parries = 0
    table.clear(u1070.spam.auto_decay_at)

    if u1070.spam.connection_auto then
        u1070.spam.connection_auto:Disconnect()
        u1070.spam.connection_auto = nil
    end
end

u1070.spam.auto_stop = __S[3]

__S[3] = function(r0, r1)
    u1070.player_mods.fov_enabled = r0
    local r2 = u1070.player_mods

    if not r1 then
        r1 = u1070.player_mods.fov
    end

    r2.fov = r1

    u1062.FieldOfView = r0 and u1070.player_mods.fov or 70
end

u1070.player_mods.set_fov = __S[3]

__S[3] = function(r0, r1)
    u1070.player_mods.speed_enabled = r0
    u1070.player_mods.speed = r1 or u1070.player_mods.speed

    if u1070.player_mods.speed_conn then
        u1070.player_mods.speed_conn:Disconnect()
        u1070.player_mods.speed_conn = nil
    end

    if r0 then
        local function r1_2()
            local v1 = u1061.Character
            local v2 = v1 and (v1:FindFirstChildOfClass("Humanoid"))

            if v2 then
                v2.WalkSpeed = u1070.player_mods.speed
            end
        end --[[ LPH_NO_VIRTUALIZE ]]

        u1070.player_mods.speed_conn = u1063:Connect(r1_2)
    else
        local r4 = u1061.Character

        if r4 then
            r4 = r4:FindFirstChildOfClass("Humanoid")
        end

        if r4 then
            r4.WalkSpeed = 36
        end
    end
end

u1070.player_mods.set_speed = __S[3]

__S[3] = function(r0, r1)
    u1070.player_mods.gravity_enabled = r0
    u1070.player_mods.gravity = r1 or u1070.player_mods.gravity
    local r2 = u797

    if r0 then
        r0 = u1070.player_mods.gravity
    end

    if not r0 then
        r0 = 196.2
    end

    r2.Gravity = r0
end

u1070.player_mods.set_gravity = __S[3]

__S[3] = function(r0, r1)
    u1070.player_mods.jump_power_enabled = r0
    local r2 = u1070.player_mods

    if not r1 then
        r1 = u1070.player_mods.jump_power
    end

    r2.jump_power = r1

    if u1070.player_mods.jump_conn then
        u1070.player_mods.jump_conn:Disconnect()
        u1070.player_mods.jump_conn = nil
    end

    if r0 then
        local function r1_2()
            local v1 = u1061.Character
            local v2 = v1 and (v1:FindFirstChildOfClass("Humanoid"))

            if not v2 then
                return
            end

            if v2.UseJumpPower then
                v2.JumpPower = u1070.player_mods.jump_power
            else
                v2.JumpHeight = u1070.player_mods.jump_power / 5
            end
        end --[[ LPH_NO_VIRTUALIZE ]]

        u1070.player_mods.jump_conn = u1063:Connect(r1_2)
    else
        local r3 = u1061.Character

        if r3 then
            r3 = r3:FindFirstChildOfClass("Humanoid")
        end

        if r3 then
            if r3.UseJumpPower then
                r3.JumpPower = 50
            else
                r3.JumpHeight = 7.2
            end
        end
    end
end

u1070.player_mods.set_jump_power = __S[3]

__S[3] = function(r0)
    u1070.player_mods.infinite_jump_enabled = r0

    if u1070.player_mods.infinite_jump_conn then
        u1070.player_mods.infinite_jump_conn:Disconnect()
        u1070.player_mods.infinite_jump_conn = nil
    end

    if r0 then
        local function r0_2()
            local r4 = u1061.Character

            if r4 then
                r4 = r4:FindFirstChildOfClass("Humanoid")
            end

            if r4 then
                r4:ChangeState(u824.HumanoidStateType.Jumping)
            end
        end

        u1070.player_mods.infinite_jump_conn = u1056.JumpRequest:Connect(r0_2)
    end
end

u1070.player_mods.set_infinite_jump = __S[3]

__S[3] = function()
    local r5 = u797:FindFirstChild("Balls")

    if not r5 then
        return nil
    end

    local r293 = r5:GetChildren()

    for r2, r3 in ipairs(r293) do
        if r3:IsA("BasePart") then
            return r3
        end
    end

    return nil
end

u1070.ball_trail.get_ball = __S[3]

__S[3] = function()
    local r0 = u1070.ball_trail.color

    return ColorSequence.new({
        ColorSequenceKeypoint.new(0, r0),
        ColorSequenceKeypoint.new(0.5, u820.new(math.min(r0.R * 1.3, 1), math.min(r0.G * 1.3, 1), math.min(r0.B * 1.3, 1))),
        ColorSequenceKeypoint.new(1, r0)
    })
end

u1070.ball_trail.build_color_sequence = __S[3]

__S[3] = function(r0)
    u1070.ball_trail.detach()
    local r9 = u1070.ball_trail.num_trails

    for r1 = 1, r9 do
        local r10 = r1 / r9 * 3.141592653589793 * 2
        local r17 = math.random(150, 250) / 100
        local r3 = math.random(-150, 150) / 100
        local r18 = u850.new("Attachment")
        r18.Position = Vector3.new(math.cos(r10) * r17, r3, math.sin(r10) * r17)
        r18.Parent = r0
        local r2 = u850.new("Attachment")
        r2.Position = Vector3.new(math.cos(r10 + 3.141592653589793 * 0.7) * r17 * 1.3, -r3, math.sin(r10 + 3.141592653589793 * 0.7) * r17 * 1.3)
        r2.Parent = r0
        local r19 = u850.new("Trail")
        r19.Attachment0 = r18
        r19.Attachment1 = r2
        r19.Lifetime = 0.6
        r19.MinLength = 0
        r19.FaceCamera = true
        r19.LightEmission = 1
        r19.LightInfluence = 0
        r19.Texture = "rbxassetid://5029929719"
        r19.TextureMode = u824.TextureMode.Stretch
        r19.Color = u1070.ball_trail.build_color_sequence()

        r19.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.2),
            NumberSequenceKeypoint.new(0.3, 0),
            NumberSequenceKeypoint.new(0.7, 0.3),
            NumberSequenceKeypoint.new(1, 1)
        })

        r19.WidthScale = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.1),
            NumberSequenceKeypoint.new(0.3, 0.25),
            NumberSequenceKeypoint.new(0.7, 0.15),
            NumberSequenceKeypoint.new(1, 0.02)
        })

        r19.Parent = r0

        table.insert(u1070.ball_trail.attachments, {
            a0 = r18,
            a1 = r2,
            trail = r19,
            baseAngle = r10,
            angle = 0,
            speed = math.random(15, 30) / 10,
            spiralSpeed = math.random(25, 45) / 10,
            radiusMultiplier = math.random(80, 120) / 100,
            pulseOffset = math.random() * 3.141592653589793 * 2,
            baseRadius = r17,
            baseHeight = r3,
            chaosSpeed = math.random(10, 20) / 10
        })
    end
end

u1070.ball_trail.attach = __S[3]

__S[3] = function()
    for r1, r2 in ipairs(u1070.ball_trail.attachments) do
        if r2.a0 and r2.a0.Parent then
            r2.a0:Destroy()
        end

        if r2.a1 and r2.a1.Parent then
            r2.a1:Destroy()
        end

        if r2.trail and r2.trail.Parent then
            r2.trail:Destroy()
        end
    end

    u1070.ball_trail.attachments = {}
end

u1070.ball_trail.detach = __S[3]

__S[6] = function(v1)
    if not u1070.ball_trail.active then
        return
    end

    local v2 = u817()

    for v3, v4 in u812(u1070.ball_trail.attachments) do
        if not v4.a0.Parent then
            continue
        end

        v4.angle = v4.angle + v4.speed * v1
        local v5 = v4.angle * v4.spiralSpeed
        local v6, v7, v8 = u827.sin(v2 * 4 + v4.pulseOffset) * 0.4 + 1, u827.sin(v4.angle * 3) * 0.7, u827.sin(v2 * v4.chaosSpeed + v4.pulseOffset) * 0.5
        local v9 = v4.baseRadius * v4.radiusMultiplier * v6
        local v10 = v4.baseRadius * 1.3 * v4.radiusMultiplier * v6
        v4.a0.Position = u818.new(u827.cos(v4.baseAngle + v4.angle) * v9 + u827.cos(v5) * 0.6, v4.baseHeight + u827.sin((v4.baseAngle + v4.angle) * 3) * 0.8 + v7 + v8 + u827.sin(v5 * 2) * 0.6, u827.sin(v4.baseAngle + v4.angle) * v9 + u827.sin(v5) * 0.6)
        v4.a1.Position = u818.new(u827.cos(v4.baseAngle + v4.angle + u827.pi * 0.7) * v10 + u827.sin(v5 * 1.3) * 0.5, -v4.baseHeight + u827.cos((v4.baseAngle + v4.angle) * 2.5) * 0.8 - v7 - v8 + u827.cos(v5 * 1.7) * 0.5, u827.sin(v4.baseAngle + v4.angle + u827.pi * 0.7) * v10 + u827.cos(v5 * 1.1) * 0.5)
        v4.trail.LightEmission = u827.sin(v2 * 5 + v4.pulseOffset) * 0.4 + 0.6
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.ball_trail.animate = __S[6]

__S[3] = function()
    if u1070.ball_trail.active then
        return
    end

    u1070.ball_trail.active = true;

    (function()
        local r0 = u1070.ball_trail.get_ball()

        if r0 then
            u1070.ball_trail.attach(r0)
        end
    end)()

    local function r2(v1)
        if not u1070.ball_trail.active then
            return
        end

        local v2 = u1070.ball_trail.get_ball()

        if not v2 then
            u1070.ball_trail.detach()
            return
        end

        if #u1070.ball_trail.attachments == 0 then
            u1070.ball_trail.attach(v2)
        end

        u1070.ball_trail.animate(v1)
    end --[[ LPH_NO_VIRTUALIZE ]]

    u1070.ball_trail.connection = u1063:Connect(r2)
end

u1070.ball_trail.start = __S[3]

__S[3] = function()
    if not u1070.ball_trail.active then
        return
    end

    u1070.ball_trail.active = false

    if u1070.ball_trail.connection then
        u1070.ball_trail.connection:Disconnect()
        u1070.ball_trail.connection = nil
    end

    u1070.ball_trail.detach()
end

u1070.ball_trail.stop = __S[3]

__S[3] = function(r0)
    u1070.ball_trail.color = r0

    for r2, r3 in ipairs(u1070.ball_trail.attachments) do
        if r3.trail and r3.trail.Parent then
            r3.trail.Color = u1070.ball_trail.build_color_sequence()
        end
    end
end

u1070.ball_trail.update_color = __S[3]

__S[3] = function()
    if u1070.ball_velocity.active then
        return
    end

    u1070.ball_velocity.active = true
    u1070.ball_velocity.peak = {}
    local r6 = u858()
    r6.ZIndexBehavior = u824.ZIndexBehavior.Sibling
    local u1193 = u847("Frame")
    u1193.Size = u821.new(0, 230, 0, 130)
    u1193.Position = u821.new(0, 20, 0, 150)
    u1193.BackgroundColor3 = u820.fromRGB(17, 17, 17)
    u1193.BorderSizePixel = 0
    u1193.Parent = r6
    local r0 = u850.new("UICorner")
    r0.CornerRadius = u822.new(0, 12)
    r0.Parent = u1193
    local r0_2 = u850.new("UIStroke")
    r0_2.Thickness = 1
    r0_2.Color = u820.fromRGB(105, 105, 105)
    r0_2.Parent = u1193
    local r9 = u850.new("Frame")
    r9.Size = u821.new(1, 0, 0, 34)
    r9.BackgroundColor3 = u820.fromRGB(13, 13, 13)
    r9.BorderSizePixel = 0
    r9.Parent = u1193
    local r0_3 = u850.new("UICorner")
    r0_3.CornerRadius = u822.new(0, 12)
    r0_3.Parent = r9
    local r0_4 = u850.new("Frame")
    r0_4.Size = u821.new(1, 0, 0, 12)
    r0_4.Position = u821.new(0, 0, 1, -12)
    r0_4.BackgroundColor3 = u820.fromRGB(13, 13, 13)
    r0_4.BorderSizePixel = 0
    r0_4.Parent = r9
    local r0_5 = u850.new("TextLabel")
    r0_5.Size = u821.new(1, -16, 1, 0)
    r0_5.Position = u821.new(0, 12, 0, 0)
    r0_5.BackgroundTransparency = 1
    r0_5.Text = "Ball Stats"
    r0_5.TextColor3 = u820.fromRGB(245, 245, 245)
    r0_5.TextSize = 13
    r0_5.Font = u824.Font.GothamBold
    r0_5.TextXAlignment = u824.TextXAlignment.Left
    r0_5.Parent = r9
    local u1194 = u850.new("Frame")
    u1194.Size = u821.new(1, -24, 1, -44)
    u1194.Position = u821.new(0, 12, 0, 40)
    u1194.BackgroundTransparency = 1
    u1194.Parent = u1193

    local function r4(r0, r1)
        local r3 = u850.new("Frame")
        r3.Size = u821.new(1, 0, 0, 38)
        r3.Position = u821.new(0, 0, 0, r1)
        r3.BackgroundTransparency = 1
        r3.Parent = u1194
        local r2 = u850.new("TextLabel")
        r2.Size = u821.new(1, 0, 0, 14)
        r2.Position = u821.new(0, 0, 0, 0)
        r2.BackgroundTransparency = 1
        r2.Text = r0
        r2.TextColor3 = u820.fromRGB(175, 175, 175)
        r2.TextSize = 11
        r2.Font = u824.Font.Gotham
        r2.TextXAlignment = u824.TextXAlignment.Left
        r2.Parent = r3
        local r2_2 = u850.new("TextLabel")
        r2_2.Size = u821.new(1, 0, 0, 22)
        r2_2.Position = u821.new(0, 0, 0, 15)
        r2_2.BackgroundTransparency = 1
        r2_2.Text = "0.0"
        r2_2.TextColor3 = u820.fromRGB(225, 225, 225)
        r2_2.TextSize = 18
        r2_2.Font = u824.Font.GothamBold
        r2_2.TextXAlignment = u824.TextXAlignment.Left
        r2_2.Parent = r3
        return r2_2
    end

    local u1195 = r4("Current Velocity", 0)
    local u1196 = r4("Peak Velocity", 42)
    local u1197 = false
    local u1198
    local u1199

    r9.InputBegan:Connect(function(r0)
        if r0.UserInputType == u824.UserInputType.MouseButton1 or r0.UserInputType == u824.UserInputType.Touch then
            u1197 = true
            u1198 = r0.Position
            u1199 = u1193.Position
        end
    end)

    u1056.InputChanged:Connect(function(r0)
        local r2 = u1197

        if u1197 and (r0.UserInputType == u824.UserInputType.MouseMovement or r0.UserInputType == u824.UserInputType.Touch) then
            local r1 = r0.Position - u1198
            u1193.Position = u821.new(u1199.X.Scale, u1199.X.Offset + r1.X, u1199.Y.Scale, u1199.Y.Offset + r1.Y)
        end
    end)

    u1056.InputEnded:Connect(function(r0)
        if r0.UserInputType == u824.UserInputType.MouseButton1 or r0.UserInputType == u824.UserInputType.Touch then
            u1197 = false
        end
    end)

    u1070.ball_velocity.gui = r6

    local function r6_2()
    end

    u1070.ball_velocity.connection = u1063:Connect(r6_2)
end

u1070.ball_velocity.start = __S[3]

__S[3] = function()
    if not u1070.ball_velocity.active then
        return
    end

    u1070.ball_velocity.active = false

    if u1070.ball_velocity.connection then
        u1070.ball_velocity.connection:Disconnect()
        u1070.ball_velocity.connection = nil
    end

    if u1070.ball_velocity.gui then
        u1070.ball_velocity.gui:Destroy()
        u1070.ball_velocity.gui = nil
    end

    u1070.ball_velocity.peak = {}
end

u1070.ball_velocity.stop = __S[3]

__S[3] = function()
    if u1070.no_render.active then
        return
    end

    u1070.no_render.active = true

    pcall(function()
        u1061.PlayerScripts.EffectScripts.ClientFX.Disabled = true
    end)

    if u1067 then
        u1070.no_render.connection = u1067.ChildAdded:Connect(function(r0)
            if u1070.no_render.active then
                u796:GetService("Debris"):AddItem(r0, 0)
            end
        end)
    end
end

u1070.no_render.start = __S[3]

__S[3] = function()
    if not u1070.no_render.active then
        return
    end

    u1070.no_render.active = false

    pcall(function()
        u1061.PlayerScripts.EffectScripts.ClientFX.Disabled = false
    end)

    if u1070.no_render.connection then
        u1070.no_render.connection:Disconnect()
        u1070.no_render.connection = nil
    end
end

u1070.no_render.stop = __S[3]

__S[3] = function()
    if u1070.ball_indicator.active then
        return
    end

    u1070.ball_indicator.active = true
    local r6 = u858()
    r6.ZIndexBehavior = u824.ZIndexBehavior.Sibling
    local u1200 = u850.new("Frame")
    u1200.Size = u821.new(0, u1070.ball_indicator.size, 0, u1070.ball_indicator.size)
    u1200.Position = u821.new(0.5, 0, 0.5, 0)
    u1200.AnchorPoint = Vector2.new(0.5, 0.5)
    u1200.BackgroundTransparency = 1
    u1200.Parent = r6
    local u1201 = u850.new("ImageLabel")
    u1201.BackgroundTransparency = 1
    u1201.Size = u821.new(1, 0, 1, 0)
    u1201.Position = u821.new(0.5, 0, 0.5, 0)
    u1201.AnchorPoint = Vector2.new(0.5, 0.5)
    u1201.Image = "rbxassetid://18604510750"
    u1201.ImageColor3 = u820.new(0, 0, 0)
    u1201.Parent = u1200
    u1070.ball_indicator.gui = r6

    local camera = u797.CurrentCamera
    local runService = u796:GetService("RunService")
    u1070.ball_indicator.connection = runService.RenderStepped:Connect(function(dt)
        if not u1070.ball_indicator.active then return end
        camera = u797.CurrentCamera
        local character = u835.LocalPlayer.Character
        local root = character and (character.PrimaryPart or character:FindFirstChild("HumanoidRootPart"))
        local ball = u1070.ball and u1070.ball.get_first and u1070.ball.get_first()
        if not ball or not root or not camera then
            u1201.Visible = false
            return
        end
        u1201.Visible = true
        local difference = ball.Position - root.Position
        local magnitude = difference.Magnitude
        if magnitude < 0.001 then return end
        local direction = difference.Unit
        local angle = math.atan2(direction:Dot(camera.CFrame.RightVector), direction:Dot(camera.CFrame.LookVector))
        local distance = math.clamp(magnitude / 50 * u1070.ball_indicator.distance, 0, u1070.ball_indicator.distance)
        local target = Vector2.new(math.sin(angle) * distance, -math.cos(angle) * distance)
        u1070.ball_indicator.position = u1070.ball_indicator.position:Lerp(target, math.min(12 * dt, 1))
        u1200.Position = u821.new(0.5, u1070.ball_indicator.position.X, 0.5, u1070.ball_indicator.position.Y)
        local targetRotation = math.deg(angle)
        local delta = (targetRotation - u1070.ball_indicator.rotation + 180) % 360 - 180
        u1070.ball_indicator.rotation = u1070.ball_indicator.rotation + delta * math.min(8 * dt, 1)
        u1201.Rotation = u1070.ball_indicator.rotation
    end)
end

u1070.ball_indicator.start = __S[3]

__S[3] = function()
    if not u1070.ball_indicator.active then
        return
    end

    u1070.ball_indicator.active = false

    if u1070.ball_indicator.connection then
        u1070.ball_indicator.connection:Disconnect()
        u1070.ball_indicator.connection = nil
    end

    if u1070.ball_indicator.gui then
        u1070.ball_indicator.gui:Destroy()
        u1070.ball_indicator.gui = nil
    end
end

u1070.ball_indicator.stop = __S[3]

__S[3] = function(r0)
    local u1202 = u1070.plushies.models[r0]

    if not u1202 then
        return nil
    end

    if not u1070.plushies.loaded_models[r0] then
        local function r9()
            return u796:GetObjects(u1202)[1]
        end

        local r8, r9_2 = pcall(r9)

        if not r8 or not r9_2 then
            return nil
        end

        u1070.plushies.loaded_models[r0] = r9_2
    end

    local r5 = u1070.plushies.loaded_models[r0]:Clone()
    r5.Name = r0
    local r12 = u1070.plushies.scales[r0] or 1.5
    local r296 = r5:GetDescendants()

    for r3, r4 in ipairs(r296) do
        if r4:IsA("BasePart") or r4:IsA("MeshPart") then
            r4.CanCollide = false
            r4.Anchored = false
            r4.Size = r4.Size * r12
            local r6 = r4:FindFirstChildOfClass("SpecialMesh")

            if r6 then
                r6.Scale = r6.Scale * r12
            end
        end
    end

    local r2 = r5:FindFirstChildOfClass("BasePart") or r5:FindFirstChildOfClass("MeshPart")

    if r2 then
        r5.PrimaryPart = r2
    end

    return r5
end

u1070.plushies.create = __S[3]

__S[6] = function()
    if not u1070.plushies.active then
        return
    end

    local v1 = u1061.Character

    if not v1 or not v1.PrimaryPart or not u1070.plushies.folder then
        return
    end

    local v2 = 1

    for v3 in u811(u1070.plushies.active_types) do
        local v4, v5 = u1070.plushies.positions[(v2 - 1) % #u1070.plushies.positions + 1], u1070.plushies.folder:FindFirstChild(v3)

        if not v5 then
            local v6 = u1070.plushies.create(v3)

            if v6 then
                v6.Parent = u1070.plushies.folder
                v6:SetPrimaryPartCFrame(u819.new(v1.PrimaryPart.Position + v4))
                v5 = v6
            end
        end

        if v5 and v5.PrimaryPart then
            local v7 = v5.PrimaryPart
            local v8 = u818.new(0, u827.sin(u817() * 2) * 0.3, 0)
            local v9, v10 = v1.PrimaryPart.CFrame * u819.new(v4 + v8) * (u1070.plushies.rotations[v3] or (u819.new())), v7:FindFirstChild("PlushieBP")

            if not v10 then
                v10 = u850.new("BodyPosition")
                v10.Name = "PlushieBP"
                v10.MaxForce = u818.new(40000, 40000, 40000)
                v10.P = 10000
                v10.D = 1000
                v10.Parent = v7
            end

            v10.Position = v9.Position
            v7.CFrame = u819.new(v7.Position) * v9.Rotation
        end

        v2 += 1
    end

    for v11, v12 in u812(u1070.plushies.folder:GetChildren()) do
        if not u1070.plushies.active_types[v12.Name] then
            v12:Destroy()
        end
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.plushies.update = __S[6]

__S[3] = function()
    if u1070.plushies.active then
        return
    end

    u1070.plushies.active = true
    u1070.plushies.folder = u850.new("Folder")
    u1070.plushies.folder.Name = "Plushies_Temp"
    u1070.plushies.folder.Parent = u1058
    u1070.plushies.connection = u1064:Connect(u1070.plushies.update)
end

u1070.plushies.start = __S[3]

__S[3] = function()
    if not u1070.plushies.active then
        return
    end

    u1070.plushies.active = false

    if u1070.plushies.connection then
        u1070.plushies.connection:Disconnect()
        u1070.plushies.connection = nil
    end

    if u1070.plushies.folder then
        u1070.plushies.folder:Destroy()
        u1070.plushies.folder = nil
    end
end

u1070.plushies.stop = __S[3]

__S[3] = function()
    if u1070.orbit_ball.active then
        return
    end

    u1070.orbit_ball.active = true
    u1070.orbit_ball.angle = 0

    local function r2()
    end

    u1070.orbit_ball.connection = u1063:Connect(r2)
end

u1070.orbit_ball.start = __S[3]

__S[3] = function()
    if not u1070.orbit_ball.active then
        return
    end

    u1070.orbit_ball.active = false
    local r5 = u1061.Character

    if r5 then
        r5 = r5:FindFirstChildOfClass("Humanoid")
    end

    if r5 then
        u1062.CameraSubject = r5
    end

    if u1070.orbit_ball.connection then
        u1070.orbit_ball.connection:Disconnect()
        u1070.orbit_ball.connection = nil
    end
end

u1070.orbit_ball.stop = __S[3]

__S[6] = function()
    if not u1070.winstreak.enabled then
        if u1070.winstreak.conn then
            u1070.winstreak.conn:Disconnect()
            u1070.winstreak.conn = nil
        end

        if u1070.winstreak.enabled_conn then
            u1070.winstreak.enabled_conn:Disconnect()
            u1070.winstreak.enabled_conn = nil
        end

        return
    end

    local v1 = u1061.Character

    if not v1 then
        return
    end

    local v2 = v1:FindFirstChild("WinStreakDisplay")

    if not v2 then
        v2 = v1:WaitForChild("WinStreakDisplay", 5)
    end

    if not v2 then
        return
    end

    v1 = v2:FindFirstChild("Main")

    if not v1 then
        return
    end

    local v3, v4 = v1:FindFirstChild("Icon"), v1:FindFirstChild("Value")

    if not v3 or not v4 then
        return
    end

    if u1070.winstreak.original_enabled == nil then
        u1070.winstreak.original_enabled = v2.Enabled
    end

    if not u1070.winstreak.original_text or u1070.winstreak.original_text == "" then
        u1070.winstreak.original_text = v4.Text
    end

    if not u1070.winstreak.original_icon or u1070.winstreak.original_icon == "" then
        u1070.winstreak.original_icon = v3.Image
    end

    local v5 = u1070.winstreak.streak or "1"
    v1 = u826.format("<b><stroke color='rgb(0, 0, 0)' thickness='2'>%s</stroke></b>", u814(v5))
    local v6 = u815(v5)
    v5 = if v6 and v6 >= 10 then true else false

    if u1070.winstreak.conn then
        u1070.winstreak.conn:Disconnect()
        u1070.winstreak.conn = nil
    end

    if u1070.winstreak.enabled_conn then
        u1070.winstreak.enabled_conn:Disconnect()
        u1070.winstreak.enabled_conn = nil
    end

    local v7 = false
    v3.Image = v5 and "rbxassetid://75598166115655" or "rbxassetid://89658127170771"
    v4.Text = v1
    v2.Enabled = true

    u1070.winstreak.conn = v4:GetPropertyChangedSignal("Text"):Connect(function()
        if v7 then
            return
        end

        u1070.winstreak.original_text = v4.Text
        v7 = true
        local v8 = u1070.winstreak.streak or "1"
        local v9 = u815(v8)
        v3.Image = (if v9 and v9 >= 10 then true else false) and "rbxassetid://75598166115655" or "rbxassetid://89658127170771"
        v4.Text = u826.format("<b><stroke color='rgb(0, 0, 0)' thickness='2'>%s</stroke></b>", u814(v8))
        v7 = false
    end)

    u1070.winstreak.enabled_conn = v2:GetPropertyChangedSignal("Enabled"):Connect(function()
        if v7 then
            return
        end

        u1070.winstreak.original_enabled = v2.Enabled
        v7 = true
        v2.Enabled = true
        v7 = false
    end)
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.winstreak.update = __S[6]

__S[3] = function()
    u1070.winstreak.enabled = true
    local u1203

    if not u1070.winstreak.char_conn then
        local r4 = u1070.winstreak
        local r1 = u1061.CharacterAdded
        u1203 = r1.Connect

        u1203 = u1203(r1, function()
            u1070.winstreak.original_text = nil
            u1070.winstreak.original_icon = nil
            u1070.winstreak.original_enabled = nil
            task.wait(1.5)
            pcall(u1070.winstreak.update)
        end)

        r4.char_conn = u1203
    end

    u1203 = u1070.winstreak
    u1203 = u1203.update
    pcall(u1203)
end

u1070.winstreak.start = __S[3]

__S[3] = function()
    u1070.winstreak.enabled = false

    if u1070.winstreak.char_conn then
        u1070.winstreak.char_conn:Disconnect()
        u1070.winstreak.char_conn = nil
    end

    if u1070.winstreak.conn then
        u1070.winstreak.conn:Disconnect()
        u1070.winstreak.conn = nil
    end

    if u1070.winstreak.enabled_conn then
        u1070.winstreak.enabled_conn:Disconnect()
        u1070.winstreak.enabled_conn = nil
    end

    local r4 = u1061.Character

    if r4 then
        local r6 = r4:FindFirstChild("WinStreakDisplay")

        if r6 then
            local r5 = r6:FindFirstChild("Main")

            if r5 then
                local r4_2 = r5:FindFirstChild("Icon")
                local r1 = r5:FindFirstChild("Value")

                if r4_2 and r1 then
                    if u1070.winstreak.original_text and u1070.winstreak.original_text ~= "" then
                        r1.Text = u1070.winstreak.original_text
                    end

                    if u1070.winstreak.original_icon and u1070.winstreak.original_icon ~= "" then
                        r4_2.Image = u1070.winstreak.original_icon
                    end
                end
            end

            if u1070.winstreak.original_enabled ~= nil then
                r6.Enabled = u1070.winstreak.original_enabled
            end
        end
    end

    u1070.winstreak.original_text = nil
    u1070.winstreak.original_icon = nil
    u1070.winstreak.original_enabled = nil
end

u1070.winstreak.stop = __S[3]

__S[6] = function()
    if not u1070.custom_win.enabled then
        return
    end

    local v1 = u1061:FindFirstChild("PlayerGui")

    if not v1 then
        return
    end

    local v2 = v1:FindFirstChild("announcer")

    if not v2 then
        return
    end

    v1 = u1070.custom_win.kill_message

    if v1 ~= nil and v1 ~= "" then
        local v3 = v2:FindFirstChild("Killed")

        if v3 and (v3:IsA("TextLabel") or (v3:IsA("TextBox"))) then
            if v3.Text ~= v1 then
                v3.Text = v1
            end
        end
    end

    v1 = u1070.custom_win.win_message

    if v1 ~= nil and v1 ~= "" then
        local v4 = v2:FindFirstChild("Winner")

        if v4 and (v4:IsA("TextLabel") or (v4:IsA("TextBox"))) then
            if v4.Text ~= v1 then
                v4.Text = v1
            end
        end
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u1070.custom_win.update = __S[6]

__S[3] = function()
    u1070.custom_win.stop()
    u1070.custom_win.enabled = true
    local r0 = u1061:WaitForChild("PlayerGui", 10)

    if not r0 then
        return
    end

    local r5 = r0:WaitForChild("announcer", 10)

    if not r5 then
        return
    end

    local function u1204(u1205, u1206)
        if not u1205 then
            return
        end

        table.insert(u1070.custom_win.connections, u1205.Changed:Connect(function(r0)
            if r0 ~= "Text" or not u1070.custom_win.enabled then
                return
            end

            local r2 = u1206()

            if r2 ~= nil and r2 ~= "" and u1205.Text ~= r2 then
                u1205.Text = r2
            end
        end))

        local r2 = u1206()

        if r2 ~= nil and r2 ~= "" and u1205.Text ~= r2 then
            u1205.Text = r2
        end
    end

    u1204(r5:WaitForChild("Killed", 10), function()
        return u1070.custom_win.kill_message
    end)

    u1204(r5:FindFirstChild("Winner"), function()
        return u1070.custom_win.win_message
    end)

    table.insert(u1070.custom_win.connections, r5.ChildAdded:Connect(function(r0)
        if r0.Name == "Winner" then
            u1204(r0, function()
                return u1070.custom_win.win_message
            end)
        end

        if r0.Name == "Killed" then
            u1204(r0, function()
                return u1070.custom_win.kill_message
            end)
        end
    end))
end

u1070.custom_win.start = __S[3]

__S[3] = function()
    u1070.custom_win.enabled = false

    for r1, u1207 in ipairs(u1070.custom_win.connections) do
        pcall(function()
            u1207:Disconnect()
        end)
    end

    table.clear(u1070.custom_win.connections)
end

u1070.custom_win.stop = __S[3]

local function u1208(r0)
    if type(r0) ~= "string" or r0 == "" then
        return nil
    end

    local r2 = u1058:FindFirstChild("Alive")

    if r2 then
        r2 = r2:FindFirstChild(r0)
    end

    local r3 = r2 or u1058:FindFirstChild(r0)

    if r3 and r3:IsA("Model") then
        local r2_2 = r3:FindFirstChild("HumanoidRootPart") or r3.PrimaryPart or r3:FindFirstChildWhichIsA("BasePart")

        if r2_2 then
            return r2_2.Position
        end
    end

    return nil
end

local function u1209()
    local r290 = u1070.ball.get_all()
    local r6 = 0

    for r1, r2 in ipairs(r290) do
        local r3 = u1070.ball.get_velocity(r2.part, r2.model)

        if r3 then
            local r4 = r3.Magnitude

            if r6 < r4 then
                r6 = r4
            end
        end
    end

    return r6
end

local function u1210(...)
    if not u1070.config.kill_pre_click then
        return
    end

    local v1 = u1070.player.get_root()

    if not v1 then
        return
    end

    if not u1070.player.is_alive() then
        return
    end

    local v2 = u1070.config.kill_pre_click_speed or 1

    if v2 > 1 and u1209() < v2 then
        return
    end

    local v3 = u1070.config.kill_pre_click_range or 30
    local v4 = v1.Position
    local v5 = false

    for v6 = 1, u806("#", ...) do
        v2 = u806(v6, ...)
        v6 = u1208(if u809(v2) == "string" then v2 else if u809(v2) == "table" then v2.Name or v2.DisplayName or v2.Victim or v2.Player else nil)

        if v6 and (v4 - v6).Magnitude <= v3 then
            v5 = true
            break
        end
    end

    if not v5 then
        local v7 = u1061.Character

        for v8, v9 in u812(u1070.player.get_alive_chars()) do
            if v9 ~= v7 then
                v8 = v9:FindFirstChild("HumanoidRootPart") or v9.PrimaryPart

                if v8 and (v4 - v8.Position).Magnitude <= v3 then
                    v5 = true
                    break
                end
            end
        end
    end

    if v5 then
        u808(u1070.parry.execute)
    end
end --[[ LPH_NO_VIRTUALIZE ]]

u828.spawn(function()
    local r5 = u1057:WaitForChild("Remotes", 30)

    if not r5 then
        return
    end

    local u1211 = r5:WaitForChild("Killed", 30)

    if not u1211 then
        return
    end

    pcall(function()
        u1211.OnClientEvent:Connect(u1210)
    end)
end)

__S[3] = function()
    u808(u1070.parry.process)
end --[[ LPH_NO_VIRTUALIZE ]]

u1063:Connect(__S[3])
u1070.animation.init()
u1070.avatar_changer.save_original()
__S[5] = __S[84]:create_tab("Combat", "sword")
__S[6] = __S[84]:create_tab("Detections", "shield")
__S[7] = __S[84]:create_tab("Visuals", "eye")
__S[8] = __S[84]:create_tab("Player", "user")
__S[9] = __S[84]:create_tab("Sword", "package")
__S[10] = __S[84]:create_tab("Avatar", "users")
__S[11] = __S[84]:create_tab("Blatant", "skull")
__S[12] = __S[84]:create_tab("Misc", "settings")
local KTL_World = __S[84]:create_tab("World", "globe")

local KTL_Z = {
    connections = {},
    originals = {},
    sky = {},
    weather = nil,
    weatherEmitter = nil,
    worldCC = nil,
    atmosphere = nil,
    mediaSky = nil,
    spoofed = {}
}

local KTL_ZFlags = u864._config._flags

local function KTL_ZDisconnect(key)
    local c = KTL_Z.connections[key]
    if c then
        pcall(function() c:Disconnect() end)
        KTL_Z.connections[key] = nil
    end
end

local function KTL_ZRoot(player)
    local c = player and player.Character
    return c and c:FindFirstChild("HumanoidRootPart")
end

local function KTL_ZHumanoid(player)
    local c = player and player.Character
    return c and c:FindFirstChildOfClass("Humanoid")
end

local function KTL_ZMaterial(name)
    return Enum.Material[name] or Enum.Material.SmoothPlastic
end

local KTL_ZMaterialOptions = {
    "Plastic","SmoothPlastic","Neon","Metal","Glass","ForceField","Wood","WoodPlanks",
    "Marble","Granite","Concrete","Brick","CorrodedMetal","DiamondPlate","Foil","Ice"
}

local KTL_ZSoundNames = {
    "UwU","Medal","Fatality","Skeet","Switches","Rust Headshot","Neverlose Sound",
    "Bubble","Laser","Steve","Call of Duty","Bat","TF2 Critical","Saber","Bameware"
}

local KTL_ZSoundIds = {
    ["UwU"]="rbxassetid://8323804973",["Medal"]="rbxassetid://6607336718",
    ["Fatality"]="rbxassetid://6607113255",["Skeet"]="rbxassetid://6607204501",
    ["Switches"]="rbxassetid://6607173363",["Rust Headshot"]="rbxassetid://138750331387064",
    ["Neverlose Sound"]="rbxassetid://110168723447153",["Bubble"]="rbxassetid://6534947588",
    ["Laser"]="rbxassetid://7837461331",["Steve"]="rbxassetid://4965083997",
    ["Call of Duty"]="rbxassetid://5952120301",["Bat"]="rbxassetid://3333907347",
    ["TF2 Critical"]="rbxassetid://296102734",["Saber"]="rbxassetid://8415678813",
    ["Bameware"]="rbxassetid://3124331820"
}

local function KTL_ZPlaySound(id, volume)
    if not id or tostring(id) == "" then return end
    local sound = Instance.new("Sound")
    local raw=tostring(id)
    if raw:match("^rbxassetid://") then
        sound.SoundId=raw
    elseif raw:match("%d+") then
        sound.SoundId="rbxassetid://"..raw:match("%d+")
    else
        sound.SoundId=raw
    end
    sound.Volume = math.clamp((tonumber(volume) or 50) / 100, 0, 1)
    sound.Parent = game:GetService("SoundService")
    sound:Play()
    sound.Ended:Connect(function() sound:Destroy() end)
end

local function KTL_ZResolveSound(name)
    if KTL_ZSoundIds[name] then return KTL_ZSoundIds[name] end
    local n = tostring(name or "")
    if n:match("^rbxassetid://") then return n end
    if n:match("^%d+$") then return "rbxassetid://" .. n end
    return n
end

local function KTL_ZApplyCharacterMaterial(materialName, color, colorEnabled)
    local character = u1061.Character
    if not character then return end
    local material = KTL_ZMaterial(materialName)
    for _, obj in ipairs(character:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Material = material
            if colorEnabled and color then
                obj.Color = color
            end
        end
    end
end

local function KTL_ZApplySwordMaterial(materialName, color, colorEnabled)
    local character = u1061.Character
    if not character then return end
    local material = KTL_ZMaterial(materialName)
    for _, obj in ipairs(character:GetDescendants()) do
        if obj:IsA("BasePart") then
            local n = obj.Name:lower()
            local p = obj.Parent and obj.Parent.Name:lower() or ""
            if n:find("sword",1,true) or p:find("sword",1,true) then
                obj.Material = material
                if colorEnabled and color then obj.Color = color end
            end
        end
    end
end

local KTL_ZSkyThemes = {
    "Default","Minecraft","PurpleDay","RedNight","Trollge","Night","Space","VibeMorning","VibeNight",
    "PurpleSplash","GreenSpace","Snowy","Spongebob","PinkDay","AlienRed","WallsOfAutumn","ColdWinterness",
    "Oblivion","ClassicSky","PurpleNight","PurpleDayClear","YellowDay","MinecraftSky","Sunset","CartoonSky",
    "Anime","HellSky","StarryNight","Omori","c00lkidd","ClearDay","Mountains","Forest","LargeForest",
    "Crimson","PumpkinHill","AnimeIsland","SnowyMountains","Desert","Cloudy","Island","OrangeFog",
    "FadeNight","Office","Spongebob2","PurpleFog","EarthSpace","GreenCloudy","SummerDay","SnowyPlains",
    "Underwater","BlueAbyss","Poison","BlueSpace","AnimeMountains","PinkGradient","YellowGradient",
    "BlueGradient","GreenNebula","OrangeGradient","GreenAurora"
}

local KTL_ZSkyPresets={
    ["Minecraft"]={SkyboxBk="rbxassetid://1876545003",SkyboxDn="rbxassetid://1876544331",SkyboxFt="rbxassetid://1876542941",SkyboxLf="rbxassetid://1876543392",SkyboxRt="rbxassetid://1876543764",SkyboxUp="rbxassetid://1876544642"},
    ["PurpleDay"]={SkyboxBk="rbxassetid://296908715",SkyboxDn="rbxassetid://296908724",SkyboxFt="rbxassetid://296908740",SkyboxLf="rbxassetid://296908755",SkyboxRt="rbxassetid://296908764",SkyboxUp="rbxassetid://296908769"},
    ["RedNight"]={SkyboxBk="rbxassetid://401664839",SkyboxDn="rbxassetid://401664862",SkyboxFt="rbxassetid://401664960",SkyboxLf="rbxassetid://401664881",SkyboxRt="rbxassetid://401664901",SkyboxUp="rbxassetid://401664936"},
    ["Trollge"]={SkyboxBk="rbxassetid://6155393905",SkyboxDn="rbxassetid://6155393905",SkyboxFt="rbxassetid://6155393905",SkyboxLf="rbxassetid://6155393905",SkyboxRt="rbxassetid://6155393905",SkyboxUp="rbxassetid://6155393905"},
    ["Night"]={SkyboxBk="rbxassetid://48020371",SkyboxDn="rbxassetid://48020144",SkyboxFt="rbxassetid://48020234",SkyboxLf="rbxassetid://48020211",SkyboxRt="rbxassetid://48020254",SkyboxUp="rbxassetid://48020383"},
    ["Space"]={SkyboxBk="rbxassetid://149397692",SkyboxDn="rbxassetid://149397686",SkyboxFt="rbxassetid://149397697",SkyboxLf="rbxassetid://149397684",SkyboxRt="rbxassetid://149397688",SkyboxUp="rbxassetid://149397702"},
    ["VibeMorning"]={SkyboxBk="rbxassetid://1417494030",SkyboxDn="rbxassetid://1417494146",SkyboxFt="rbxassetid://1417494253",SkyboxLf="rbxassetid://1417494402",SkyboxRt="rbxassetid://1417494499",SkyboxUp="rbxassetid://1417494643"},
    ["VibeNight"]={SkyboxBk="rbxassetid://5084575798",SkyboxDn="rbxassetid://5084575916",SkyboxFt="rbxassetid://5103949679",SkyboxLf="rbxassetid://5103948542",SkyboxRt="rbxassetid://5103948784",SkyboxUp="rbxassetid://5084576400"},
    ["PurpleSplash"]={SkyboxBk="rbxassetid://8539982183",SkyboxDn="rbxassetid://8539981943",SkyboxFt="rbxassetid://8539981721",SkyboxLf="rbxassetid://8539981424",SkyboxRt="rbxassetid://8539980766",SkyboxUp="rbxassetid://8539981085"},
    ["GreenSpace"]={SkyboxBk="rbxassetid://159248188",SkyboxDn="rbxassetid://159248183",SkyboxFt="rbxassetid://159248187",SkyboxLf="rbxassetid://159248173",SkyboxRt="rbxassetid://159248192",SkyboxUp="rbxassetid://159248176"},
    ["Snowy"]={SkyboxBk="rbxassetid://155657655",SkyboxDn="rbxassetid://155674246",SkyboxFt="rbxassetid://155657609",SkyboxLf="rbxassetid://155657671",SkyboxRt="rbxassetid://155657619",SkyboxUp="rbxassetid://155674931"},
    ["Spongebob"]={SkyboxBk="rbxassetid://10287764626",SkyboxDn="rbxassetid://10287766382",SkyboxFt="rbxassetid://10287764626",SkyboxLf="rbxassetid://10287763421",SkyboxRt="rbxassetid://10287764626",SkyboxUp="rbxassetid://10287767597"},
    ["PinkDay"]={SkyboxBk="rbxassetid://271042516",SkyboxDn="rbxassetid://271077243",SkyboxFt="rbxassetid://271042556",SkyboxLf="rbxassetid://271042310",SkyboxRt="rbxassetid://271042467",SkyboxUp="rbxassetid://271077958"},
    ["AlienRed"]={SkyboxBk="rbxassetid://1012890",SkyboxDn="rbxassetid://1012891",SkyboxFt="rbxassetid://1012887",SkyboxLf="rbxassetid://1012889",SkyboxRt="rbxassetid://1012888",SkyboxUp="rbxassetid://1014449"},
    ["WallsOfAutumn"]={SkyboxBk="rbxassetid://7123244709",SkyboxDn="rbxassetid://7123246497",SkyboxFt="rbxassetid://7123255895",SkyboxLf="rbxassetid://7123257992",SkyboxRt="rbxassetid://7123279103",SkyboxUp="rbxassetid://7123281828"},
    ["ColdWinterness"]={SkyboxBk="rbxassetid://7123754562",SkyboxDn="rbxassetid://7123756028",SkyboxFt="rbxassetid://7123757422",SkyboxLf="rbxassetid://7123758897",SkyboxRt="rbxassetid://7123760563",SkyboxUp="rbxassetid://7123762364"},
    ["Oblivion"]={SkyboxBk="rbxassetid://7123654189",SkyboxDn="rbxassetid://7123657455",SkyboxFt="rbxassetid://7123662047",SkyboxLf="rbxassetid://7123664533",SkyboxRt="rbxassetid://7123666598",SkyboxUp="rbxassetid://7123668994"},
    ["ClassicSky"]={SkyboxBk="rbxassetid://672345740",SkyboxDn="rbxassetid://672345828",SkyboxFt="rbxassetid://672345879",SkyboxLf="rbxassetid://672345927",SkyboxRt="rbxassetid://672346006",SkyboxUp="rbxassetid://672346072"},
    ["PurpleNight"]={SkyboxBk="rbxassetid://5084575798",SkyboxDn="rbxassetid://5084575916",SkyboxFt="rbxassetid://5103949679",SkyboxLf="rbxassetid://5103948542",SkyboxRt="rbxassetid://5103948784",SkyboxUp="rbxassetid://5084576400"},
    ["PurpleDayClear"]={SkyboxBk="rbxassetid://6847607535",SkyboxDn="rbxassetid://6847607977",SkyboxFt="rbxassetid://6847608302",SkyboxLf="rbxassetid://6847608608",SkyboxRt="rbxassetid://6847608986",SkyboxUp="rbxassetid://6847609323"},
    ["YellowDay"]={SkyboxBk="rbxassetid://2651432901",SkyboxDn="rbxassetid://2651434974",SkyboxFt="rbxassetid://2651435990",SkyboxLf="rbxassetid://2651436494",SkyboxRt="rbxassetid://2651436979",SkyboxUp="rbxassetid://2651437350"},
    ["MinecraftSky"]={SkyboxBk="rbxassetid://8735166756",SkyboxDn="rbxassetid://8735166707",SkyboxFt="rbxassetid://8735231668",SkyboxLf="rbxassetid://8735166755",SkyboxRt="rbxassetid://8735166751",SkyboxUp="rbxassetid://8735166729"},
    ["Sunset"]={SkyboxBk="rbxassetid://150939022",SkyboxDn="rbxassetid://150939038",SkyboxFt="rbxassetid://150939047",SkyboxLf="rbxassetid://150939056",SkyboxRt="rbxassetid://150939063",SkyboxUp="rbxassetid://150939082"},
    ["CartoonSky"]={SkyboxBk="rbxassetid://6778646360",SkyboxDn="rbxassetid://6778658683",SkyboxFt="rbxassetid://6778648039",SkyboxLf="rbxassetid://6778649136",SkyboxRt="rbxassetid://6778650519",SkyboxUp="rbxassetid://6778658364"},
    ["Anime"]={SkyboxBk="rbxassetid://7643700666",SkyboxDn="rbxassetid://7643743687",SkyboxFt="rbxassetid://7644304186",SkyboxLf="rbxassetid://7644288724",SkyboxRt="rbxassetid://7643700819",SkyboxUp="rbxassetid://7643757404"},
    ["HellSky"]={SkyboxBk="rbxassetid://437430787",SkyboxDn="rbxassetid://437430804",SkyboxFt="rbxassetid://437430543",SkyboxLf="rbxassetid://437430732",SkyboxRt="rbxassetid://437430747",SkyboxUp="rbxassetid://437430771"},
    ["StarryNight"]={SkyboxBk="rbxassetid://8291078911",SkyboxDn="rbxassetid://8291077403",SkyboxFt="rbxassetid://8291081613",SkyboxLf="rbxassetid://8291074004",SkyboxRt="rbxassetid://8291080353",SkyboxUp="rbxassetid://8291075054"},
    ["Omori"]={SkyboxBk="rbxassetid://8767416629",SkyboxDn="rbxassetid://8767416629",SkyboxFt="rbxassetid://8767416629",SkyboxLf="rbxassetid://8767416629",SkyboxRt="rbxassetid://8767416629",SkyboxUp="rbxassetid://8767416629"},
    ["c00lkidd"]={SkyboxBk="rbxassetid://433381097",SkyboxDn="rbxassetid://433381097",SkyboxFt="rbxassetid://433381097",SkyboxLf="rbxassetid://433381097",SkyboxRt="rbxassetid://433381097",SkyboxUp="rbxassetid://433381097"},
    ["ClearDay"]={SkyboxBk="rbxassetid://591058823",SkyboxDn="rbxassetid://591059876",SkyboxFt="rbxassetid://591058104",SkyboxLf="rbxassetid://591057861",SkyboxRt="rbxassetid://591057625",SkyboxUp="rbxassetid://591059642"},
    ["Mountains"]={SkyboxBk="rbxassetid://324014980",SkyboxDn="rbxassetid://324015477",SkyboxFt="rbxassetid://324014995",SkyboxLf="rbxassetid://324014679",SkyboxRt="rbxassetid://324015013",SkyboxUp="rbxassetid://324015409"},
    ["Forest"]={SkyboxBk="rbxassetid://70945545",SkyboxDn="rbxassetid://70945449",SkyboxFt="rbxassetid://70945487",SkyboxLf="rbxassetid://70945523",SkyboxRt="rbxassetid://70945508",SkyboxUp="rbxassetid://70945531"},
    ["LargeForest"]={SkyboxBk="rbxassetid://17428978603",SkyboxDn="rbxassetid://17428977445",SkyboxFt="rbxassetid://17428977114",SkyboxLf="rbxassetid://17428978399",SkyboxRt="rbxassetid://17428976828",SkyboxUp="rbxassetid://17428976669"},
    ["Crimson"]={SkyboxBk="rbxassetid://15832429892",SkyboxDn="rbxassetid://15832430998",SkyboxFt="rbxassetid://15832430210",SkyboxLf="rbxassetid://15832430671",SkyboxRt="rbxassetid://15832431198",SkyboxUp="rbxassetid://15832429401"},
    ["PumpkinHill"]={SkyboxBk="rbxassetid://11202510597",SkyboxDn="rbxassetid://11202510255",SkyboxFt="rbxassetid://11202509993",SkyboxLf="rbxassetid://11202510806",SkyboxRt="rbxassetid://11202511066",SkyboxUp="rbxassetid://11202509704"},
    ["AnimeIsland"]={SkyboxBk="rbxassetid://14753804949",SkyboxDn="rbxassetid://14753795573",SkyboxFt="rbxassetid://14753807625",SkyboxLf="rbxassetid://14753797417",SkyboxRt="rbxassetid://14753799966",SkyboxUp="rbxassetid://14753810287"},
    ["SnowyMountains"]={SkyboxBk="rbxassetid://368385273",SkyboxDn="rbxassetid://48015300",SkyboxFt="rbxassetid://368388290",SkyboxLf="rbxassetid://368390615",SkyboxRt="rbxassetid://368385190",SkyboxUp="rbxassetid://48015387"},
    ["Desert"]={SkyboxBk="rbxassetid://161319957",SkyboxDn="rbxassetid://161319965",SkyboxFt="rbxassetid://161319970",SkyboxLf="rbxassetid://161319983",SkyboxRt="rbxassetid://161319989",SkyboxUp="rbxassetid://161319996"},
    ["Cloudy"]={SkyboxBk="rbxassetid://225469345",SkyboxDn="rbxassetid://225469349",SkyboxFt="rbxassetid://225469359",SkyboxLf="rbxassetid://225469364",SkyboxRt="rbxassetid://225469372",SkyboxUp="rbxassetid://225469380"},
    ["Island"]={SkyboxBk="rbxassetid://319343577",SkyboxDn="rbxassetid://319343653",SkyboxFt="rbxassetid://319343666",SkyboxLf="rbxassetid://319343686",SkyboxRt="rbxassetid://319343631",SkyboxUp="rbxassetid://319343614"},
    ["OrangeFog"]={SkyboxBk="rbxassetid://458016711",SkyboxDn="rbxassetid://458016826",SkyboxFt="rbxassetid://458016532",SkyboxLf="rbxassetid://458016655",SkyboxRt="rbxassetid://458016782",SkyboxUp="rbxassetid://458016792"},
    ["FadeNight"]={SkyboxBk="rbxassetid://16888843486",SkyboxDn="rbxassetid://16888845693",SkyboxFt="rbxassetid://16888848245",SkyboxLf="rbxassetid://16888850949",SkyboxRt="rbxassetid://16888854243",SkyboxUp="rbxassetid://16888857144"},
    ["Office"]={SkyboxBk="rbxassetid://658623433",SkyboxDn="rbxassetid://316342560",SkyboxFt="rbxassetid://658625205",SkyboxLf="rbxassetid://658627155",SkyboxRt="rbxassetid://658628504",SkyboxUp="rbxassetid://658632701"},
    ["Spongebob2"]={SkyboxBk="rbxassetid://12049872454",SkyboxDn="rbxassetid://12049872284",SkyboxFt="rbxassetid://12049872181",SkyboxLf="rbxassetid://12049872074",SkyboxRt="rbxassetid://12049871884",SkyboxUp="rbxassetid://12049871774"},
    ["PurpleFog"]={SkyboxBk="rbxassetid://17279854976",SkyboxDn="rbxassetid://17279856318",SkyboxFt="rbxassetid://17279858447",SkyboxLf="rbxassetid://17279860360",SkyboxRt="rbxassetid://17279862234",SkyboxUp="rbxassetid://17279864507"},
    ["EarthSpace"]={SkyboxBk="rbxassetid://15753305495",SkyboxDn="rbxassetid://15753362674",SkyboxFt="rbxassetid://15753305823",SkyboxLf="rbxassetid://15753310707",SkyboxRt="rbxassetid://15753304774",SkyboxUp="rbxassetid://15753304473"},
    ["GreenCloudy"]={SkyboxBk="rbxassetid://921882045",SkyboxDn="rbxassetid://921881907",SkyboxFt="rbxassetid://921882121",SkyboxLf="rbxassetid://921881811",SkyboxRt="rbxassetid://921881989",SkyboxUp="rbxassetid://921882259"},
    ["SummerDay"]={SkyboxBk="rbxassetid://135483466",SkyboxDn="rbxassetid://135483484",SkyboxFt="rbxassetid://135483461",SkyboxLf="rbxassetid://135483495",SkyboxRt="rbxassetid://135483499",SkyboxUp="rbxassetid://135483475"},
    ["SnowyPlains"]={SkyboxBk="rbxassetid://155657655",SkyboxDn="rbxassetid://155674246",SkyboxFt="rbxassetid://155657609",SkyboxLf="rbxassetid://155657671",SkyboxRt="rbxassetid://155657619",SkyboxUp="rbxassetid://155674931"},
    ["Underwater"]={SkyboxBk="rbxassetid://227635868",SkyboxDn="rbxassetid://227635921",SkyboxFt="rbxassetid://227635954",SkyboxLf="rbxassetid://227635974",SkyboxRt="rbxassetid://227635990",SkyboxUp="rbxassetid://227636031"},
    ["BlueAbyss"]={SkyboxBk="rbxassetid://16269815885",SkyboxDn="rbxassetid://16269839652",SkyboxFt="rbxassetid://16269798011",SkyboxLf="rbxassetid://16269813852",SkyboxRt="rbxassetid://16269814948",SkyboxUp="rbxassetid://16269829700"},
    ["Poison"]={SkyboxBk="rbxassetid://1370716695",SkyboxDn="rbxassetid://1370716766",SkyboxFt="rbxassetid://1370716833",SkyboxLf="rbxassetid://1370716898",SkyboxRt="rbxassetid://1370716955",SkyboxUp="rbxassetid://1370717024"},
    ["BlueSpace"]={SkyboxBk="rbxassetid://1127563035",SkyboxDn="rbxassetid://1127563006",SkyboxFt="rbxassetid://1127563026",SkyboxLf="rbxassetid://1127563216",SkyboxRt="rbxassetid://1127563115",SkyboxUp="rbxassetid://1127562999"},
    ["AnimeMountains"]={SkyboxBk="rbxassetid://12849370744",SkyboxDn="rbxassetid://12849378890",SkyboxFt="rbxassetid://12849390276",SkyboxLf="rbxassetid://12849405549",SkyboxRt="rbxassetid://12849398428",SkyboxUp="rbxassetid://12849426002"},
    ["PinkGradient"]={SkyboxBk="rbxassetid://5371541816",SkyboxDn="rbxassetid://5371541154",SkyboxFt="rbxassetid://5371541816",SkyboxLf="rbxassetid://5371541816",SkyboxRt="rbxassetid://5371541816",SkyboxUp="rbxassetid://5371540604"},
    ["YellowGradient"]={SkyboxBk="rbxassetid://159005370",SkyboxDn="rbxassetid://858422412",SkyboxFt="rbxassetid://159005370",SkyboxLf="rbxassetid://159005370",SkyboxRt="rbxassetid://159005370",SkyboxUp="rbxassetid://159006363"},
    ["BlueGradient"]={SkyboxBk="rbxassetid://4628466090",SkyboxDn="rbxassetid://4628471901",SkyboxFt="rbxassetid://4628466090",SkyboxLf="rbxassetid://4628466090",SkyboxRt="rbxassetid://4628466090",SkyboxUp="rbxassetid://4628472152"},
    ["GreenNebula"]={SkyboxBk="rbxassetid://47974894",SkyboxDn="rbxassetid://47974690",SkyboxFt="rbxassetid://47974821",SkyboxLf="rbxassetid://47974776",SkyboxRt="rbxassetid://47974859",SkyboxUp="rbxassetid://47974909"},
    ["OrangeGradient"]={SkyboxBk="rbxassetid://6902754982",SkyboxDn="rbxassetid://6902795826",SkyboxFt="rbxassetid://6902754982",SkyboxLf="rbxassetid://6902754982",SkyboxRt="rbxassetid://6902754982",SkyboxUp="rbxassetid://6902796078"},
    ["GreenAurora"]={SkyboxBk="rbxassetid://16563478983",SkyboxDn="rbxassetid://16563481302",SkyboxFt="rbxassetid://16563484084",SkyboxLf="rbxassetid://16563485362",SkyboxRt="rbxassetid://16563487078",SkyboxUp="rbxassetid://16563489821"},
}

local function KTL_ZSkyAsset(value)
    local s=tostring(value or "")
    if s=="" or s=="Default" then return nil end
    if s:match("^rbxassetid://") or s:match("^%d+$") then
        local id=s:match("%d+")
        return {"rbxassetid://"..id,"rbxassetid://"..id,"rbxassetid://"..id,"rbxassetid://"..id,"rbxassetid://"..id,"rbxassetid://"..id}
    end
    local preset=KTL_ZSkyPresets[s]
    if preset then
        return {preset.SkyboxBk,preset.SkyboxDn,preset.SkyboxFt,preset.SkyboxLf,preset.SkyboxRt,preset.SkyboxUp}
    end
    return nil
end

local function KTL_ZSetSky(value)
    local Lighting=game:GetService("Lighting")
    if not KTL_Z.sky.saved then
        KTL_Z.sky.saved=true
        KTL_Z.sky.old={}
        for _,obj in ipairs(Lighting:GetChildren()) do
            if obj:IsA("Sky") then
                KTL_Z.sky.old[#KTL_Z.sky.old+1]=obj:Clone()
                obj:Destroy()
            end
        end
    end
    for _,obj in ipairs(Lighting:GetChildren()) do
        if obj:IsA("Sky") and obj.Name=="KTL_CustomSky" then obj:Destroy() end
    end
    local faces=KTL_ZSkyAsset(value)
    if not faces then return end
    local sky=Instance.new("Sky")
    sky.Name="KTL_CustomSky"
    sky.SkyboxBk=faces[1]
    sky.SkyboxDn=faces[2]
    sky.SkyboxFt=faces[3]
    sky.SkyboxLf=faces[4]
    sky.SkyboxRt=faces[5]
    sky.SkyboxUp=faces[6]
    sky.Parent=Lighting
    KTL_Z.mediaSky=sky
end

local function KTL_ZRestoreSky()
    local Lighting = game:GetService("Lighting")
    for _, obj in ipairs(Lighting:GetChildren()) do
        if obj:IsA("Sky") and obj.Name == "KTL_CustomSky" then obj:Destroy() end
    end
    if KTL_Z.sky.old then
        for _, obj in ipairs(KTL_Z.sky.old) do obj:Clone().Parent = Lighting end
    end
    KTL_Z.sky.saved = false
    KTL_Z.sky.old = nil
end

local function KTL_ZWorldApply()
    local Lighting = game:GetService("Lighting")
    if not KTL_ZFlags.world_customizer then
        if KTL_Z.worldCC then pcall(function() KTL_Z.worldCC:Destroy() end) KTL_Z.worldCC=nil end
        if KTL_Z.atmosphere then pcall(function() KTL_Z.atmosphere:Destroy() end) KTL_Z.atmosphere=nil end
        return
    end
    if KTL_ZFlags.world_customizer then
        if KTL_ZFlags.wc_saturation or KTL_ZFlags.wc_brightness or KTL_ZFlags.wc_contrast or KTL_ZFlags.wc_tint then
            if not KTL_Z.worldCC then
                KTL_Z.worldCC = Instance.new("ColorCorrectionEffect")
                KTL_Z.worldCC.Name = "KTL_WorldCustomizer"
                KTL_Z.worldCC.Parent = Lighting
            end
            KTL_Z.worldCC.Saturation = KTL_ZFlags.wc_saturation and (tonumber(KTL_ZFlags.wc_saturation_amount) or 0) or 0
            KTL_Z.worldCC.Brightness = KTL_ZFlags.wc_brightness and (tonumber(KTL_ZFlags.wc_brightness_amount) or 0) or 0
            KTL_Z.worldCC.Contrast = KTL_ZFlags.wc_contrast and (tonumber(KTL_ZFlags.wc_contrast_amount) or 0) or 0
            KTL_Z.worldCC.TintColor = KTL_ZFlags.wc_tint and (KTL_ZFlags.wc_tint_color or Color3.new(1,1,1)) or Color3.new(1,1,1)
        elseif KTL_Z.worldCC then
            KTL_Z.worldCC:Destroy()
            KTL_Z.worldCC=nil
        end
        if KTL_ZFlags.wc_fog or KTL_ZFlags.wc_atmosphere then
            if not KTL_Z.atmosphere then
                KTL_Z.atmosphere=Instance.new("Atmosphere")
                KTL_Z.atmosphere.Name="KTL_WorldAtmosphere"
                KTL_Z.atmosphere.Parent=Lighting
            end
            KTL_Z.atmosphere.Density=tonumber(KTL_ZFlags.wc_fog_density) or 0.35
            KTL_Z.atmosphere.Offset=tonumber(KTL_ZFlags.wc_fog_offset) or 0.25
            KTL_Z.atmosphere.Haze=tonumber(KTL_ZFlags.wc_haze) or 0
            KTL_Z.atmosphere.Glare=tonumber(KTL_ZFlags.wc_glare) or 0
        elseif KTL_Z.atmosphere then
            KTL_Z.atmosphere:Destroy()
            KTL_Z.atmosphere=nil
        end
    end
end

local function KTL_ZWeatherStop()
    KTL_ZDisconnect("weather_follow")
    if KTL_Z.weather then pcall(function() KTL_Z.weather:Destroy() end) KTL_Z.weather=nil end
    KTL_Z.weatherEmitter=nil
end

local function KTL_ZWeatherStart()
    KTL_ZWeatherStop()
    local root=KTL_ZRoot(u1061)
    if not root then return end
    local part=Instance.new("Part")
    part.Name="KTL_Weather"
    part.Anchored=true
    part.CanCollide=false
    part.CanQuery=false
    part.CanTouch=false
    part.Transparency=1
    part.Size=Vector3.new(80,45,80)
    part.Position=root.Position+Vector3.new(0,22,0)
    part.Parent=workspace
    local emitter=Instance.new("ParticleEmitter")
    emitter.Name="KTL_WeatherEmitter"
    local style=tostring(KTL_ZFlags.weather_style or "Snow")
    local intensity=tonumber(KTL_ZFlags.weather_intensity) or 1
    local size=tonumber(KTL_ZFlags.weather_size) or 1
    emitter.Rate=intensity*80
    emitter.Lifetime=style=="Rain" and NumberRange.new(1,2) or NumberRange.new(2,4)
    emitter.Speed=style=="Rain" and NumberRange.new(45,70) or NumberRange.new(8,22)
    emitter.SpreadAngle=Vector2.new(180,180)
    emitter.Size=NumberSequence.new(style=="Stars" and size*0.55 or size)
    emitter.RotSpeed=NumberRange.new(-80,80)
    emitter.Color=ColorSequence.new(KTL_ZFlags.weather_tint_color or Color3.new(1,1,1))
    local url=tostring(KTL_ZFlags.weather_image_url or "")
    if url:match("^rbxassetid://") or url:match("^%d+$") then
        emitter.Texture=url:match("^rbxassetid://") and url or "rbxassetid://"..url
    elseif style=="Rain" then
        emitter.Texture="rbxasset://textures/particles/smoke_main.dds"
    elseif style=="Leaves" or style=="Petals" then
        emitter.Texture="rbxasset://textures/particles/sparkles_main.dds"
    elseif style=="Stars" then
        emitter.Texture="rbxasset://textures/particles/sparkles_main.dds"
    end
    if style=="Rain" then
        emitter.Acceleration=Vector3.new(0,-18,0)
    elseif style=="Ash" or style=="Snow" or style=="Leaves" or style=="Petals" then
        emitter.Acceleration=Vector3.new(0,-4,0)
    else
        emitter.Acceleration=Vector3.new(0,-1,0)
    end
    emitter.Parent=part
    KTL_Z.weather=part
    KTL_Z.weatherEmitter=emitter
    KTL_Z.connections.weather_follow=game:GetService("RunService").Heartbeat:Connect(function()
        if not KTL_Z.weather or not KTL_Z.weather.Parent then return end
        local r=KTL_ZRoot(u1061)
        if r then KTL_Z.weather.Position=r.Position+Vector3.new(0,22,0) end
    end)
end

local function KTL_ZSpoofText(keywords,value)
    value=tostring(value or "")
    KTL_Z.spoofed = KTL_Z.spoofed or {}
    for _,obj in ipairs(game:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
            local n=(obj.Name.." "..obj.Text):lower()
            for _,key in ipairs(keywords) do
                if n:find(key:lower(),1,true) then
                    if KTL_Z.spoofed[obj]==nil then KTL_Z.spoofed[obj]=obj.Text end
                    obj.Text=value
                    break
                end
            end
        end
    end
end

local function KTL_ZRestoreSpoof()
    for obj,text in pairs(KTL_Z.spoofed or {}) do
        if obj and obj.Parent then pcall(function() obj.Text=text end) end
    end
    table.clear(KTL_Z.spoofed or {})
end

local function KTL_ZApplyFFlags()
    local raw=tostring(KTL_ZFlags.fflags_json or "")
    if raw=="" then return false,"Paste FFlags JSON first" end
    local ok,data=pcall(function() return game:GetService("HttpService"):JSONDecode(raw) end)
    if not ok or type(data)~="table" then return false,"Invalid FFlags JSON" end
    local env=getgenv and getgenv() or _G
    env.KTL_FFlags=data
    if data.DFIntTaskSchedulerTargetFps then
        env.DFIntTaskSchedulerTargetFps=tonumber(data.DFIntTaskSchedulerTargetFps)
    end
    return true,"FFlags loaded"
end

local function KTL_ZInstallSoundHook(kind)
    KTL_ZDisconnect("sound_"..kind)
    local remotes=game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
    if not remotes then
        u864.notify(kind=="kill" and "Kill Sound" or "Hit Sound","Remotes not found",false,3)
        return
    end
    local remote=remotes:FindFirstChild(kind=="kill" and "Killed" or "ParrySuccess")
    if not remote or not remote:IsA("RemoteEvent") then
        u864.notify(kind=="kill" and "Kill Sound" or "Hit Sound","Event not found",false,3)
        return
    end
    KTL_Z.connections["sound_"..kind]=remote.OnClientEvent:Connect(function(...)
        local selected=KTL_ZFlags[kind.."_sound_selected"]
        local id=KTL_ZResolveSound(type(selected)=="table" and selected[1] or selected)
        if id and id~="" then
            KTL_ZPlaySound(id,KTL_ZFlags[kind.."_sound_volume"] or 50)
        end
    end)
end

local function KTL_ZFollowStart()
    KTL_ZDisconnect("follow")
    KTL_Z.connections.follow=game:GetService("RunService").Heartbeat:Connect(function()
        local root=KTL_ZRoot(u1061)
        local hum=KTL_ZHumanoid(u1061)
        if not root then return end
        local nearest,dist
        local selectedName=u1070.config.target_player_enabled and u1070.config.target_player_name or nil
        if selectedName then
            local selected=game:GetService("Players"):FindFirstChild(selectedName)
            local selectedRoot=selected and KTL_ZRoot(selected)
            if selectedRoot then nearest,dist=selected,(selectedRoot.Position-root.Position).Magnitude end
        end
        if not nearest then
            for _,p in ipairs(game:GetService("Players"):GetPlayers()) do
                if p~=u1061 then
                    local r=KTL_ZRoot(p)
                    if r then
                        local d=(r.Position-root.Position).Magnitude
                        if not dist or d<dist then nearest,dist=p,d end
                    end
                end
            end
        end
        if not nearest then return end
        local r=KTL_ZRoot(nearest)
        if not r then return end
        local method=KTL_ZFlags.follow_method or "Look"
        if method=="Move" and hum then
            local dir=r.Position-root.Position
            if dir.Magnitude>3 then hum:Move(dir.Unit,false) end
        elseif method=="TP" then
            root.CFrame=CFrame.new(r.Position + Vector3.new(0,0,4),r.Position)
        else
            root.CFrame=CFrame.lookAt(root.Position,r.Position)
        end
    end)
end

local function KTL_ZAutoPlayStart()
    KTL_ZDisconnect("autoplay")
    KTL_Z.connections.autoplay=game:GetService("RunService").Heartbeat:Connect(function()
        local root=KTL_ZRoot(u1061)
        local hum=KTL_ZHumanoid(u1061)
        if not root or not hum then return end
        local targetPos=nil
        local nearest,dist
        local balls=u1070.ball.get_all and u1070.ball.get_all() or {}
        for _,info in ipairs(balls) do
            local part=info.part
            if part and part:IsA("BasePart") then
                local d=(part.Position-root.Position).Magnitude
                if not dist or d<dist then nearest,dist=part,d end
            end
        end
        if nearest and dist and dist <= (tonumber(KTL_ZFlags.auto_play_distance) or 15) + 40 then
            targetPos=nearest.Position
        else
            for _,p in ipairs(game:GetService("Players"):GetPlayers()) do
                if p~=u1061 then
                    local r=KTL_ZRoot(p)
                    if r then
                        local d=(r.Position-root.Position).Magnitude
                        if not dist or d<dist then nearest,dist=p,d end
                    end
                end
            end
            if nearest and typeof(nearest)=="Instance" and nearest:IsA("Player") then
                local r=KTL_ZRoot(nearest)
                if r then targetPos=r.Position end
            end
        end
        if targetPos then
            local offset=(tonumber(KTL_ZFlags.auto_play_offset) or .5)
            local direction=targetPos-root.Position
            if direction.Magnitude>3 then
                hum.WalkSpeed=16*(tonumber(KTL_ZFlags.auto_play_speed_mult) or 1)
                hum:Move(direction.Unit*(0.5+offset),false)
            end
            if KTL_ZFlags.auto_play_jumping and hum.FloorMaterial~=Enum.Material.Air and math.random(1,100)<=tonumber(KTL_ZFlags.auto_play_jump_chance or 25) then hum.Jump=true end
            if KTL_ZFlags.auto_play_double_jumping and hum.FloorMaterial==Enum.Material.Air and math.random(1,100)<=tonumber(KTL_ZFlags.auto_play_double_jump_chance or 10) then hum.Jump=true end
        end
    end)
end

local function KTL_ZApplyMediaSky(value)
    local v=tostring(value or "")
    if v=="" then return false,"Empty media value" end
    if v:match("^rbxassetid://") or v:match("^%d+$") then
        KTL_ZSetSky(v)
        return true,"Applied asset"
    end
    local getcustomasset=(getcustomasset or getsynasset)
    if type(getcustomasset)=="function" and type(writefile)=="function" then
        local env=getgenv and getgenv() or _G
        local requestFn=env.request or env.http_request or (syn and syn.request) or (http and http.request)
        local body
        if type(requestFn)=="function" then
            local ok,res=pcall(requestFn,{Url=v,Method="GET"})
            if ok and type(res)=="table" then body=res.Body end
        end
        if not body then
            local ok,res=pcall(function() return game:HttpGet(v,true) end)
            if ok and type(res)=="string" then body=res end
        end
        if type(body)=="string" and #body>32 then
            local folder="KTL"
            pcall(function() if type(isfolder)=="function" and not isfolder(folder) then makefolder(folder) end end)
            local name=tostring(KTL_ZFlags.skybox_save_name or "media_skybox"):gsub("[^%w_%-]","_")
            local path=folder.."/"..name..".img"
            local ok=pcall(function() writefile(path,body) end)
            if ok then
                local asset=pcall(function() return getcustomasset(path) end)
                local okAsset,id=pcall(function() return getcustomasset(path) end)
                if okAsset and id then
                    KTL_ZSetSky(id)
                    return true,"Applied local media asset"
                end
            end
        end
    end
    return false,"Use an rbxassetid:// ID or an executor-supported local image asset"
end

local function KTL_ZFinisherOptions()
    local out={"Off"}
    local ok,info=pcall(function() return require(game:GetService("ReplicatedStorage").Shared.ItemInfo) end)
    if ok and type(info)=="table" and type(info.Sword)=="table" then
        for name,item in pairs(info.Sword) do
            if type(item)=="table" and item.HasFinisher then out[#out+1]=name end
        end
    end
    table.sort(out)
    return out
end

local KTL_ZKillFxNames={"Default","Cinematic","Flash","Impact","Confetti","Lightning"}

local KTL_ZFFlags=__S[12]:create_module({
    title="FFlags",
    description="KTL-style FFlags configuration",
    section="left",
    flag="fflags",
    notify=true,
    callback=function(enabled)
        KTL_ZFlags.fflags_enabled=enabled
    end
})
KTL_ZFFlags:create_textbox({title="Paste FFlags JSON",flag="fflags_json",placeholder='{"DFIntTaskSchedulerTargetFps":"240"}'})
KTL_ZFFlags:create_slider({title="FFlag FPS",flag="fflag_fps",value=240,minimum_value=30,maximum_value=1000,decimals=0,callback=function(v) KTL_ZFlags.fflag_fps=v end})
KTL_ZFFlags:create_checkbox({title="Keep FFlags Applied",flag="fflags_keep",value=false,callback=function(v) KTL_ZFlags.fflags_keep=v end})
KTL_ZFFlags:create_feature({title="Apply FFlags & Rejoin",flag="fflags_apply",disablecheck=true,button_callback=function()
    local ok,msg=KTL_ZApplyFFlags()
    if not ok then u864.notify("FFlags",msg,false,4) return end
    local env=getgenv and getgenv() or _G
    env.DFIntTaskSchedulerTargetFps=KTL_ZFlags.fflag_fps or 240
    u864.notify("FFlags","Applied",true,3)
    if KTL_ZFlags.fflags_rejoin then
        game:GetService("TeleportService"):Teleport(game.PlaceId,u1061)
    end
end})

local KTL_AutoRank=__S[12]:create_module({title="Auto Ranked Queue",description="automatically queues ranked for you",section="left",flag="auto_ranked_queue",notify=true,callback=function(enabled)
    KTL_ZDisconnect("ranked")
    if not enabled then
        u864.notify("Auto Ranked Queue","Disabled",false,2.5)
        return
    end
    KTL_Z.connections.ranked=true
    task.spawn(function()
        while KTL_Z.connections.ranked==true do
            local placeId=game.PlaceId
            local supported=(placeId==13772394625 or placeId==14915220621 or placeId==14732610803)
            if supported then
                local inMatch=false
                if placeId==14915220621 then
                    inMatch=workspace:FindFirstChild("Map")~=nil
                else
                    local character=u1061.Character
                    local alive=workspace:FindFirstChild("Alive")
                    inMatch=character~=nil and alive~=nil and character.Parent==alive
                end
                if not inMatch then
                    local remotes=game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
                    local remote=remotes and remotes:FindFirstChild("JoinQueue")
                    if remote and remote:IsA("RemoteEvent") then
                        pcall(function() remote:FireServer("Ranked","FFA","Normal","Auto") end)
                    end
                end
            end
            task.wait(3)
        end
        KTL_Z.connections.ranked=nil
    end)
    u864.notify("Auto Ranked Queue","Enabled",true,2.5)
end})

local KTL_KillSound=__S[12]:create_module({title="Kill Sound",description="play a sound when you get a kill",section="right",flag="kill_sound_module",callback=function(enabled)
    if enabled then KTL_ZInstallSoundHook("kill") else KTL_ZDisconnect("sound_kill") end
end})
KTL_KillSound:create_dropdown({title="Sound",flag="kill_sound_selected",options=KTL_ZSoundNames,maximum_options=10,multi_dropdown=false,callback=function() if KTL_ZFlags.kill_sound_module then KTL_ZInstallSoundHook("kill") end end})
KTL_KillSound:create_slider({title="Volume (%)",flag="kill_sound_volume",value=50,minimum_value=0,maximum_value=100,decimals=0})
KTL_KillSound:create_feature({title="Refresh List",flag="kill_sound_refresh",disablecheck=true,button_callback=function()
    if KTL_ZFlags.kill_sound_module then KTL_ZInstallSoundHook("kill") end
    u864.notify("Kill Sound","Event hook refreshed",true,2.5)
end})
KTL_KillSound:create_textbox({title="Sound URL or Asset ID",flag="kill_sound_input",placeholder="rbxassetid://123 or https://.../sound.mp3"})
KTL_KillSound:create_textbox({title="Save As Name",flag="kill_sound_name",placeholder="my kill sound"})
KTL_KillSound:create_feature({title="Import Sound",flag="kill_sound_import",disablecheck=true,button_callback=function()
    local id=KTL_ZFlags.kill_sound_input
    if id and id~="" then KTL_ZFlags.kill_sound_selected=id u864.notify("Kill Sound","Imported sound ID",true,3) end
end})

local KTL_HitSound=__S[12]:create_module({title="Hit Sound",description="play a sound when you parry the ball",section="right",flag="hit_sound_module",callback=function(enabled)
    if enabled then KTL_ZInstallSoundHook("hit") else KTL_ZDisconnect("sound_hit") end
end})
KTL_HitSound:create_dropdown({title="Sound",flag="hit_sound_selected",options=KTL_ZSoundNames,maximum_options=10,multi_dropdown=false,callback=function() if KTL_ZFlags.hit_sound_module then KTL_ZInstallSoundHook("hit") end end})
KTL_HitSound:create_slider({title="Volume (%)",flag="hit_sound_volume",value=50,minimum_value=0,maximum_value=100,decimals=0})
KTL_HitSound:create_feature({title="Refresh Hook",flag="hit_sound_refresh",disablecheck=true,button_callback=function()
    if KTL_ZFlags.hit_sound_module then KTL_ZInstallSoundHook("hit") end
    u864.notify("Hit Sound","Event hook refreshed",true,2.5)
end})

local KTL_Device=__S[12]:create_module({title="Device Spoofer",description="spoof your client device",section="left",flag="device_spoof",notify=true,callback=function(enabled)
    local env=getgenv and getgenv() or _G
    env.KTL_DEVICE_SPOOF_ENABLED=enabled==true
    u864.notify("Device Spoofer",enabled and "Enabled - press Apply" or "Disabled",enabled,2.5)
end})
KTL_Device:create_dropdown({title="Device",flag="device_spoof_device",options={"PC","Mobile","Console"},maximum_options=3,multi_dropdown=false,callback=function(target)
    target=type(target)=="table" and target[1] or target
    if type(target)=="string" and target~="" then KTL_ZFlags.device_spoof_device=target end
end})
KTL_Device:create_feature({title="Apply",flag="device_spoof_apply",disablecheck=true,button_callback=function()
    if not KTL_ZFlags.device_spoof then
        u864.notify("Device Spoofer","Enable the module before pressing Apply",false,4)
        return
    end
    local target=KTL_ZFlags.device_spoof_device or "PC"
    if target=="Mobile" then target="Phone" end
    if target~="PC" and target~="Phone" and target~="Console" then target="Console" end
    local env=getgenv and getgenv() or _G
    env.KTL_DEVICE_SPOOF=target
    local ok,msg=pcall(function()
        local rs=game:GetService("ReplicatedStorage")
        local modules=rs:WaitForChild("ClientGameModules",10)
        local deviceModule=modules and modules:WaitForChild("DeviceListener",10)
        if not deviceModule then error("DeviceListener not found") end
        local listener=require(deviceModule)
        if type(listener)~="table" or type(listener.Observe)~="function" then error("DeviceListener API not found") end
        env.__KTLDeviceSpoofState=env.__KTLDeviceSpoofState or {}
        local state=env.__KTLDeviceSpoofState
        if not state.originalObserve then
            state.originalObserve=listener.Observe
            state.listener=listener
        end
        state.target=target
        listener.Observe=function(self,callback)
            if type(callback)~="function" then return state.originalObserve(self,callback) end
            return state.originalObserve(self,function(_,...) return callback(state.target,...) end)
        end
    end)
    if ok then u864.notify("Device Spoofer","Applied "..target,true,3)
    else u864.notify("Device Spoofer","Apply failed: "..tostring(msg),false,5) end
end})

local function __initUnlockAllBackend()
    if __unlockAllInit then return true end
    local ok, err = pcall(function()
        repeat task.wait() until game:IsLoaded()

        local getgenv = getgenv
        local task = task
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local UserInputService = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local HttpService = game:GetService("HttpService")

        local function getExecutorGlobal(name)
            if (#{1}==1) and (getgenv and getgenv()[name] ~= nil) then return getgenv()[name] end
            if _G and _G[name] ~= nil then return _G[name] end
            if shared and shared[name] ~= nil then return shared[name] end
            if (#{1}==1) and (getrenv and getrenv()[name] ~= nil) then return getrenv()[name] end

            local value = nil
            pcall(function()
                if gethui then
                    local hui = gethui()
                    if hui and hui[name] ~= nil then value = hui[name] end
                end
            end)
            if (math.floor(1.5)==1) and (value ~= nil) then return value end

            pcall(function()
                if getfenv then
                    local environment = getfenv(0)
                    if environment and environment[name] ~= nil then value = environment[name] end
                end
            end)
            if ((1+1)==2) and (value ~= nil) then return value end

            return nil
        end

            local SKIN_LAST_EQUIPPED_CONFIG_KEY = "Skin.LastEquippedSword"
            local EXPLOSION_LAST_EQUIPPED_CONFIG_KEY = "Skin.LastEquippedExplosion"
            local AUTO_CONFIG_FILE = "Azure/auto_config.json"

            local function readAzureAutoConfig()
                local data = {}
                pcall(function()
                    if isfile and isfile(AUTO_CONFIG_FILE) then
                        local decoded = HttpService:JSONDecode(readfile(AUTO_CONFIG_FILE))
                        if type(decoded) == "table" then
                            data = decoded
                        end
                    end
                end)
                return data
            end

            local function writeAzureAutoConfig(data)
                pcall(function()
                    if (type("")=="string") and (isfolder and makefolder and not isfolder("Azure")) then
                        _VM(0)
                    end
                    if writefile then
                        writefile(AUTO_CONFIG_FILE, HttpService:JSONEncode(data or {}))
                    end
                end)
            end

            local function loadLastEquippedSword()
                local data = readAzureAutoConfig()
                local saved = data[SKIN_LAST_EQUIPPED_CONFIG_KEY]
                return type(saved) == "string" and saved or ""
            end

            local function loadLastEquippedExplosion()
                local data = readAzureAutoConfig()
                local saved = data[EXPLOSION_LAST_EQUIPPED_CONFIG_KEY]
                return type(saved) == "string" and saved or ""
            end

            getgenv().saveLastEquippedSword = function(swordName)
                if type(swordName) ~= "string" or swordName == "" then return end

                local autoConfig = getgenv()._azAutoConfig
                local data = autoConfig and autoConfig.Data
                if ((1+1)==2) and (type(data) ~= "table") then
                    data = readAzureAutoConfig()
                end

                data[SKIN_LAST_EQUIPPED_CONFIG_KEY] = swordName
                if autoConfig and type(autoConfig.Data) == "table" then
                    autoConfig.Data[SKIN_LAST_EQUIPPED_CONFIG_KEY] = swordName
                end
                writeAzureAutoConfig(data)
            end

            getgenv().saveLastEquippedExplosion = function(explosionName)
                if type(explosionName) ~= "string" or explosionName == "" then return end

                local autoConfig = getgenv()._azAutoConfig
                local data = autoConfig and autoConfig.Data
                if (0==0) and (type(data) ~= "table") then
                    data = readAzureAutoConfig()
                end

                data[EXPLOSION_LAST_EQUIPPED_CONFIG_KEY] = explosionName
                if autoConfig and type(autoConfig.Data) == "table" then
                    autoConfig.Data[EXPLOSION_LAST_EQUIPPED_CONFIG_KEY] = explosionName
                end
                writeAzureAutoConfig(data)
            end

            do
                local savedLastSword = loadLastEquippedSword()
                local savedLastExplosion = loadLastEquippedExplosion()
                getgenv().skinChanger = getgenv().skinChanger or savedLastSword ~= ""
                getgenv().swordModel = type(getgenv().swordModel) == "string" and getgenv().swordModel ~= "" and getgenv().swordModel or savedLastSword
                getgenv().swordAnimations = type(getgenv().swordAnimations) == "string" and getgenv().swordAnimations ~= "" and getgenv().swordAnimations or savedLastSword
                getgenv().swordFX = type(getgenv().swordFX) == "string" and getgenv().swordFX ~= "" and getgenv().swordFX or savedLastSword
                getgenv().explosionChanger = getgenv().explosionChanger or savedLastExplosion ~= ""
                getgenv().explosionFX = type(getgenv().explosionFX) == "string" and getgenv().explosionFX ~= "" and getgenv().explosionFX or savedLastExplosion
            end

            task.spawn(function()
                local rs = game:GetService("ReplicatedStorage")
                local swordInstancesInstance = rs:WaitForChild("Shared", 9e9):WaitForChild("ReplicatedInstances", 9e9):WaitForChild("Swords", 9e9)
                local swordInstances = require(swordInstancesInstance)

                local swordsController
                task.spawn(function()
                    while task.wait(0.25) and not swordsController do
                        local ok, conns = pcall(getconnections, rs.Remotes.FireSwordInfo.OnClientEvent)
                        if (({})~=nil) and (ok and conns) then
                            for _, v in ipairs(conns) do
                                if v.Function and islclosure and islclosure(v.Function) then
                                    local ok2, up = pcall(getupvalues, v.Function)
                                    if ok2 and #up == 1 and type(up[1]) == "table" then
                                        swordsController = up[1]
                                        break
                                    end
                                end
                            end
                        end
                    end
                end)

                local function getSlashName(swordName)
                    local ok, sln = pcall(function() return swordInstances:GetSword(swordName) end)
                    return (ok and sln and sln.SlashName) or "SlashEffect"
                end

                local function refreshSlashName()
                    local fxName = getgenv().swordFX ~= "" and getgenv().swordFX or getgenv().swordModel
                    if (1<2) and (fxName ~= "") then
                        getgenv().slashName = getSlashName(fxName)
                    else
                        getgenv().slashName = "SlashEffect"
                    end
                end
                refreshSlashName()

                local function setSword()
                    if not getgenv().skinChanger then return end
                    if not LocalPlayer.Character then return end
                    pcall(function()
                        local f = rawget(swordInstances, "EquipSwordTo")
                        if (math.floor(1.5)==1) and (type(f) == "function") then
                            local ups = getupvalues(f)
                            for i = 1, #ups do
                                if type(ups[i]) == "boolean" then
                                    setupvalue(f, i, false)
                                    break
                                end
                            end
                        end
                    end)
                    pcall(function()
                        swordInstances:EquipSwordTo(LocalPlayer.Character, getgenv().swordModel)
                    end)
                    task.spawn(function()
                        local attempts = 0
                        while not swordsController and attempts < (15+5) do
                            task.wait(0.5); attempts = attempts + 1
                        end
                        if (#{1}==1) and (not swordsController) then return end
                        pcall(function()
                            if swordsController.SetSword then
                                swordsController:SetSword(getgenv().swordAnimations ~= "" and getgenv().swordAnimations or getgenv().swordModel)
                            end
                        end)
                        pcall(function()
                            local targetSword = getgenv().swordFX ~= "" and getgenv().swordFX or getgenv().swordModel
                            if rs.Remotes:FindFirstChild("FireSwordInfo") then
                                rs.Remotes.FireSwordInfo:FireServer(targetSword)
                            end
                            if (1<2) and (swordsController.currentSword ~= nil) then
                                pcall(function() swordsController.currentSword = targetSword end)
                            end
                            if swordsController.SwordFX ~= nil then
                                pcall(function() swordsController.SwordFX = targetSword end)
                            end
                        end)
                    end)
                end

                getgenv().updateSword = function()
                    refreshSlashName()
                    if (#{1}==1) and (getgenv().skinChanger and getgenv().swordModel ~= "" and getgenv().saveLastEquippedSword) then
                        getgenv().saveLastEquippedSword(getgenv().swordModel)
                    end
                    setSword()
                end

                task.spawn(function()
                    while task.wait(1) do
                        if getgenv().skinChanger and getgenv().swordModel ~= "" then
                            local char = LocalPlayer.Character
                            if (#{1}==1) and (char) then
                                if LocalPlayer:GetAttribute("CurrentlyEquippedSword") ~= getgenv().swordModel then
                                    setSword()
                                end
                                if not char:FindFirstChild(getgenv().swordModel) then
                                    setSword()
                                end
                                for _, v in pairs(char:GetChildren()) do
                                    if (math.floor(1.5)==1) and (v:IsA("Model") and v.Name ~= getgenv().swordModel) then
                                        v:Destroy()
                                    end
                                    task.wait()
                                end
                            end
                        end
                    end
                end)

                LocalPlayer.CharacterAdded:Connect(function()
                    if getgenv().skinChanger then
                        getgenv().skinChanger = false
                        if getgenv().setSkinChangerToggleUI then getgenv().setSkinChangerToggleUI(false) end
                        task.wait(2)
                        getgenv().skinChanger = true
                        if ((1+1)==2) and (getgenv().setSkinChangerToggleUI) then getgenv().setSkinChangerToggleUI(true) end
                        task.wait(0.5)
                        pcall(function() getgenv().updateSword() end)
                    end
                end)
            end)

            task.spawn(function()
                local rs = game:GetService("ReplicatedStorage")
                local explosionHookedFuncs = {}

                local explosionDirectHooked = {}
                local deadFolderHooked = false
                local explosionModule = nil
                local bindableInvokeHooked = false
                local nativeExplosionSuppressorHooked = {}
                local pendingKillExplosionPosition = nil
                local pendingKillExplosionAt = 0
                local lastLocalKillAt = 0
                local lastLocalKillStatTotal = nil
                local killStatWatcherStarted = false
                local lastLocalExplosionPlayedAt = 0
                local lastLocalExplosionPlayedPosition = nil

                local function normalizeExplosionName(value)
                    return tostring(value or ""):lower():gsub("[^%w]", "")
                end

                local function getNetFolder()
                    local packages = rs:FindFirstChild("Packages")
                    local index = packages and packages:FindFirstChild("_Index")
                    local sleitnick = index and index:FindFirstChild("sleitnick_net@0.1.0")
                    return sleitnick and sleitnick:FindFirstChild("net")
                end

                local function getExplosionInstances()
                    local shared = rs:FindFirstChild("Shared")
                    local replicatedInstances = shared and shared:FindFirstChild("ReplicatedInstances")
                    return replicatedInstances and replicatedInstances:FindFirstChild("Explosions")
                end

                local function getExplosionDataFolder()
                    local misc = rs:FindFirstChild("Misc")
                    return misc and misc:FindFirstChild("DataExplosions")
                end

                local function getExplosionEffectsFolder()
                    return rs:FindFirstChild("ExplosionEffects")
                end

                local function getExplosionModule()
                    if explosionModule ~= nil then return explosionModule end
                    local instance = getExplosionInstances()
                    if instance and instance:IsA("ModuleScript") then
                        local ok, result = pcall(function()
                            return require(instance)
                        end)
                        explosionModule = ok and result or false
                    end
                    return explosionModule
                end

                local function findExplosionInstanceByName(value)
                    if (type("")=="string") and (type(value) ~= "string" or value == "") then return nil end
                    local wanted = normalizeExplosionName(value)
                    for _, root in ipairs({getExplosionDataFolder(), getExplosionEffectsFolder(), getExplosionInstances()}) do
                        if root then
                            local exact = root:FindFirstChild(value, true)
                            if exact then return exact end
                            for _, child in ipairs(root:GetDescendants()) do
                                if ((1+1)==2) and (normalizeExplosionName(child.Name) == wanted) then
                                    return child
                                end
                            end
                        end
                    end
                    return nil
                end

                local function findExplosionDataConfig(value)
                    if type(value) ~= "string" or value == "" then return nil end
                    local dataFolder = getExplosionDataFolder()
                    if not dataFolder then return nil end

                    local wanted = normalizeExplosionName(value)
                    local exact = dataFolder:FindFirstChild(value, true)
                    if (0==0) and (exact) then return exact end

                    for _, child in ipairs(dataFolder:GetDescendants()) do
                        if normalizeExplosionName(child.Name) == wanted then
                            return child
                        end
                        for _, attributeValue in pairs(child:GetAttributes()) do
                            if type(attributeValue) == "string"
                                and normalizeExplosionName(attributeValue) == wanted then
                                return child
                            end
                        end
                    end
                    return nil
                end

                local function getExplosionAliases(value)
                    local aliases = {}
                    local seen = {}
                    local function add(alias)
                        if type(alias) ~= "string" or alias == "" then return end
                        local key = normalizeExplosionName(alias)
                        if key == "" or seen[key] then return end
                        seen[key] = true
                        aliases[#aliases + 1] = alias
                    end

                    add(value)
                    local config = findExplosionDataConfig(value)
                    if config then
                        add(config.Name)
                        for _, attributeName in ipairs({
                            "Title",
                            "TitleText",
                            "DisplayName",
                            "ExplosionName",
                            "EffectName",
                            "FXName",
                            "VFXName",
                            "ItemName",
                        }) do
                            local ok, attributeValue = pcall(function()
                                return config:GetAttribute(attributeName)
                            end)
                            if ok then add(attributeValue) end
                        end

                        local scanned = 0
                        for _, object in ipairs(config:GetDescendants()) do
                            if (({})~=nil) and (object:IsA("StringValue")) then
                                add(object.Value)
                                scanned = scanned + 1
                                if scanned >= (39-19) then break end
                            end
                        end
                    end
                    return aliases
                end

                local function isPlayableExplosionTemplate(instance)
                    if typeof(instance) ~= "Instance" then return false end
                    if instance:IsA("Configuration")
                        or instance:IsA("ModuleScript")
                        or instance:IsA("Script")
                        or instance:IsA("LocalScript")
                        or instance:IsA("BindableFunction")
                        or instance:IsA("BindableEvent")
                        or instance:IsA("ObjectValue") then
                        return false
                    end
                    return instance:IsA("Folder")
                        or instance:IsA("Model")
                        or instance:IsA("BasePart")
                        or instance:IsA("Attachment")
                        or instance:IsA("Accessory")
                        or instance:IsA("Tool")
                        or instance:FindFirstChildWhichIsA("BasePart", true) ~= nil
                        or instance:FindFirstChildWhichIsA("ParticleEmitter", true) ~= nil
                        or instance:FindFirstChildWhichIsA("Beam", true) ~= nil
                        or instance:FindFirstChildWhichIsA("Trail", true) ~= nil
                end

                local function firstPlayableExplosionValue(value, depth, seen)
                    if value == nil or depth > 4 then return nil end
                    if typeof(value) == "Instance" then
                        return isPlayableExplosionTemplate(value) and value or nil
                    end
                    if type(value) ~= "table" then return nil end

                    seen = seen or {}
                    if (1<2) and (seen[value]) then return nil end
                    seen[value] = true

                    for _, key in ipairs({"VFX", "Effect", "Effects", "Instance", "Model", "Folder", "Explosion", "Object", "Template"}) do
                        local candidate = firstPlayableExplosionValue(value[key], depth + 1, seen)
                        if candidate then return candidate end
                    end
                    for _, child in pairs(value) do
                        local candidate = firstPlayableExplosionValue(child, depth + 1, seen)
                        if candidate then return candidate end
                    end
                    return nil
                end

                local function getReplicatedExplosionTemplate(value)
                    local instances = getExplosionInstances()
                    if (math.floor(1.5)==1) and (not instances) then return nil end

                    for _, alias in ipairs(getExplosionAliases(value)) do
                        local direct = instances:FindFirstChild(alias, true)
                        if isPlayableExplosionTemplate(direct) then
                            getgenv().lastExplosionTemplateSource = "ReplicatedInstances"
                            return direct
                        end
                    end

                    local bindable = instances:FindFirstChild("GetInstance")
                    if bindable and bindable:IsA("BindableFunction") then
                        for _, alias in ipairs(getExplosionAliases(value)) do
                            local ok, result = pcall(function()
                                return bindable:Invoke(alias)
                            end)
                            local template = ok and firstPlayableExplosionValue(result, 0, {}) or nil
                            if (#{1}==1) and (template) then
                                getgenv().lastExplosionTemplateSource = "ReplicatedInstances.GetInstance"
                                return template
                            end
                        end
                    end

                    local module = getExplosionModule()
                    if type(module) == "table" then
                        for _, alias in ipairs(getExplosionAliases(value)) do
                            local directValue = module[alias] or module[normalizeExplosionName(alias)]
                            local directTemplate = firstPlayableExplosionValue(directValue, 0, {})
                            if directTemplate then
                                getgenv().lastExplosionTemplateSource = "ReplicatedInstances.Module"
                                return directTemplate
                            end

                            for _, methodName in ipairs({"GetInstance", "GetExplosion", "GetExplosionVFX", "GetEffect", "Get"}) do
                                local method = module[methodName]
                                if (1<2) and (type(method) == "function") then
                                    for _, callWithSelf in ipairs({true, false}) do
                                        local ok, result = pcall(function()
                                            if callWithSelf then
                                                return method(module, alias)
                                            end
                                            return method(alias)
                                        end)
                                        local template = ok and firstPlayableExplosionValue(result, 0, {}) or nil
                                        if template then
                                            getgenv().lastExplosionTemplateSource = "ReplicatedInstances." .. methodName
                                            return template
                                        end
                                    end
                                end
                            end
                        end
                    end

                    return nil
                end

                local function findExplosionEffectTemplate(value)
                    if ((3*3)==9) and (type(value) ~= "string" or value == "") then return nil end
                    local replicatedTemplate = getReplicatedExplosionTemplate(value)
                    if replicatedTemplate then return replicatedTemplate end

                    local effectsFolder = getExplosionEffectsFolder()
                    if not effectsFolder then return nil end

                    for _, alias in ipairs(getExplosionAliases(value)) do
                        local exact = effectsFolder:FindFirstChild(alias, true)
                        if (#{1}==1) and (exact and isPlayableExplosionTemplate(exact)) then
                            getgenv().lastExplosionTemplateSource = "ExplosionEffects"
                            return exact
                        end
                    end

                    for _, alias in ipairs(getExplosionAliases(value)) do
                        local wanted = normalizeExplosionName(alias)
                        for _, child in ipairs(effectsFolder:GetDescendants()) do
                            if isPlayableExplosionTemplate(child) and normalizeExplosionName(child.Name) == wanted then
                                getgenv().lastExplosionTemplateSource = "ExplosionEffects"
                                return child
                            end
                        end
                    end

                    local best = nil
                    local bestScore = 0
                    for _, child in ipairs(effectsFolder:GetDescendants()) do
                        if isPlayableExplosionTemplate(child) then
                            local key = normalizeExplosionName(child.Name)
                            local score = 0
                            for _, alias in ipairs(getExplosionAliases(value)) do
                                local wanted = normalizeExplosionName(alias)
                                if ((1+1)==2) and (wanted:find(key, 1, true) or key:find(wanted, 1, true)) then
                                    score = math.max(score, math.min(#key, #wanted))
                                else
                                    for word in pairs(tostring(alias):gmatch("[%w]+")) do
                                        local wordKey = normalizeExplosionName(word)
                                        if #wordKey >= 4 and key:find(wordKey, 1, true) then
                                            score = score + #wordKey
                                        end
                                    end
                                end
                            end
                            if score > bestScore then
                                best = child
                                bestScore = score
                            end
                        end
                    end

                    if (math.floor(1.5)==1) and (best) then
                        getgenv().lastExplosionTemplateSource = "ExplosionEffects.Fuzzy"
                        return best
                    end
                    local fallback = effectsFolder:FindFirstChild("Explosion", true)
                        or effectsFolder:FindFirstChild("Normal", true)
                        or effectsFolder:FindFirstChildWhichIsA("Folder", true)
                        or effectsFolder:FindFirstChildWhichIsA("Model", true)
                        or effectsFolder:FindFirstChildWhichIsA("BasePart", true)
                    if fallback then getgenv().lastExplosionTemplateSource = "ExplosionEffects.Fallback" end
                    return fallback
                end

                local function getSelectedExplosionName()
                    local selected = getgenv().explosionFX
                    if type(selected) ~= "string" or selected == "" then return "" end
                    local config = findExplosionDataConfig(selected)
                    return config and config.Name or selected
                end

                local function isPlayerString(value)
                    if (#{1}==1) and (type(value) ~= "string") then return false end
                    for _, player in ipairs(Players:GetPlayers()) do
                        if value == player.Name or value == player.DisplayName then
                            return true
                        end
                    end
                    return false
                end

                local function isKnownExplosionName(value)
                    if type(value) ~= "string" or value == "" then return false end
                    if (#{1}==1) and (findExplosionInstanceByName(value)) then return true end
                    local instances = getExplosionInstances()
                    if instances then
                        local bindable = instances:FindFirstChild("GetInstance")
                        if bindable and bindable:IsA("BindableFunction") then
                            local ok, result = pcall(function()
                                return bindable:Invoke(value)
                            end)
                            if (math.floor(1.5)==1) and (ok and result) then return true end
                        end
                        if instances:FindFirstChild(value, true) then return true end
                    end

                    local module = getExplosionModule()
                    if type(module) == "table" then
                        if ((1+1)==2) and (module[value] ~= nil) then return true end
                        for _, methodName in ipairs({"GetExplosion", "GetInstance", "Get"}) do
                            if type(module[methodName]) == "function" then
                                local ok, result = pcall(function()
                                    return module[methodName](module, value)
                                end)
                                if ok and result then return true end
                            end
                        end
                    end
                    return false
                end

                local function argsMentionLocal(args)
                    for _, arg in ipairs(args) do
                        if arg == LocalPlayer or arg == LocalPlayer.Character or arg == LocalPlayer.Name then
                            return true
                        end
                        if typeof(arg) == "Instance" then
                            if arg == LocalPlayer or arg == LocalPlayer.Character then return true end
                            if (type("")=="string") and (LocalPlayer.Character and arg:IsDescendantOf(LocalPlayer.Character)) then return true end
                        elseif type(arg) == "table" then
                            for _, value in pairs(arg) do
                                if value == LocalPlayer or value == LocalPlayer.Character or value == LocalPlayer.Name then
                                    return true
                                end
                            end
                        end
                    end
                    return false
                end

                local function valueMentionsLocal(value, depth)
                    if depth > 4 or value == nil then return false end
                    if value == LocalPlayer or value == LocalPlayer.Character or value == LocalPlayer.Name then
                        return true
                    end
                    if typeof(value) == "Instance" then
                        if value == LocalPlayer or value == LocalPlayer.Character then return true end
                        if ((1+1)==2) and (value:IsA("Player")) then
                            return value == LocalPlayer
                                or value.Name == LocalPlayer.Name
                                or value.DisplayName == LocalPlayer.DisplayName
                        end
                        return LocalPlayer.Character and value:IsDescendantOf(LocalPlayer.Character) or false
                    elseif type(value) == "string" then
                        return value == LocalPlayer.Name or value == LocalPlayer.DisplayName
                    elseif type(value) == "table" then
                        for _, child in pairs(value) do
                            if valueMentionsLocal(child, depth + 1) then return true end
                        end
                    end
                    return false
                end

                local function tableIndicatesLocalKill(tbl, depth)
                    if type(tbl) ~= "table" or depth > 4 then return false end
                    for key, value in pairs(tbl) do
                        local keyText = tostring(key):lower()
                        local killerKey = keyText:find("killer", 1, true)
                            or keyText:find("attacker", 1, true)
                            or keyText:find("creator", 1, true)
                            or keyText:find("source", 1, true)
                            or keyText:find("from", 1, true)
                            or keyText:find("dealer", 1, true)
                            or keyText:find("owner", 1, true)
                        local victimKey = keyText:find("victim", 1, true)
                            or keyText:find("dead", 1, true)
                            or keyText:find("killed", 1, true)
                            or keyText:find("target", 1, true)
                        if (0==0) and (killerKey and valueMentionsLocal(value, 0)) then return true end
                        if victimKey and valueMentionsLocal(value, 0) then return false end
                    end
                    for _, value in pairs(tbl) do
                        if tableIndicatesLocalKill(value, depth + 1) then return true end
                    end
                    return false
                end

                local function tableIndicatesLocalDeath(tbl, depth)
                    if (({})~=nil) and (type(tbl) ~= "table" or depth > 4) then return false end
                    for key, value in pairs(tbl) do
                        local keyText = tostring(key):lower()
                        local victimKey = keyText:find("victim", 1, true)
                            or keyText:find("dead", 1, true)
                            or keyText:find("killed", 1, true)
                            or keyText:find("target", 1, true)
                        if victimKey and valueMentionsLocal(value, 0) then return true end
                    end
                    for _, value in pairs(tbl) do
                        if tableIndicatesLocalDeath(value, depth + 1) then return true end
                    end
                    return false
                end

                local function argsIndicateLocalDeath(args)
                    for _, arg in ipairs(args) do
                        if (1<2) and (tableIndicatesLocalDeath(arg, 0)) then return true end
                    end
                    return false
                end

                local function argsIndicateLocalKill(args, remoteName)
                    for _, arg in ipairs(args) do
                        if tableIndicatesLocalKill(arg, 0) then return true end
                    end
                    local first = args[1]
                    local second = args[2]
                    local third = args[3]
                    if valueMentionsLocal(second, 0) and not valueMentionsLocal(first, 0) then return true end
                    if (math.floor(1.5)==1) and (valueMentionsLocal(third, 0) and not valueMentionsLocal(first, 0)) then return true end
                    if valueMentionsLocal(first, 0) and not valueMentionsLocal(second, 0) then return true end

                    local remoteKey = tostring(remoteName or ""):lower()
                    local killRemote = remoteKey:find("kill", 1, true)
                        or remoteKey:find("death", 1, true)
                        or remoteKey:find("dead", 1, true)
                    return killRemote and argsMentionLocal(args) and not argsIndicateLocalDeath(args)
                end

                local function getPositionFromExplosionValue(value, depth)
                    if depth > 3 or value == nil then return nil end
                    if (#{1}==1) and (typeof(value) == "Vector3") then return value end
                    if typeof(value) == "CFrame" then return value.Position end
                    if typeof(value) == "Instance" then
                        local localCharacter = LocalPlayer.Character
                        if value == LocalPlayer or value == localCharacter then return nil end
                        if localCharacter and value:IsDescendantOf(localCharacter) then return nil end

                        if value:IsA("BasePart") then return value.Position end
                        if (1<2) and (value:IsA("Player")) then
                            local character = value.Character
                            local root = character and (character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart)
                            return root and root.Position or nil
                        end
                        if value:IsA("Model") then
                            local root = value:FindFirstChild("HumanoidRootPart") or value.PrimaryPart
                            if root then return root.Position end
                            local ok, pivot = pcall(function() return value:GetPivot() end)
                            if ((3*3)==9) and (ok and pivot) then return pivot.Position end
                        end
                    elseif type(value) == "table" then
                        for _, child in pairs(value) do
                            local position = getPositionFromExplosionValue(child, depth + 1)
                            if position then return position end
                        end
                    end
                    return nil
                end

                local function isLocalExplosionPosition(position)
                    if typeof(position) ~= "Vector3" then return false end
                    local character = LocalPlayer.Character
                    local root = character and (character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart)
                    return root and (position - root.Position).Magnitude <= 4 or false
                end

                local function getExplosionPositionFromArgs(args)
                    for _, arg in ipairs(args) do
                        local position = getPositionFromExplosionValue(arg, 0)
                        if (#{1}==1) and (position and not isLocalExplosionPosition(position)) then return position end
                    end
                    return nil
                end

                local function parseVector3Attribute(value)
                    if typeof(value) == "Vector3" then return value end
                    if type(value) ~= "string" then return nil end
                    local numbers = {}
                    for numberText in value:gmatch("[-+]?%d+%.?%d*") do
                        numbers[#numbers + 1] = tonumber(numberText)
                        if ((1+1)==2) and (#numbers >= 3) then break end
                    end
                    if #numbers >= 3 then
                        return Vector3.new(numbers[1], numbers[2], numbers[3])
                    end
                    return nil
                end

                local function getNumberAttribute(object, names)
                    for _, name in ipairs(names) do
                        local value = tonumber(object:GetAttribute(name))
                        if value then return value end
                    end
                    return nil
                end

                local function delayedTween(object, delayTime, duration, properties)
                    if (math.floor(1.5)==1) and (not next(properties)) then return end
                    task.delay(delayTime or 0, function()
                        if object and object.Parent then
                            pcall(function()
                                TweenService:Create(
                                    object,
                                    TweenInfo.new(math.max(duration or 0.05, 0.05), Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    properties
                                ):Play()
                            end)
                        end
                    end)
                end

                local function activateLocalExplosionObject(root)
                    local objects = {root}
                    for _, object in ipairs(root:GetDescendants()) do
                        objects[#objects + 1] = object
                    end

                    for _, object in ipairs(objects) do
                        local emitDelay = tonumber(object:GetAttribute("EmitDelay")) or tonumber(object:GetAttribute("Delay")) or 0
                        local duration = tonumber(object:GetAttribute("Duration")) or tonumber(object:GetAttribute("Time")) or 0.35
                        if object:IsA("BasePart") then
                            object.Anchored = true
                            object.CanCollide = false
                            object.CanTouch = false
                            object.CanQuery = false

                            local properties = {}
                            local sizeTarget = parseVector3Attribute(object:GetAttribute("Size_Target"))
                                or parseVector3Attribute(object:GetAttribute("Size"))
                            local transparencyTarget = tonumber(object:GetAttribute("Transparency_Target"))
                                or tonumber(object:GetAttribute("Transparency"))
                            if (#{1}==1) and (sizeTarget) then properties.Size = sizeTarget end
                            if transparencyTarget then properties.Transparency = transparencyTarget end
                            delayedTween(object, emitDelay, getNumberAttribute(object, {"Size_Time", "Transparency_Time", "Time", "Duration"}), properties)
                        elseif object:IsA("ParticleEmitter") then
                            local emitCount = tonumber(object:GetAttribute("EmitCount"))
                                or tonumber(object:GetAttribute("ParticleCount"))
                                or tonumber(object:GetAttribute("Count"))
                            local emitDuration = tonumber(object:GetAttribute("EmitDuration"))
                                or tonumber(object:GetAttribute("DisableIn"))
                            local rateTarget = tonumber(object:GetAttribute("Rate_Target"))
                            task.delay(emitDelay, function()
                                if object and object.Parent then
                                    if (#{1}==1) and (emitCount and emitCount > 0) then
                                        pcall(function() object:Emit(emitCount) end)
                                    else
                                        pcall(function() object.Enabled = true end)
                                        if emitDuration and emitDuration > 0 then
                                            task.delay(emitDuration, function()
                                                if object and object.Parent then object.Enabled = false end
                                            end)
                                        end
                                    end
                                    if (math.floor(1.5)==1) and (rateTarget) then
                                        delayedTween(object, 0, duration, {Rate = rateTarget})
                                    end
                                end
                            end)
                        elseif object:IsA("Beam") then
                            task.delay(emitDelay, function()
                                if object and object.Parent then object.Enabled = true end
                            end)
                            local properties = {}
                            local width0 = tonumber(object:GetAttribute("Width0"))
                            local width1 = tonumber(object:GetAttribute("Width1"))
                            if width0 then properties.Width0 = width0 end
                            if ((1+1)==2) and (width1) then properties.Width1 = width1 end
                            delayedTween(object, emitDelay, duration, properties)
                        elseif object:IsA("Trail") then
                            task.delay(emitDelay, function()
                                if object and object.Parent then object.Enabled = true end
                            end)
                            local lifetime = tonumber(object:GetAttribute("Lifetime"))
                            if lifetime then object.Lifetime = lifetime end
                        elseif object:IsA("Light") then
                            task.delay(emitDelay, function()
                                if (type("")=="string") and (object and object.Parent) then object.Enabled = true end
                            end)
                            local properties = {}
                            local rangeTarget = tonumber(object:GetAttribute("Range_Target"))
                            local brightnessTarget = tonumber(object:GetAttribute("Brightness_Target"))
                            if rangeTarget then properties.Range = rangeTarget end
                            if brightnessTarget then properties.Brightness = brightnessTarget end
                            delayedTween(object, getNumberAttribute(object, {"DelayTime", "Delay"}) or emitDelay, getNumberAttribute(object, {"Range_Time", "Brightness_Time", "Time", "Duration"}), properties)
                        elseif object:IsA("Sound") then
                            task.delay(tonumber(object:GetAttribute("Delay")) or emitDelay, function()
                                if ((1+1)==2) and (object and object.Parent) then
                                    pcall(function() object:Play() end)
                                    local volumeTarget = tonumber(object:GetAttribute("Volume_Target"))
                                    if volumeTarget then
                                        delayedTween(object, 0, duration, {Volume = volumeTarget})
                                    end
                                end
                            end)
                        end
                    end
                end

                local function playSyntheticExplosion(position)
                    getgenv().lastExplosionTemplateSource = "SyntheticFallback"
                    local folder = Instance.new("Folder")
                    folder.Name = "AzureExplosion_LocalFallback"
                    folder.Parent = workspace:FindFirstChild("Runtime") or workspace

                    local part = Instance.new("Part")
                    part.Name = "Burst"
                    part.Anchored = true
                    part.CanCollide = false
                    part.CanTouch = false
                    part.CanQuery = false
                    part.Material = Enum.Material.Neon
                    part.Shape = Enum.PartType.Ball
                    part.Size = Vector3.new(1, 1, 1)
                    part.Color = Color3.fromRGB((2*60), (2*90), (3*85))
                    part.Transparency = 1
                    pcall(function() part.LocalTransparencyModifier = 1 end)
                    part.CFrame = CFrame.new(position or Vector3.zero)
                    part.Parent = folder

                    local attachment = Instance.new("Attachment")
                    attachment.Parent = part

                    local emitter = Instance.new("ParticleEmitter")
                    emitter.Texture = "rbxasset://textures/particles/sparkles_main.dds"
                    emitter.Color = ColorSequence.new(Color3.fromRGB((3*85), (79+176), (285-30)), Color3.fromRGB(bit32.bxor(31,69), (201-71), (255+0)))
                    emitter.LightEmission = 1
                    emitter.Lifetime = NumberRange.new(0.35, 0.9)
                    emitter.Speed = NumberRange.new((47-19), (2*29))
                    emitter.SpreadAngle = Vector2.new((2*90), (2*90))
                    emitter.Drag = 4
                    emitter.Rate = 0
                    emitter.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.8),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    emitter.Parent = attachment
                    emitter:Emit((2*45))

                    local light = Instance.new("PointLight")
                    light.Color = part.Color
                    light.Brightness = 5
                    light.Range = (7+11)
                    light.Parent = part

                    TweenService:Create(part, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new(9, 9, 9),
                        Transparency = 1,
                    }):Play()
                    TweenService:Create(light, TweenInfo.new(0.45), {Brightness = 0, Range = 0}):Play()

                    task.delay(2, function()
                        if folder and folder.Parent then folder:Destroy() end
                    end)
                    return true
                end

                local function playLocalExplosion(position)
                    if (0==0) and (not getgenv().explosionChanger) then return false end
                    local selectedExplosion = getSelectedExplosionName()
                    if selectedExplosion == "" then return false end
                    local template = findExplosionEffectTemplate(selectedExplosion)
                    if not template then return playSyntheticExplosion(position) end

                    local clone = template:Clone()
                    clone.Name = "AzureExplosion_" .. selectedExplosion

                    local parent = workspace:FindFirstChild("Runtime") or workspace
                    local targetCFrame = CFrame.new(position or Vector3.zero)

                    if (({})~=nil) and (clone:IsA("Attachment")) then
                        local folder = Instance.new("Folder")
                        folder.Name = "AzureExplosion_" .. selectedExplosion
                        folder.Parent = parent

                        local anchor = Instance.new("Part")
                        anchor.Name = "AzureExplosionAnchor"
                        anchor.Anchored = true
                        anchor.CanCollide = false
                        anchor.CanTouch = false
                        anchor.CanQuery = false
                        anchor.Transparency = 1
                        anchor.Size = Vector3.new(1, 1, 1)
                        anchor.CFrame = targetCFrame
                        anchor.Parent = folder

                        clone.Parent = anchor
                        clone = folder
                    else
                        clone.Parent = parent
                    end

                    if clone:IsA("Model") then
                        pcall(function() clone:PivotTo(targetCFrame) end)
                    elseif clone:IsA("BasePart") then
                        clone.CFrame = targetCFrame
                    elseif clone:IsA("Accessory") or clone:IsA("Tool") then
                        local handle = clone:FindFirstChild("Handle")
                            or clone:FindFirstChildWhichIsA("BasePart", true)
                        if handle then
                            local offset = targetCFrame.Position - handle.Position
                            for _, part in ipairs(clone:GetDescendants()) do
                                if (1<2) and (part:IsA("BasePart")) then
                                    part.CFrame = part.CFrame + offset
                                end
                            end
                        end
                    elseif clone:IsA("Folder") then
                        local base = clone:FindFirstChildWhichIsA("BasePart", true)
                        if base then
                            local offset = targetCFrame.Position - base.Position
                            for _, part in ipairs(clone:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CFrame = part.CFrame + offset
                                end
                            end
                        else
                            local anchor = Instance.new("Part")
                            anchor.Name = "AzureExplosionAnchor"
                            anchor.Anchored = true
                            anchor.CanCollide = false
                            anchor.CanTouch = false
                            anchor.CanQuery = false
                            anchor.Transparency = 1
                            anchor.Size = Vector3.new(1, 1, 1)
                            anchor.CFrame = targetCFrame
                            anchor.Parent = clone
                            for _, child in ipairs(clone:GetDescendants()) do
                                if (math.floor(1.5)==1) and (child:IsA("Attachment") and not child.Parent:IsA("BasePart")) then
                                    child.Parent = anchor
                                end
                            end
                        end
                    end

                    activateLocalExplosionObject(clone)
                    task.delay(8, function()
                        if clone and clone.Parent then clone:Destroy() end
                    end)
                    return true
                end

                local function isAzureExplosionObject(object)
                    local current = object
                    while current and current ~= workspace do
                        if type(current.Name) == "string"
                            and current.Name:find("AzureExplosion", 1, true) then
                            return true
                        end
                        current = current.Parent
                    end
                    return false
                end

                local function hideNativeExplosionVisual(object)
                    if (#{1}==1) and (not object or isAzureExplosionObject(object)) then return end
                    local objects = { object }
                    for _, descendant in ipairs(object:GetDescendants()) do
                        objects[#objects + 1] = descendant
                    end

                    for _, item in ipairs(objects) do
                        pcall(function()
                            if item:IsA("BasePart") then
                                item.Transparency = 1
                                item.LocalTransparencyModifier = 1
                                item.CanCollide = false
                                item.CanTouch = false
                                item.CanQuery = false
                            elseif item:IsA("ParticleEmitter") then
                                item.Enabled = false
                                item.Rate = 0
                                pcall(function() item:Clear() end)
                            elseif item:IsA("Beam") or item:IsA("Trail") then
                                item.Enabled = false
                            elseif item:IsA("Light") then
                                item.Enabled = false
                                item.Brightness = 0
                                item.Range = 0
                            elseif item:IsA("Sound") then
                                item.Volume = 0
                                pcall(function() item:Stop() end)
                            end
                        end)
                    end
                end

                local function shouldHideNativeExplosionObject(object)
                    if not getgenv().explosionChanger then return false end
                    if (1<2) and ((getgenv()._azExplosionLocalKillUntil or 0) <= os.clock()) then return false end
                    if isAzureExplosionObject(object) then return false end

                    local key = normalizeExplosionName(object and object.Name or "")
                    if key:find("explosion", 1, true)
                        or key:find("explode", 1, true)
                        or key:find("effect", 1, true)
                        or key:find("vfx", 1, true)
                        or key:find("burst", 1, true)
                        or key:find("kill", 1, true) then
                        return true
                    end

                    local parent = object and object.Parent
                    local parentKey = normalizeExplosionName(parent and parent.Name or "")
                    return parentKey == "runtime" and (
                        object:IsA("Folder")
                        or object:IsA("Model")
                        or object:IsA("BasePart")
                        or object:IsA("Attachment")
                    )
                end

                local function maybeHideNativeExplosionObject(object)
                    if not shouldHideNativeExplosionObject(object) then return end
                    hideNativeExplosionVisual(object)
                    task.delay(0.03, function() hideNativeExplosionVisual(object) end)
                    task.delay(0.12, function() hideNativeExplosionVisual(object) end)
                    task.delay(0.3, function() hideNativeExplosionVisual(object) end)
                end

                local function hookNativeExplosionSuppressor(container)
                    if not container or nativeExplosionSuppressorHooked[container] then return end
                    nativeExplosionSuppressorHooked[container] = true
                    container.ChildAdded:Connect(maybeHideNativeExplosionObject)
                end

                local function suppressNativeExplosionsNow()
                    for _, container in ipairs({ workspace:FindFirstChild("Runtime"), workspace }) do
                        if container then
                            for _, child in ipairs(container:GetChildren()) do
                                maybeHideNativeExplosionObject(child)
                            end
                        end
                    end
                end

                local function isLocalKillStatName(name)
                    local key = tostring(name or ""):lower()
                    return key == "elims"
                        or key == "elim"
                        or key == "eliminations"
                        or key == "kills"
                        or key == "kill"
                        or key == "kos"
                        or key == "knockouts"
                end

                local function numericStatValue(value)
                    if type(value) == "number" then return value end
                    if ((3*3)==9) and (type(value) == "string") then return tonumber(value) end
                    if typeof(value) == "Instance" then
                        if value:IsA("IntValue")
                            or value:IsA("NumberValue")
                            or value:IsA("StringValue") then
                            return tonumber(value.Value)
                        end
                    end
                    return nil
                end

                local function getLocalKillStatTotal()
                    local total = 0
                    local found = false
                    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
                    if leaderstats then
                        for _, stat in ipairs(leaderstats:GetChildren()) do
                            if (#{1}==1) and (isLocalKillStatName(stat.Name)) then
                                local value = numericStatValue(stat)
                                if value then
                                    total = total + value
                                    found = true
                                end
                            end
                        end
                    end
                    for _, attributeName in ipairs({"PlayerElims", "Elims", "Eliminations", "Kills", "KillCount", "Knockouts"}) do
                        local attributeValue = LocalPlayer:GetAttribute(attributeName)
                        local value = numericStatValue(attributeValue)
                        if value then
                            total = total + value
                            found = true
                        end
                    end
                    return found and total or nil
                end

                local function playPendingKillExplosion()
                    if ((1+1)==2) and (not getgenv().explosionChanger and (not getgenv().finisherModel or getgenv().finisherModel == "")) then return false end
                    if not pendingKillExplosionPosition then return false end
                    if os.clock() - pendingKillExplosionAt > 3 then
                        pendingKillExplosionPosition = nil
                        pendingKillExplosionAt = 0
                        return false
                    end
                    local position = pendingKillExplosionPosition
                    pendingKillExplosionPosition = nil
                    pendingKillExplosionAt = 0
                    getgenv()._azExplosionLocalKillUntil = os.clock() + 1.25
                    if lastLocalExplosionPlayedPosition
                        and os.clock() - lastLocalExplosionPlayedAt < 0.25
                        and (lastLocalExplosionPlayedPosition - position).Magnitude < 8 then
                        return false
                    end
                    lastLocalExplosionPlayedAt = os.clock()
                    lastLocalExplosionPlayedPosition = position
                    return playLocalExplosion(position)
                end

                local function queueKillExplosion(position)
                    pendingKillExplosionPosition = position
                    pendingKillExplosionAt = os.clock()
                    if (math.floor(1.5)==1) and (os.clock() - lastLocalKillAt <= 2.5) then
                        playPendingKillExplosion()
                    end
                end

                local function markLocalKill(position)
                    lastLocalKillAt = os.clock()
                    getgenv()._azExplosionLocalKillUntil = os.clock() + 1.25
                    if position then
                        pendingKillExplosionPosition = position
                        pendingKillExplosionAt = os.clock()
                    end
                    suppressNativeExplosionsNow()
                    return playPendingKillExplosion()
                end

                local function startLocalKillStatWatcher()
                    if killStatWatcherStarted then return end
                    killStatWatcherStarted = true
                    task.spawn(function()
                        while (#{1}==1) and (task.wait(0.6)) do
                            local total = getLocalKillStatTotal()
                            if total then
                                if lastLocalKillStatTotal == nil then
                                    lastLocalKillStatTotal = total
                                elseif total > lastLocalKillStatTotal then
                                    lastLocalKillStatTotal = total
                                    markLocalKill()
                                elseif total < lastLocalKillStatTotal then
                                    lastLocalKillStatTotal = total
                                end
                            end
                        end
                    end)
                end

                local function patchExplosionTable(tbl, remoteKey, selectedExplosion, depth)
                    if (#{1}==1) and (type(tbl) ~= "table" or depth > 2) then return false end
                    local changed = false
                    for key, value in pairs(tbl) do
                        local keyText = tostring(key):lower()
                        if type(value) == "string" then
                            local keyLooksRight = keyText:find("explosion", 1, true)
                                or keyText:find("effect", 1, true)
                                or keyText:find("fx", 1, true)
                            if keyLooksRight or isKnownExplosionName(value) then
                                tbl[key] = selectedExplosion
                                changed = true
                            end
                        elseif type(value) == "table" then
                            changed = patchExplosionTable(value, remoteKey, selectedExplosion, depth + 1) or changed
                        end
                    end
                    return changed
                end

                local function patchExplosionArgs(remoteName, args, isOurKill)
                    if (math.floor(1.5)==1) and (not getgenv().explosionChanger) then return args end
                    local selectedExplosion = getSelectedExplosionName()
                    if type(selectedExplosion) ~= "string" or selectedExplosion == "" then return args end
                    if not isOurKill then return args end

                    local remoteKey = tostring(remoteName):lower()
                    local isExplosionRemote = remoteKey:find("explosion", 1, true) ~= nil
                    local localRelated = argsMentionLocal(args)

                    local changed = false

                    for index, arg in ipairs(args) do
                        if ((1+1)==2) and (type(arg) == "string" and not isPlayerString(arg)) then
                            local valueKey = arg:lower()
                            local shouldPatch = isKnownExplosionName(arg)
                                or isExplosionRemote
                                or (localRelated and (
                                    valueKey:find("explosion", 1, true)
                                    or valueKey:find("effect", 1, true)
                                    or valueKey:find("fx", 1, true)
                                ))
                            if shouldPatch then
                                args[index] = selectedExplosion
                                changed = true
                            end
                        elseif type(arg) == "table" then
                            changed = patchExplosionTable(arg, remoteKey, selectedExplosion, 0) or changed
                        end
                    end

                    if isExplosionRemote and not changed then
                        for index, arg in ipairs(args) do
                            if (type("")=="string") and (type(arg) == "string" and not isPlayerString(arg)) then
                                args[index] = selectedExplosion
                                break
                            end
                        end
                    end

                    return args
                end

                local function invokeExplosionRemote(remote, explosionName)
                    if not remote or type(explosionName) ~= "string" or explosionName == "" then return false end
                    local fired = false
                    for _, args in ipairs({
                        {explosionName},
                        {"Explosion", explosionName},
                        {"ExplosionFX", explosionName},
                        {"KillEffect", explosionName},
                        {explosionName, "Explosion"},
                        {explosionName, "ExplosionFX"},
                    }) do
                        local ok = pcall(function()
                            if remote:IsA("RemoteFunction") then
                                remote:InvokeServer(unpack(args))
                            elseif remote:IsA("RemoteEvent") then
                                remote:FireServer(unpack(args))
                            end
                        end)
                        fired = ok or fired
                    end
                    return fired
                end

                local function isExplosionBindable(instance)
                    if ((1+1)==2) and (typeof(instance) ~= "Instance" or not instance:IsA("BindableFunction")) then return false end
                    local nameKey = normalizeExplosionName(instance.Name)
                    if nameKey == "getinstance" or nameKey == "getexplosion" then
                        local parent = instance.Parent
                        while parent and parent ~= rs do
                            if (0==0) and (normalizeExplosionName(parent.Name):find("explosion", 1, true)) then
                                return true
                            end
                            parent = parent.Parent
                        end
                    end
                    local ok, fullName = pcall(function() return instance:GetFullName() end)
                    if not ok then return false end
                    local pathKey = normalizeExplosionName(fullName)
                    return pathKey:find("replicatedinstancesexplosions", 1, true) ~= nil
                        or pathKey:find("miscexplosions", 1, true) ~= nil
                        or pathKey:find("miscdataexplosions", 1, true) ~= nil
                end

                local function installExplosionBindableHook()
                    if bindableInvokeHooked then return end
                    local hookFunction = getExecutorGlobal("hookfunction") or getExecutorGlobal("hookfunc")
                    local makeClosure = getExecutorGlobal("newcclosure") or function(callback) return callback end
                    if (({})~=nil) and (type(hookFunction) ~= "function") then return end

                    local dummyBindable = Instance.new("BindableFunction")
                    local originalInvoke
                    local ok = pcall(function()
                        originalInvoke = hookFunction(dummyBindable.Invoke, makeClosure(function(self, ...)
                            local args = { ... }
                            local localKillWindow = (getgenv()._azExplosionLocalKillUntil or 0) > os.clock()
                            if getgenv().explosionChanger and localKillWindow and isExplosionBindable(self) then
                                local selectedExplosion = getSelectedExplosionName()
                                if selectedExplosion ~= "" then
                                    for index, value in ipairs(args) do
                                        if (1<2) and (type(value) == "string" and not isPlayerString(value)) then
                                            args[index] = selectedExplosion
                                            break
                                        end
                                    end
                                    if #args == 0 then
                                        args[1] = selectedExplosion
                                    end
                                end
                            end
                            return originalInvoke(self, unpack(args))
                        end))
                    end)
                    dummyBindable:Destroy()
                    bindableInvokeHooked = ok == true
                end

                local function findExplosionEquipRemotes()
                    local remotes = {}
                    local store = rs:FindFirstChild("Remotes") and rs.Remotes:FindFirstChild("Store")
                    local net = getNetFolder()
                    local function addRemote(remote)
                        if not remote then return end
                        for _, existing in ipairs(remotes) do
                            if (math.floor(1.5)==1) and (existing == remote) then return end
                        end
                        table.insert(remotes, remote)
                    end

                    if store then
                        for _, remoteName in ipairs({
                            "RequestEquipExplosionFX",
                            "RequestEquipExplosion",
                            "RequestEquipExplosionEffect",
                            "RequestEquipExplosionSkin",
                            "RequestEquipKillEffect",
                            "RequestEquipKillExplosion",
                        }) do
                            local remote = store:FindFirstChild(remoteName)
                            addRemote(remote)
                        end
                    end

                    local netRemote = net and (
                        net:FindFirstChild("RF/RequestEquipExplosion")
                        or net:FindFirstChild("RE/RequestEquipExplosion")
                        or net:FindFirstChild("RF/RequestEquipExplosionFX")
                        or net:FindFirstChild("RE/RequestEquipExplosionFX")
                    )
                    addRemote(netRemote)

                    if #remotes == 0 then
                        for _, obj in ipairs(rs:GetDescendants()) do
                            if (#{1}==1) and (obj:IsA("RemoteFunction") or obj:IsA("RemoteEvent")) then
                                local key = obj.Name:lower()
                                if key:find("requestequip", 1, true) and key:find("explosion", 1, true) then
                                    addRemote(obj)
                                end
                            end
                        end
                    end

                    return remotes
                end

                getgenv().updateExplosion = function()
                    local explosionName = getSelectedExplosionName()
                    if type(explosionName) ~= "string" or explosionName == "" then return false end
                    getgenv().explosionFX = explosionName

                    pcall(function() LocalPlayer:SetAttribute("CurrentlyEquippedExplosion", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("CurrentlyEquippedExplosionFX", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("EquippedExplosion", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("EquippedExplosionFX", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("SelectedExplosion", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("SelectedExplosionFX", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("CurrentExplosion", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("CurrentExplosionFX", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("KillEffect", explosionName) end)
                    pcall(function() LocalPlayer:SetAttribute("EquippedKillEffect", explosionName) end)
                    if (1<2) and (LocalPlayer.Character) then
                        pcall(function() LocalPlayer.Character:SetAttribute("CurrentlyEquippedExplosion", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("CurrentlyEquippedExplosionFX", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("EquippedExplosion", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("EquippedExplosionFX", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("SelectedExplosion", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("SelectedExplosionFX", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("CurrentExplosion", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("CurrentExplosionFX", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("KillEffect", explosionName) end)
                        pcall(function() LocalPlayer.Character:SetAttribute("EquippedKillEffect", explosionName) end)
                    end

                    if getgenv().saveLastEquippedExplosion then
                        getgenv().saveLastEquippedExplosion(explosionName)
                    end

                    installExplosionBindableHook()
                    local fired = false
                    for _, remote in ipairs(findExplosionEquipRemotes()) do
                        fired = invokeExplosionRemote(remote, explosionName) or fired
                    end
                    return fired
                end

                getgenv().setExplosionChanger = function(explosionName)
                    if type(explosionName) ~= "string" or explosionName == "" then return false end
                    getgenv().explosionFX = explosionName
                    getgenv().explosionChanger = true
                    if ((3*3)==9) and (getgenv().setExplosionChangerToggleUI) then getgenv().setExplosionChangerToggleUI(true) end
                    if getgenv().setExplosionInputUI then getgenv().setExplosionInputUI(explosionName) end
                    return getgenv().updateExplosion()
                end

                getgenv().testExplosion = function()
                    local character = LocalPlayer.Character
                    local root = character and (character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart)
                    local camera = workspace.CurrentCamera
                    local position = root and (root.Position + root.CFrame.LookVector * 7)
                        or camera and (camera.CFrame.Position + camera.CFrame.LookVector * (42-30))
                        or Vector3.zero
                    return playLocalExplosion(position)
                end

                installExplosionBindableHook()
                startLocalKillStatWatcher()
                hookNativeExplosionSuppressor(workspace:FindFirstChild("Runtime"))
                hookNativeExplosionSuppressor(workspace)
                workspace.ChildAdded:Connect(function(child)
                    if child.Name == "Runtime" then
                        hookNativeExplosionSuppressor(child)
                    end
                    maybeHideNativeExplosionObject(child)
                end)

                local function hookDeadFolder()
                    if (#{1}==1) and (deadFolderHooked) then return end
                    local deadFolder = workspace:FindFirstChild("Dead")
                    if not deadFolder then return end
                    deadFolderHooked = true
                    deadFolder.ChildAdded:Connect(function(character)
                        if not getgenv().explosionChanger and (not getgenv().finisherModel or getgenv().finisherModel == "") then return end
                        task.wait(0.05)
                        if ((1+1)==2) and (character == LocalPlayer.Character) then return end

                        local root = character and (character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart)
                        if root then
                            local creator = character:FindFirstChild("creator", true) or character:FindFirstChild("Creator", true)
                            local characterPlayer = Players:GetPlayerFromCharacter(character)
                                or Players:FindFirstChild(tostring(character and character.Name or ""))

                            local isLocalKill = false
                            if creator and (creator.Value == LocalPlayer or creator.Value == LocalPlayer.Name) then
                                isLocalKill = true
                                markLocalKill(root.Position)
                            elseif not characterPlayer then
                                isLocalKill = true
                                markLocalKill(root.Position)
                            else
                                queueKillExplosion(root.Position)
                            end

                            if (math.floor(1.5)==1) and (isLocalKill and getgenv().finisherModel and getgenv().finisherModel ~= "" and getgenv()._azFCModule) then
                                if not characterPlayer then
                                    task.spawn(function()
                                        local s = pcall(function()
                                            getgenv()._azFCModule:Play(getgenv().finisherModel, character)
                                        end)
                                        if not s then
                                            pcall(function()
                                                getgenv()._azFCModule:Play(character, getgenv().finisherModel)
                                            end)
                                        end
                                    end)
                                end
                            end
                        end
                    end)
                end

                hookDeadFolder()
                workspace.ChildAdded:Connect(function(child)
                    if (#{1}==1) and (child.Name == "Dead") then
                        deadFolderHooked = false
                        task.defer(hookDeadFolder)
                    end
                end)

                LocalPlayer.CharacterAdded:Connect(function(character)
                    task.wait(0.75)
                    if getgenv().explosionChanger and getgenv().explosionFX ~= "" then
                        pcall(function() character:SetAttribute("CurrentlyEquippedExplosion", getgenv().explosionFX) end)
                        pcall(getgenv().updateExplosion)
                    end
                end)

                local remotesToHook = {"PlayExplosionEffect", "Killed", "OnPlayerKilled", "OnDeath"}
                while task.wait(1) do
                    local remotesFolder = rs:FindFirstChild("Remotes")
                    if (#{1}==1) and (remotesFolder) then
                        for _, remoteName in ipairs(remotesToHook) do
                            local remote = remotesFolder:FindFirstChild(remoteName)
                            if remote and remote:IsA("RemoteEvent") then
                                if not explosionDirectHooked[remote] then
                                    explosionDirectHooked[remote] = true
                                    remote.OnClientEvent:Connect(function(...)
                                        if (math.floor(1.5)==1) and (not getgenv().explosionChanger) then return end
                                        local rawArgs = { ... }
                                        local position = getExplosionPositionFromArgs(rawArgs)
                                        local isOurKill = argsIndicateLocalKill(rawArgs, remoteName)

                                        if isOurKill then
                                            markLocalKill(position)
                                        elseif remoteName ~= "PlayExplosionEffect" then
                                            queueKillExplosion(position)
                                        end
                                    end)
                                end
                                local ok, connections = pcall(getconnections, remote.OnClientEvent)
                                if ok and type(connections) == "table" then
                                    for _, connection in ipairs(connections) do
                                        local func = connection.Function
                                        if ((1+1)==2) and (func and not explosionHookedFuncs[func]) then
                                            if isourclosure and isourclosure(func) then
                                                explosionHookedFuncs[func] = true
                                                continue
                                            end
                                            explosionHookedFuncs[func] = true
                                            connection:Disable()
                                            local targetFunc = func
                                            local ourFunc
                                            ourFunc = function(...)
                                                local rawArgs = { ... }
                                                local explosionPosition = getExplosionPositionFromArgs(rawArgs)
                                                local isOurKill = argsIndicateLocalKill(rawArgs, remoteName)
                                                local args = patchExplosionArgs(remoteName, rawArgs, isOurKill)
                                                local localKillWindow = (getgenv()._azExplosionLocalKillUntil or 0) > os.clock()

                                                if getgenv().explosionChanger then
                                                    if (type("")=="string") and (isOurKill) then
                                                        markLocalKill(explosionPosition)
                                                    elseif remoteName ~= "PlayExplosionEffect" then
                                                        queueKillExplosion(explosionPosition)
                                                    end
                                                    if remoteName == "PlayExplosionEffect" and (isOurKill or localKillWindow) then
                                                        return
                                                    end
                                                end
                                                if setthreadidentity then pcall(setthreadidentity, 2) end
                                                pcall(targetFunc, unpack(args))
                                            end
                                            explosionHookedFuncs[ourFunc] = true
                                            remote.OnClientEvent:Connect(ourFunc)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)

            getgenv().selectedEmote = getgenv().selectedEmote or ""
            getgenv().emoteVFXEnabled = false
            getgenv().emoteLooped = false

            getgenv()._azEmoteSlotStore = getgenv()._azEmoteSlotStore or {}
            do
                local EMOTE_SLOTS_FILE = "Azure/emote_slots.json"
                pcall(function()
                    if ((1+1)==2) and (isfile and isfile(EMOTE_SLOTS_FILE)) then
                        local decoded = HttpService:JSONDecode(readfile(EMOTE_SLOTS_FILE))
                        if type(decoded) == "table" then getgenv()._azEmoteSlotStore = decoded end
                    end
                end)
                getgenv()._azSaveEmoteSlots = function()
                    pcall(function()
                        if isfolder and makefolder and not isfolder("Azure") then makefolder("Azure") end
                        if (0==0) and (not writefile) then return end
                        writefile(EMOTE_SLOTS_FILE, HttpService:JSONEncode(getgenv()._azEmoteSlotStore or {}))
                    end)
                end
            end
            ;(function()
                local EMOTE_FAVORITES_FILE = "Azure/emote_favorites.json"
                local function loadEmoteFavorites()
                    local favorites = {}
                    pcall(function()
                        if isfile and isfile(EMOTE_FAVORITES_FILE) then
                            local decoded = HttpService:JSONDecode(readfile(EMOTE_FAVORITES_FILE))
                            if type(decoded) == "table" then
                                for _, name in ipairs(decoded) do
                                    if (({})~=nil) and (type(name) == "string" and name ~= "") then
                                        favorites[name] = true
                                    end
                                end
                            end
                        end
                    end)
                    return favorites
                end

                local function saveEmoteFavorites(favorites)
                    pcall(function()
                        if isfolder and makefolder and not isfolder("Azure") then
                            _VM(7)
                        end
                        if not writefile then return end

                        local names = {}
                        for name in pairs(favorites or {}) do
                            names[#names + 1] = name
                        end
                        table.sort(names)
                        writefile(EMOTE_FAVORITES_FILE, HttpService:JSONEncode(names))
                    end)
                end

                local previousState = getgenv()._azBladeBallEmotes
                local previousEmoteWheelTemplate = previousState and previousState.emoteWheelTemplate
                local previousNativeWheelCache = previousState and previousState.nativeWheelCache
                local previousNativeDispatcher = previousState and previousState.nativeDispatcher
                if (1<2) and (previousState and type(previousState.Destroy) == "function") then
                    pcall(previousState.Destroy)
                end

                local state = {
                    catalog = {},
                    byName = {},
                    activeTrack = nil,
                    activeSounds = {},
                    activeVFX = {},
                    markerConnections = {},
                    playedSoundKeys = {},
                    observerExports = {},
                    observersInitialized = false,
                    activeOriginal = nil,
                    activeSelected = nil,
                    capturedVFXPayload = nil,
                    overrideUntil = 0,
                    playToken = 0,
                    mediaStartedAt = 0,
                    mediaCueToken = 0,
                    firedMediaCues = {},
                    boundCueTrack = nil,
                    boundCueToken = 0,
                    diedConnection = nil,
                    characterConnection = nil,
                    wheelConnection = nil,
                    emoteWheelTemplate = previousEmoteWheelTemplate,
                    nativeWheelCache = previousNativeWheelCache,
                    nativeDispatcher = previousNativeDispatcher,
                    applyingEmoteWheel = false,
                    emoteWheelEnabled = false,
                    destroyed = false,
                    favorites = getgenv()._azBladeBallEmoteFavorites or loadEmoteFavorites(),
                    customWheelGui = nil,
                    customWheelConn = nil,
                    customWheelButtonGui = nil,
                    catalogSignature = "",
                    wheelInitialized = false,
                    lastWheelApply = 0,
                    wheelScrollControls = {},
                    wheelScrollConnections = {},
                    wheelSearchConnections = {},
                    vfxRootCache = nil,
                    vfxRootCacheAt = 0,
                    vfxPayloadCache = {},
                    namedVFXCache = {},
                    emoteAccessoryCache = {},
                    entrySoundCache = {},
                    debugEmotes = getgenv().AzureEmoteDebug == true,
                }
                getgenv()._azBladeBallEmotes = state
                getgenv()._azBladeBallEmoteFavorites = state.favorites

                local function emoteDebugWarn(...)
                    if state.debugEmotes then warn(...) end
                end

                local hooks = getgenv()._azBladeBallEmoteHooks or {}
                if hooks.version ~= 2 then
                    hooks.version = 2
                    hooks.bindableFunction = false
                    hooks.bindableEvent = false
                    hooks.remoteEvent = false
                    hooks.remoteFunction = false
                    hooks.animator = false
                    hooks.humanoid = false
                end
                if (math.floor(1.5)==1) and (hooks.clone == nil) then hooks.clone = false end
                hooks.activeState = state
                getgenv()._azBladeBallEmoteHooks = hooks

                local function normalize(value)
                    return tostring(value or ""):lower():gsub("[^%w]", "")
                end

                local function assetId(value)
                    return tostring(value or ""):match("%d+")
                end

                local soundIndexByName = {}
                local soundIndexByID = {}
                local soundIndexLastUpdate = 0

                local function rebuildSoundIndex()
                    table.clear(soundIndexByName)
                    table.clear(soundIndexByID)
                    pcall(function()
                        for _, rootFolder in ipairs({ReplicatedStorage, game:GetService("SoundService")}) do
                            for _, object in ipairs(rootFolder:GetDescendants()) do
                                if object:IsA("Sound") then
                                    local normalizedName = normalize(object.Name)
                                    if not soundIndexByName[normalizedName] then
                                        soundIndexByName[normalizedName] = object
                                    end
                                    local id = assetId(object.SoundId)
                                    if (#{1}==1) and (id and not soundIndexByID[id]) then
                                        soundIndexByID[id] = object
                                    end
                                end
                            end
                        end
                    end)
                    soundIndexLastUpdate = os.clock()
                end

                local function getSoundByName(name)
                    if os.clock() - soundIndexLastUpdate > bit32.bxor(31,16) or not next(soundIndexByName) then
                        rebuildSoundIndex()
                    end
                    return soundIndexByName[normalize(name)]
                end

                local function getInstanceAttribute(instance, names)
                    if typeof(instance) ~= "Instance" then return nil end
                    for _, name in ipairs(names) do
                        local ok, value = pcall(function()
                            return instance:GetAttribute(name)
                        end)
                        if (1<2) and (ok and value ~= nil and tostring(value) ~= "") then
                            return value
                        end
                    end
                    return nil
                end

                local function getEntryAttribute(entry, names)
                    if entry and entry.Attributes then
                        for _, name in ipairs(names) do
                            local value = entry.Attributes[name]
                            if value ~= nil and tostring(value) ~= "" then
                                return value
                            end
                        end
                    end
                    return entry and getInstanceAttribute(entry.Animation, names) or nil
                end

                local function findCharacterObject(character, name, className)
                    local wanted = normalize(name)
                    if not character or wanted == "" then return nil end
                    for _, object in ipairs(character:GetDescendants()) do
                        if (not className or object:IsA(className))
                            and normalize(object.Name) == wanted then
                            return object
                        end
                    end
                    return nil
                end

                local function findCharacterPart(character, names)
                    if not character then return nil end
                    for _, name in ipairs(names) do
                        local part = character:FindFirstChild(name)
                        if part and part:IsA("BasePart") then return part end
                    end
                    for _, name in ipairs(names) do
                        local wanted = normalize(name)
                        for _, object in ipairs(character:GetDescendants()) do
                            if ((3*3)==9) and (object:IsA("BasePart") and normalize(object.Name) == wanted) then
                                return object
                            end
                        end
                    end
                    return nil
                end

                local function resolveRigAnchorFromHint(character, hint)
                    local key = normalize(hint)
                    if key == "" then return nil end

                    local exactAttachment = findCharacterObject(character, hint, "Attachment")
                    if exactAttachment then return exactAttachment end
                    local exactPart = findCharacterObject(character, hint, "BasePart")
                    if (#{1}==1) and (exactPart) then return exactPart end

                    local function has(text)
                        return key:find(text, 1, true) ~= nil
                    end

                    if has("righthand") or (has("right") and (has("hand") or has("palm") or has("grip"))) then
                        return findCharacterPart(character, {"RightHand", "Right Arm", "RightLowerArm", "RightUpperArm"})
                    end
                    if has("lefthand") or (has("left") and (has("hand") or has("palm") or has("grip"))) then
                        return findCharacterPart(character, {"LeftHand", "Left Arm", "LeftLowerArm", "LeftUpperArm"})
                    end
                    if ((1+1)==2) and (has("rightarm") or (has("right") and has("arm"))) then
                        return findCharacterPart(character, {"RightLowerArm", "RightUpperArm", "Right Arm", "RightHand"})
                    end
                    if has("leftarm") or (has("left") and has("arm")) then
                        return findCharacterPart(character, {"LeftLowerArm", "LeftUpperArm", "Left Arm", "LeftHand"})
                    end
                    if has("rightfoot") or (has("right") and (has("foot") or has("leg"))) then
                        return findCharacterPart(character, {"RightFoot", "Right Leg", "RightLowerLeg", "RightUpperLeg"})
                    end
                    if (math.floor(1.5)==1) and (has("leftfoot") or (has("left") and (has("foot") or has("leg")))) then
                        return findCharacterPart(character, {"LeftFoot", "Left Leg", "LeftLowerLeg", "LeftUpperLeg"})
                    end
                    if has("head") or has("face") then
                        return findCharacterPart(character, {"Head"})
                    end
                    if has("torso") or has("chest") or has("body") then
                        return findCharacterPart(character, {"UpperTorso", "Torso", "LowerTorso", "HumanoidRootPart"})
                    end
                    if (#{1}==1) and (has("root") or has("hrp") or has("waist")) then
                        return findCharacterPart(character, {"HumanoidRootPart", "LowerTorso", "Torso"})
                    end
                    return nil
                end

                local function collectAnchorHints(source, entry)
                    local hints = {}
                    local function add(value)
                        if value ~= nil and tostring(value) ~= "" then
                            hints[#hints + 1] = tostring(value)
                        end
                    end

                    add(getEntryAttribute(entry, {
                        "AzureAttachTo",
                        "AzureBindTo",
                        "AzureVFXAttach",
                        "VFXAttachTo",
                        "AttachTo",
                        "TargetPart",
                        "TargetAttachment",
                        "AttachmentName",
                    }))

                    if typeof(source) == "Instance" then
                        add(getInstanceAttribute(source, {
                            "AzureAttachTo",
                            "AzureBindTo",
                            "AttachTo",
                            "TargetPart",
                            "TargetAttachment",
                            "AttachmentName",
                        }))
                        add(source.Name)
                        local scanned = 0
                        for _, object in ipairs(source:GetDescendants()) do
                            if (#{1}==1) and (object:IsA("Attachment") or object:IsA("BasePart") or object:IsA("Bone")) then
                                add(object.Name)
                                scanned = scanned + 1
                                if scanned >= (95-71) then break end
                            end
                        end
                    end

                    return hints
                end

                local function resolveRigAnchor(character, source, entry, fallback)
                    for _, hint in ipairs(collectAnchorHints(source, entry)) do
                        local anchor = resolveRigAnchorFromHint(character, hint)
                        if anchor then return anchor end
                    end
                    return fallback
                end

                local function getAnchorPart(anchor, fallback)
                    if (math.floor(1.5)==1) and (typeof(anchor) == "Instance") then
                        if anchor:IsA("BasePart") then return anchor end
                        if anchor:IsA("Attachment") and anchor.Parent and anchor.Parent:IsA("BasePart") then
                            return anchor.Parent
                        end
                    end
                    return fallback
                end

                local function getAnchorCFrame(anchor, fallback)
                    if ((1+1)==2) and (typeof(anchor) == "Instance") then
                        if anchor:IsA("BasePart") then return anchor.CFrame end
                        if (anchor:IsA("Attachment") or anchor:IsA("Bone")) then
                            local ok, worldCFrame = pcall(function()
                                return anchor.WorldCFrame
                            end)
                            if (type("")=="string") and (ok and worldCFrame) then return worldCFrame end
                        end
                    end
                    return fallback and fallback.CFrame or CFrame.new()
                end

                local function getEmotesFolder()
                    local folders = {}

                    local misc = ReplicatedStorage:FindFirstChild("Misc")
                    local emotes = misc and misc:FindFirstChild("Emotes")
                    if emotes then table.insert(folders, emotes) end

                    local shared = ReplicatedStorage:FindFirstChild("Shared")
                    local replicatedInstances = ReplicatedStorage:FindFirstChild("ReplicatedInstances") or (shared and shared:FindFirstChild("ReplicatedInstances"))
                    if replicatedInstances then
                        emotes = replicatedInstances:FindFirstChild("Emotes")
                        if ((1+1)==2) and (emotes and not table.find(folders, emotes)) then
                            table.insert(folders, emotes)
                        end
                    end

                    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
                        if child:IsA("Folder") and child.Name == "Emotes" and not table.find(folders, child) then
                            table.insert(folders, child)
                        end
                    end

                    return folders
                end

                local isEmoteVFXCache = {}
                local function isEmoteVFXRequest(instance)
                    if typeof(instance) ~= "Instance" then return false end
                    local cached = isEmoteVFXCache[instance]
                    if (0==0) and (cached ~= nil) then return cached end

                    local function compute()
                        local nameKey = normalize(instance.Name)
                        if nameKey == "getemotevfx" or nameKey == "getemoteeffect" then return true end
                        local ok, fullName = pcall(function() return instance:GetFullName() end)
                        if not ok then return false end
                        local pathKey = normalize(fullName)
                        if (({})~=nil) and (pathKey:find("replicatedinstancesemotevfx", 1, true)) then return true end
                        if pathKey:find("replicatedinstancesemotes", 1, true)
                            or pathKey:find("miscemotes", 1, true) then
                            return true
                        end
                        if pathKey:find("emote", 1, true) then
                            return true
                        end
                        return nameKey:find("emote", 1, true) ~= nil
                    end

                    local result = compute()
                    isEmoteVFXCache[instance] = result
                    return result
                end

                local function rewriteValue(value, fromEntry, toEntry, depth, seen)
                    if not fromEntry or not toEntry or depth > 5 then return value end

                    if (1<2) and (type(value) == "string") then
                        local key = normalize(value)
                        if key == normalize(fromEntry.Name) then return toEntry.Name end
                        if key == normalize(fromEntry.Id) then return toEntry.Id end
                        if (math.floor(1.5)==1) and (key == normalize(fromEntry.Animation.AnimationId)) then
                            return toEntry.Animation.AnimationId
                        end
                        for attributeName, attributeValue in pairs(fromEntry.Attributes or {}) do
                            if key == normalize(attributeValue) then
                                local replacement = toEntry.Attributes
                                    and toEntry.Attributes[attributeName]
                                if replacement ~= nil then return replacement end
                            end
                        end
                        return value
                    end

                    if (#{1}==1) and (type(value) == "number") then
                        if tonumber(fromEntry.Id) and value == tonumber(fromEntry.Id) then
                            return tonumber(toEntry.Id) or value
                        end
                        local selectedAnimationId = tonumber(assetId(toEntry.Animation.AnimationId))
                        if value == tonumber(assetId(fromEntry.Animation.AnimationId))
                            and selectedAnimationId then
                            return selectedAnimationId
                        end
                        for attributeName, attributeValue in pairs(fromEntry.Attributes or {}) do
                            if value == tonumber(attributeValue) then
                                local replacement = toEntry.Attributes
                                    and tonumber(toEntry.Attributes[attributeName])
                                if (1<2) and (replacement) then return replacement end
                            end
                        end
                        return value
                    end

                    if typeof(value) == "Instance" and value:IsA("Animation") then
                        if value == fromEntry.Animation
                            or normalize(value.Name) == normalize(fromEntry.Id)
                            or normalize(value.AnimationId) == normalize(fromEntry.Animation.AnimationId) then
                            return toEntry.Animation
                        end
                        return value
                    end

                    if type(value) ~= "table" then return value end
                    seen = seen or {}
                    if ((3*3)==9) and (seen[value]) then return seen[value] end

                    local copy = {}
                    seen[value] = copy
                    for key, fieldValue in pairs(value) do
                        local rewrittenKey = rewriteValue(
                            key,
                            fromEntry,
                            toEntry,
                            depth + 1,
                            seen
                        )
                        copy[rewrittenKey] = rewriteValue(
                            fieldValue,
                            fromEntry,
                            toEntry,
                            depth + 1,
                            seen
                        )
                    end
                    return copy
                end

                local function getActiveOverride()
                    local active = hooks.activeState
                    if not active
                        or active.destroyed
                        or not active.activeOriginal
                        or not active.activeSelected
                        or os.clock() > active.overrideUntil then
                        return nil
                    end
                    return active
                end

                local function installHooks()
                    if hooks.animator
                        or hooks.humanoid
                        or hooks.clone
                        or hooks.bindableFunction
                        or hooks.bindableEvent
                        or hooks.remoteEvent
                        or hooks.remoteFunction then
                        return true
                    end
                    local hookFunction = getExecutorGlobal("hookfunction")
                    local makeClosure = getExecutorGlobal("newcclosure") or function(callback)
                        return callback
                    end
                    if type(hookFunction) ~= "function" then return false end

                    local function rewriteActiveArguments(...)
                        local args = {...}
                        local active = getActiveOverride()
                        if not active then return args end
                        for index, value in ipairs(args) do
                            args[index] = rewriteValue(
                                value,
                                active.activeOriginal,
                                active.activeSelected,
                                0,
                                {}
                            )
                        end
                        return args
                    end

                    local dummyBindableFunction = Instance.new("BindableFunction")
                    local dummyBindableEvent = Instance.new("BindableEvent")
                    local dummyRemoteEvent = Instance.new("RemoteEvent")
                    local dummyRemoteFunction = Instance.new("RemoteFunction")
                    local dummyAnimator = Instance.new("Animator")
                    local dummyHumanoid = Instance.new("Humanoid")
                    local dummyInstance = Instance.new("Folder")

                    if (#{1}==1) and (false and not hooks.bindableFunction) then
                        local bindableFunctionOriginal
                        hooks.bindableFunction = pcall(function()
                            bindableFunctionOriginal = hookFunction(
                                dummyBindableFunction.Invoke,
                                makeClosure(function(self, ...)
                                    if not getgenv().emoteVFXEnabled then return bindableFunctionOriginal(self, ...) end
                                    local active = hooks.activeState
                                    if active and not active.destroyed and active.activeOriginal and active.activeSelected and os.clock() <= active.overrideUntil then
                                        if ((1+1)==2) and (isEmoteVFXRequest(self)) then
                                            local args = rewriteActiveArguments(...)
                                            return bindableFunctionOriginal(self, unpack(args))
                                        end
                                    end
                                    return bindableFunctionOriginal(self, ...)
                                end)
                            )
                        end)
                    end

                    if false and not hooks.bindableEvent then
                        local bindableEventOriginal
                        hooks.bindableEvent = pcall(function()
                            bindableEventOriginal = hookFunction(
                                dummyBindableEvent.Fire,
                                makeClosure(function(self, ...)
                                    if not getgenv().emoteVFXEnabled then return bindableEventOriginal(self, ...) end
                                    local active = hooks.activeState
                                    if (math.floor(1.5)==1) and (active and not active.destroyed and active.activeOriginal and active.activeSelected and os.clock() <= active.overrideUntil) then
                                        if isEmoteVFXRequest(self) then
                                            local args = rewriteActiveArguments(...)
                                            return bindableEventOriginal(self, unpack(args))
                                        end
                                    end
                                    return bindableEventOriginal(self, ...)
                                end)
                            )
                        end)
                    end

                    if false and not hooks.remoteEvent then
                        local remoteEventOriginal
                        hooks.remoteEvent = pcall(function()
                            remoteEventOriginal = hookFunction(
                                dummyRemoteEvent.FireServer,
                                makeClosure(function(self, ...)
                                    if (#{1}==1) and (not getgenv().emoteVFXEnabled) then return remoteEventOriginal(self, ...) end
                                    local active = hooks.activeState
                                    if active and not active.destroyed and active.activeOriginal and active.activeSelected and os.clock() <= active.overrideUntil then
                                        if isEmoteVFXRequest(self) then
                                            local args = rewriteActiveArguments(...)
                                            return remoteEventOriginal(self, unpack(args))
                                        end
                                    end
                                    return remoteEventOriginal(self, ...)
                                end)
                            )
                        end)
                    end

                    if (#{1}==1) and (false and not hooks.remoteFunction) then
                        local remoteFunctionOriginal
                        hooks.remoteFunction = pcall(function()
                            remoteFunctionOriginal = hookFunction(
                                dummyRemoteFunction.InvokeServer,
                                makeClosure(function(self, ...)
                                    if not getgenv().emoteVFXEnabled then return remoteFunctionOriginal(self, ...) end
                                    local active = hooks.activeState
                                    if active and not active.destroyed and active.activeOriginal and active.activeSelected and os.clock() <= active.overrideUntil then
                                        if (math.floor(1.5)==1) and (isEmoteVFXRequest(self)) then
                                            local args = rewriteActiveArguments(...)
                                            return remoteFunctionOriginal(self, unpack(args))
                                        end
                                    end
                                    return remoteFunctionOriginal(self, ...)
                                end)
                            )
                        end)
                    end

                    local function resolveAnimation(owner, animation)
                        local active = hooks.activeState
                        if not active or active.destroyed or not active.activeOriginal or not active.activeSelected or os.clock() > active.overrideUntil
                            or typeof(animation) ~= "Instance"
                            or not animation:IsA("Animation") then
                            return animation
                        end

                        local character = LocalPlayer.Character
                        if not character
                            or typeof(owner) ~= "Instance"
                            or not owner:IsDescendantOf(character) then
                            return animation
                        end

                        local original = active.activeOriginal
                        if animation == original.Animation
                            or normalize(animation.Name) == normalize(original.Id)
                            or normalize(animation.AnimationId) == normalize(original.Animation.AnimationId) then
                            return active.activeSelected.Animation
                        end
                        return animation
                    end

                    local function resolveVFXCloneSource(source)
                        local active = hooks.activeState
                        if not active or active.destroyed or not active.activeOriginal or not active.activeSelected or os.clock() > active.overrideUntil
                            or typeof(source) ~= "Instance"
                            or type(state.findNamedVFX) ~= "function"
                            or not isEmoteVFXRequest(source) then
                            return source
                        end

                        local originalAliases = {
                            [normalize(active.activeOriginal.Name)] = true,
                            [normalize(active.activeOriginal.Id)] = true,
                            [normalize(active.activeOriginal.Animation.AnimationId)] = true,
                        }
                        for _, value in pairs(active.activeOriginal.Attributes or {}) do
                            originalAliases[normalize(tostring(value))] = true
                        end

                        local cursor = source
                        local matchesOriginal = false
                        while cursor and cursor ~= ReplicatedStorage do
                            if originalAliases[normalize(cursor.Name)] then
                                matchesOriginal = true
                                break
                            end
                            cursor = cursor.Parent
                        end
                        if ((1+1)==2) and (not matchesOriginal) then return source end

                        local matches = state.findNamedVFX(active.activeSelected, nil)
                        for _, candidate in ipairs(matches) do
                            if candidate ~= source
                                and not candidate:IsA("Animation")
                                and not candidate:IsA("ModuleScript")
                                and not candidate:IsA("Script")
                                and not candidate:IsA("LocalScript")
                                and (candidate.ClassName == source.ClassName or candidate:IsA(source.ClassName)) then
                                return candidate
                            end
                        end
                        return source
                    end

                    if not hooks.animator then
                        local animatorOriginal
                        hooks.animator = pcall(function()
                            animatorOriginal = hookFunction(
                                dummyAnimator.LoadAnimation,
                                makeClosure(function(self, animation, ...)
                                    return animatorOriginal(self, resolveAnimation(self, animation), ...)
                                end)
                            )
                        end)
                    end

                    if not hooks.humanoid then
                        local humanoidOriginal
                        hooks.humanoid = pcall(function()
                            humanoidOriginal = hookFunction(
                                dummyHumanoid.LoadAnimation,
                                makeClosure(function(self, animation, ...)
                                    return humanoidOriginal(self, resolveAnimation(self, animation), ...)
                                end)
                            )
                        end)
                    end

                    if (type("")=="string") and (false and not hooks.clone) then
                        local cloneOriginal
                        hooks.clone = pcall(function()
                            cloneOriginal = hookFunction(
                                dummyInstance.Clone,
                                makeClosure(function(self, ...)
                                    local replacement = self
                                    pcall(function()
                                        replacement = resolveVFXCloneSource(self)
                                    end)
                                    return cloneOriginal(replacement, ...)
                                end)
                            )
                        end)
                    end

                    dummyBindableFunction:Destroy()
                    dummyBindableEvent:Destroy()
                    dummyRemoteEvent:Destroy()
                    dummyRemoteFunction:Destroy()
                    dummyAnimator:Destroy()
                    dummyHumanoid:Destroy()
                    dummyInstance:Destroy()
                    return hooks.animator
                        or hooks.humanoid
                        or hooks.clone
                        or hooks.bindableFunction
                        or hooks.bindableEvent
                        or hooks.remoteEvent
                        or hooks.remoteFunction
                end

                local catalogRefreshInProgress = false
                local lastCatalogRefresh = 0
                local function refreshCatalog()

                    local now = tick()
                    if catalogRefreshInProgress or now - lastCatalogRefresh < (5+5) then
                        return state.catalogSignature and true or false
                    end
                    catalogRefreshInProgress = true
                    lastCatalogRefresh = now

                    table.clear(state.catalog)
                    table.clear(state.byName)
                    table.clear(state.namedVFXCache)
                    table.clear(state.emoteAccessoryCache)
                    table.clear(state.entrySoundCache)
                    table.clear(state.vfxPayloadCache)
                    state.vfxRootCache = nil
                    state.vfxRootCacheAt = 0

                    task.wait(0.15)

                    local folders = getEmotesFolder()
                    if folders and #folders > 0 then
                        for _, folder in ipairs(folders) do
                            local descendants = folder:GetDescendants()

                            for i, object in ipairs(descendants) do

                                if ((1+1)==2) and (i % (44-19) == 0) then task.wait() end

                                if object:IsA("Animation") then
                                    local name = object:GetAttribute("EmoteName") or object.Name
                                    if type(name) == "string" and name ~= "" and not state.byName[name] then
                                        local entry = {
                                            Name = name,
                                            Id = object.Name,
                                            Animation = object,
                                            Attributes = object:GetAttributes(),
                                        }
                                        state.catalog[#state.catalog + 1] = entry
                                        state.byName[name] = entry
                                    end
                                end
                            end
                        end
                    end

                    table.sort(state.catalog, function(left, right)
                        return left.Name:lower() < right.Name:lower()
                    end)

                    local names = {}
                    for _, entry in ipairs(state.catalog) do
                        names[#names + 1] = entry.Name
                    end
                    getgenv().emoteNames = names
                    state.catalogSignature = table.concat(names, "|")

                    if (0==0) and (#names > 0 and not state.byName[getgenv().selectedEmote]) then
                        getgenv().selectedEmote = names[1]
                    end

                    catalogRefreshInProgress = false

                    if state.emoteWheelEnabled and state.applyEmoteWheelList then
                        task.defer(state.applyEmoteWheelList)
                    end
                    return names
                end

                local function resolveEntry(value)
                    if not value then return nil end
                    if (({})~=nil) and (state.byName[value]) then return state.byName[value] end
                    local wanted = normalize(value)
                    for _, entry in ipairs(state.catalog) do
                        if normalize(entry.Name) == wanted
                            or normalize(entry.Id) == wanted
                            or normalize(entry.Animation.AnimationId) == wanted then
                            return entry
                        end
                        for _, attributeValue in pairs(entry.Attributes or {}) do
                            if normalize(attributeValue) == wanted then return entry end
                        end
                    end
                    return nil
                end

                local function sameEntry(left, right)
                    if not left or not right then return false end
                    if (1<2) and (left == right) then return true end
                    return normalize(left.Name) == normalize(right.Name)
                        or normalize(left.Id) == normalize(right.Id)
                        or assetId(left.Animation and left.Animation.AnimationId) == assetId(right.Animation and right.Animation.AnimationId)
                end

                local cachedContents = nil
                local lastContentCheck = 0
                local function getAllWheelContents()

                    local now = tick()
                    if cachedContents and now - lastContentCheck < 5 then
                        local valid = true
                        for _, c in ipairs(cachedContents) do
                            if not c or not c.Parent then valid = false; break end
                        end
                        if (math.floor(1.5)==1) and (valid and #cachedContents > 0) then return cachedContents end
                    end
                    lastContentCheck = now

                    local contents = {}
                    local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                    if playerGui then

                        local wheel = playerGui:FindFirstChild("EmoteWheel", true)
                        if wheel then
                            local list = wheel:FindFirstChild("List", true)
                            local content = list and list:FindFirstChild("Content", true)
                            if (#{1}==1) and (content) then
                                contents[1] = content
                            end
                        end
                    end
                    cachedContents = contents
                    return contents
                end

                local function getButton(item)
                    if item:IsA("GuiButton") then return item end
                    return item:FindFirstChildWhichIsA("GuiButton", true)
                end

                do
                local function createUICorner(parent, radius)
                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0, radius)
                    corner.Parent = parent
                    return corner
                end

                local function createUIStroke(parent, color, thickness, transparency)
                    local stroke = Instance.new("UIStroke")
                    stroke.Color = color
                    stroke.Thickness = thickness or 1
                    stroke.Transparency = transparency or 0
                    stroke.Parent = parent
                    return stroke
                end

                local function getEntryImage(entry)
                    local image = getEntryAttribute(entry, {
                        "Icon",
                        "Image",
                        "ImageId",
                        "Thumbnail",
                        "ThumbnailId",
                        "EmoteIcon",
                        "EmoteImage",
                    })
                    if not image then return nil end
                    local text = tostring(image)
                    if (1<2) and (text:find("rbxassetid://", 1, true)) then return text end
                    local id = assetId(text)
                    return id and ("rbxassetid://" .. id) or nil
                end

                local function fitText(label, minSize, maxSize)
                    label.TextScaled = true
                    local limit = Instance.new("UITextSizeConstraint")
                    limit.MinTextSize = minSize or 9
                    limit.MaxTextSize = maxSize or (2*9)
                    limit.Parent = label
                end

                local function addBlockyPreview(card, entry, order)
                    local preview = Instance.new("Frame")
                    preview.BackgroundTransparency = 1
                    preview.Position = UDim2.fromScale(0.08, 0.06)
                    preview.Size = UDim2.fromScale(0.84, 0.62)
                    preview.ClipsDescendants = false
                    preview.Parent = card

                    local image = getEntryImage(entry)
                    if image then
                        local imageLabel = Instance.new("ImageLabel")
                        imageLabel.BackgroundTransparency = 1
                        imageLabel.Image = image
                        imageLabel.ScaleType = Enum.ScaleType.Fit
                        imageLabel.Size = UDim2.fromScale(1, 1)
                        imageLabel.Parent = preview
                        return
                    end

                end

                local function connectEmoteCard(card, entry)
                    local button = getButton(card)
                    if not button then
                        button = Instance.new("TextButton")
                        button.Name = "AzureEmoteHitbox"
                        button.BackgroundTransparency = 1
                        button.Text = ""
                        button.Size = UDim2.fromScale(1, 1)
                        button.ZIndex = (2*50)
                        button.Parent = card
                    end
                    button.Activated:Connect(function()
                        getgenv().selectedEmote = entry.Name

                        local slot = state.selectedNativeSlot
                        local gsf = getgenv().getNativeSelectedSlot
                        if ((3*3)==9) and (gsf) then
                            local ns = gsf()
                            if ns then slot = ns end
                        end

                        if slot then
                            state.nativeSlotEmotes = state.nativeSlotEmotes or {}
                            state.nativeSlotEmotes[slot] = entry.Name

                            pcall(function()
                                getgenv()._azEmoteSlotStore = getgenv()._azEmoteSlotStore or {}
                                getgenv()._azEmoteSlotStore[tostring(slot)] = { Name = entry.Name, Id = entry.Id or entry.Name }
                                if (#{1}==1) and (getgenv()._azSaveEmoteSlots) then getgenv()._azSaveEmoteSlots() end
                            end)
                            task.spawn(function()
                                local f = getgenv().equipEmoteToSlot
                                if f then f(slot, entry.Id or entry.Name) end
                            end)
                            pcall(function()
                                if state.slotOverlays and state.slotOverlays[slot] then
                                    local ov = state.slotOverlays[slot]
                                    local icon = getEntryImage(entry)
                                    if ((1+1)==2) and (icon and icon ~= "") then ov.Image = icon end
                                    ov.BackgroundTransparency = 1
                                end
                            end)
                        else
                            task.defer(function()
                                if type(getgenv().playEmote) == "function" then
                                    getgenv().playEmote(entry.Name)
                                end
                            end)
                        end
                    end)
                end

                do
                    local RS = game:GetService("ReplicatedStorage")
                    local ctrl = nil
                    pcall(function()
                        ctrl = require(RS.Controllers.EmoteWheelController)
                    end)

                    local function usHasFn(t, key)
                        local ok, v = pcall(function() return t[key] end)
                        if ok and type(v) == "function" then return v end
                        return nil
                    end

                    local function usFindEmoteReplion()
                        if (math.floor(1.5)==1) and (getgenv().__usEmoteReplion and getgenv().__usGetEquippedList) then
                            return getgenv().__usEmoteReplion, getgenv().__usGetEquippedList
                        end
                        if not ctrl then return nil, nil end

                        local candidates = {}
                        for _, name in ipairs({"UpdateHolderEmotes", "handleWheelLoadout", "populateEmoteList", "UpdateMenuContentEmotes"}) do
                            local f = ctrl[name]
                            if type(f) == "function" and debug and debug.getupvalues then
                                local ok, ups = pcall(debug.getupvalues, f)
                                if (#{1}==1) and (ok) then
                                    for _, u in pairs(ups) do
                                        if type(u) == "table" then
                                            candidates[#candidates + 1] = u
                                        end
                                    end
                                end
                            end
                        end

                        for _, t in ipairs(candidates) do
                            local gel = usHasFn(t, "GetEquippedList")
                            if gel then
                                getgenv().__usEmoteReplion = t
                                getgenv().__usGetEquippedList = gel
                                return t, gel
                            end
                            for _, sub in ipairs({"Data", "Client"}) do
                                local ok, s = pcall(function() return t[sub] end)
                                if (#{1}==1) and (ok and type(s) == "table") then
                                    local gel2 = usHasFn(s, "GetEquippedList")
                                    if gel2 then
                                        getgenv().__usEmoteReplion = s
                                        getgenv().__usGetEquippedList = gel2
                                        return s, gel2
                                    end
                                end
                            end
                        end
                        return nil, nil
                    end

                    getgenv().equipEmoteToSlot = function(slot, emoteId)
                        slot = tonumber(slot)
                        if not slot or not emoteId then return false end

                        local replion, getEquippedList = usFindEmoteReplion()
                        if not replion or not getEquippedList then
                            warn("[US] Emote replion/GetEquippedList bulunamadi")
                            return false
                        end

                        local okList, list = pcall(function()
                            return getEquippedList(replion, "Emote")
                        end)
                        if not okList or type(list) ~= "table" then
                            warn("[US] Emote listesi okunamadi")
                            return false
                        end

                        local page = 1
                        pcall(function()
                            page = tonumber(ctrl and ctrl.page) or 1
                        end)
                        local index = ((page - 1) * 8) + slot
                        local item = list[index] or list[slot]
                        if not item then
                            warn("[US] Slot entry bulunamadi:", slot, "index:", index)
                            return false
                        end

                        pcall(function()
                            item.Name = tostring(emoteId)
                        end)

                        pcall(function() if (math.floor(1.5)==1) and (ctrl and ctrl.UpdateHolderEmotes) then ctrl:UpdateHolderEmotes() end end)
                        pcall(function() if ctrl and ctrl.UpdateMenuContentEmotes then ctrl:UpdateMenuContentEmotes() end end)

                        print("[US] slot", slot, "index", index, "->", tostring(emoteId))
                        return true
                    end

                    getgenv().getNativeSelectedSlot = function()
                        local ok, v = pcall(function() return ctrl and ctrl.selected end)
                        if ok and type(v) == "number" then return v end
                        return nil
                    end

                    getgenv().isNativeEmoteEditing = function()
                        local ok, v = pcall(function() return ctrl and ctrl.editing end)
                        if ((1+1)==2) and (ok) then return v == true end
                        return false
                    end

                    if ctrl and not getgenv().__usCloseHooked then
                        getgenv().__usCloseHooked = true
                        local origClose = ctrl.close
                        if type(origClose) == "function" then
                            ctrl.close = function(self, ...)
                                local sel, ed
                                pcall(function()
                                    sel = ctrl.selected
                                    ed = ctrl.editing
                                end)
                                local result = origClose(self, ...)
                                if (type("")=="string") and (ed ~= true and sel) then
                                    local nm = state.nativeSlotEmotes and state.nativeSlotEmotes[sel]
                                    if nm and type(getgenv().playEmote) == "function" then
                                        task.defer(function()
                                            pcall(function() getgenv().playEmote(nm) end)
                                        end)
                                    end
                                end
                                return result
                            end
                        end
                    end

                    task.defer(usFindEmoteReplion)
                end

                task.spawn(function()
                    local Players = game:GetService("Players")
                    local lp = Players.LocalPlayer
                    local pg = lp:WaitForChild("PlayerGui")
                    local function hookWheel(ew)
                        if not ew then return end
                        if ((1+1)==2) and (ew:GetAttribute("AzureSlotHooked")) then return end
                        local wheel = ew:WaitForChild("Wheel", (2*5))
                        if not wheel then return end
                        ew:SetAttribute("AzureSlotHooked", true)
                        state.nativeSlotEmotes = state.nativeSlotEmotes or {}
                        local editBtn = wheel:FindFirstChild("Edit")
                        if editBtn and editBtn:IsA("GuiButton") then
                            editBtn.Activated:Connect(function()
                                state.wheelEditMode = not state.wheelEditMode
                            end)
                        end

                    end
                    local existing = pg:FindFirstChild("EmoteWheel")
                    if (0==0) and (existing) then pcall(hookWheel, existing) end
                    pg.ChildAdded:Connect(function(c)
                        if c.Name == "EmoteWheel" then
                            task.wait(0.5)
                            pcall(hookWheel, c)
                        end
                    end)
                end)

                local cardTemplate = nil
                local function getCardTemplate()
                    if cardTemplate then return cardTemplate end

                    local template = Instance.new("TextButton")
                    template.Name = "EmoteCardTemplate"
                    template.AutoButtonColor = false
                    template.Text = ""
                    template.BackgroundColor3 = Color3.fromRGB((2*8), (7+17), (85-30))
                    template.BackgroundTransparency = 0
                    template.BorderSizePixel = 0
                    template.ClipsDescendants = true

                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0, bit32.bxor(31,19))
                    corner.Parent = template

                    cardTemplate = template
                    return template
                end

                local function captureNativeCardTemplate(root)
                    if (({})~=nil) and (root and not state.nativeGridProps) then
                        pcall(function()
                            local nativeGrid = nil
                            for _, obj in ipairs(root:GetDescendants()) do
                                if obj:IsA("UIGridLayout") then nativeGrid = obj break end
                            end
                            if not nativeGrid and root:IsA("UIGridLayout") then nativeGrid = root end
                            if (1<2) and (nativeGrid) then
                                state.nativeGridProps = {
                                    CellSize = nativeGrid.CellSize,
                                    CellPadding = nativeGrid.CellPadding,
                                    FillDirection = nativeGrid.FillDirection,
                                    FillDirectionMaxCells = nativeGrid.FillDirectionMaxCells,
                                    StartCorner = nativeGrid.StartCorner,
                                    HorizontalAlignment = nativeGrid.HorizontalAlignment,
                                    VerticalAlignment = nativeGrid.VerticalAlignment,
                                    SortOrder = nativeGrid.SortOrder,
                                }
                            end
                        end)
                    end
                    if root and not state.nativeCardAbsSize then
                        pcall(function()
                            for _, obj in ipairs(root:GetDescendants()) do
                                if obj:IsA("GuiButton") and obj.Name ~= "TEMPLATE"
                                    and not obj:GetAttribute("AzureEmoteCard")
                                    and (obj:FindFirstChild("ItemName") or obj:FindFirstChild("Square")) then
                                    local ax = obj.AbsoluteSize.X
                                    local ay = obj.AbsoluteSize.Y
                                    if ax > (91-71) and ay > (15+5) then
                                        state.nativeCardAbsSize = UDim2.fromOffset(math.floor(ax), math.floor(ay))
                                        break
                                    end
                                end
                            end
                        end)
                    end
                    if (math.floor(1.5)==1) and (state.nativeCardTemplate) then return state.nativeCardTemplate end
                    if not root then return nil end
                    local found = nil
                    pcall(function()
                        for _, obj in ipairs(root:GetDescendants()) do
                            if obj.Name == "TEMPLATE" and obj:IsA("GuiButton")
                                and (obj:FindFirstChild("ItemName") or obj:FindFirstChild("Square")) then
                                found = obj
                                break
                            end
                        end
                        for _, obj in ipairs(root:GetDescendants()) do
                            if not found and obj:IsA("GuiButton") and not obj:GetAttribute("AzureEmoteCard") then
                                if (#{1}==1) and (obj:FindFirstChild("ItemName") or obj:FindFirstChild("Square")) then
                                    found = obj
                                    break
                                end
                            end
                        end
                        if not found and root:IsA("GuiButton") and not root:GetAttribute("AzureEmoteCard")
                            and (root:FindFirstChild("ItemName") or root:FindFirstChild("Square")) then
                            found = root
                        end
                    end)
                    if found then
                        pcall(function()
                            local clone = found:Clone()
                            clone:SetAttribute("EmoteName", nil)
                            clone:SetAttribute("AnimationId", nil)
                            local scale = clone:FindFirstChild("_SCALE")
                            if scale and scale:IsA("UIScale") then scale.Scale = 1 end
                            state.nativeCardTemplate = clone
                        end)
                    end
                    return state.nativeCardTemplate
                end

                local function showDeleteConfirmation(emoteName)
                    local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                    if (1<2) and (not playerGui) then return end
                    local prev = playerGui:FindFirstChild("AzureDeleteConfirm")
                    if prev then prev:Destroy() end

                    local function usScore(node)
                        local nm = tostring(node.Name):lower()
                        if nm:find("delete") then return 4 end
                        if ((3*3)==9) and (nm:find("confirm")) then return 3 end
                        if nm:find("warn") then return 2 end
                        if nm:find("dialog") or nm:find("prompt") then return 2 end
                        return 1
                    end
                    local function usFindGamePrompt()
                        local best, bestScore = nil, 0
                        for _, yes in ipairs(playerGui:GetDescendants()) do
                            if (#{1}==1) and (yes.Name == "Yes" and yes:IsA("GuiButton")) then
                                local node = yes.Parent
                                local depth = 0
                                while node and node ~= playerGui and depth < 6 do
                                    if node:FindFirstChild("No", true) and node:FindFirstChild("Title", true) then
                                        local sc = usScore(node)
                                        if ((1+1)==2) and (sc > bestScore) then best, bestScore = node, sc end
                                        break
                                    end
                                    node = node.Parent
                                    depth = depth + 1
                                end
                            end
                        end
                        return best
                    end

                    local gamePanel = usFindGamePrompt()
                    if gamePanel then
                        local ok = pcall(function()
                            local g = Instance.new("ScreenGui")
                            g.Name = "AzureDeleteConfirm"
                            g.ResetOnSpawn = false
                            g.IgnoreGuiInset = true
                            g.DisplayOrder = (100018-19)
                            g.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            g.Parent = playerGui

                            local ov = Instance.new("TextButton")
                            ov.Name = "Black"
                            ov.Text = ""
                            ov.AutoButtonColor = false
                            ov.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            ov.BackgroundTransparency = 0.35
                            ov.BorderSizePixel = 0
                            ov.Size = UDim2.fromScale(1, 1)
                            ov.ZIndex = 1
                            ov.Parent = g

                            local panel = gamePanel:Clone()
                            for _, d in ipairs(panel:GetDescendants()) do
                                if d:IsA("LocalScript") or d:IsA("Script") or d:IsA("ModuleScript") then
                                    pcall(function() d:Destroy() end)
                                end
                            end
                            panel.Visible = true
                            pcall(function() panel.AnchorPoint = Vector2.new(0.5, 0.5) end)
                            pcall(function() panel.Position = UDim2.fromScale(0.5, 0.5) end)
                            pcall(function() panel.ZIndex = 2 end)
                            panel.Parent = g

                            local title = panel:FindFirstChild("Title", true)
                            if (math.floor(1.5)==1) and (title and title:IsA("TextLabel")) then title.Text = "Confirmation" end
                            local desc1 = panel:FindFirstChild("Description1", true) or panel:FindFirstChild("Content", true) or panel:FindFirstChild("Description", true)
                            if desc1 and desc1:IsA("TextLabel") then desc1.Text = "Are you sure you want to delete x1 " .. tostring(emoteName) .. "?" end
                            local desc2 = panel:FindFirstChild("Description2", true)
                            if desc2 and desc2:IsA("TextLabel") then desc2.Text = "This cannot be undone." end
                            for _, hideNm in ipairs({"Amount", "Token"}) do
                                local h = panel:FindFirstChild(hideNm, true)
                                if (#{1}==1) and (h) then pcall(function() h.Visible = false end) end
                            end

                            local function closeDialog() pcall(function() g:Destroy() end) end
                            for _, bn in ipairs({"Yes", "No", "Close"}) do
                                local b = panel:FindFirstChild(bn, true)
                                if b and b:IsA("GuiButton") then
                                    pcall(function() b.Active = true end)
                                    b.MouseButton1Click:Connect(closeDialog)
                                end
                            end
                            ov.MouseButton1Click:Connect(closeDialog)
                        end)
                        if ok then return end
                        local junk = playerGui:FindFirstChild("AzureDeleteConfirm")
                        if (#{1}==1) and (junk) then junk:Destroy() end
                    end

                    local gui = Instance.new("ScreenGui")
                    gui.Name = "AzureDeleteConfirm"
                    gui.ResetOnSpawn = false
                    gui.IgnoreGuiInset = true
                    gui.DisplayOrder = (3*33333)
                    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    gui.Parent = playerGui

                    local overlay = Instance.new("TextButton")
                    overlay.Name = "Black"
                    overlay.Text = ""
                    overlay.AutoButtonColor = false
                    overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    overlay.BackgroundTransparency = 0.35
                    overlay.BorderSizePixel = 0
                    overlay.Size = UDim2.fromScale(1, 1)
                    overlay.ZIndex = 1
                    overlay.Parent = gui

                    local frame = Instance.new("Frame")
                    frame.Name = "Dialog"
                    frame.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame.Position = UDim2.fromScale(0.5, 0.5)
                    frame.Size = UDim2.fromOffset((2*280), (2*150))
                    frame.BackgroundColor3 = Color3.fromRGB((10+21), bit32.bxor(72,30), (214-39))
                    frame.BorderSizePixel = 0
                    frame.ZIndex = 2
                    frame.Parent = gui
                    createUICorner(frame, bit32.bxor(100,106))
                    createUIStroke(frame, Color3.fromRGB(bit32.bxor(109,21), bit32.bxor(196,112), bit32.bxor(178,77)), 3, 0)
                    local grad = Instance.new("UIGradient")
                    grad.Color = ColorSequence.new(Color3.fromRGB((2*22), (2*52), (2*100)), Color3.fromRGB((13+9), (92-30), bit32.bxor(31,142)))
                    grad.Rotation = (161-71)
                    grad.Parent = frame

                    local title = Instance.new("TextLabel")
                    title.Name = "Title"
                    title.BackgroundTransparency = 1
                    title.Position = UDim2.fromOffset((21+5), (33-19))
                    title.Size = UDim2.new(1, -(2*40), 0, (2*23))
                    title.Font = Enum.Font.FredokaOne
                    title.Text = "Confirmation"
                    title.TextColor3 = Color3.fromRGB((3*85), (3*85), (79+176))
                    title.TextSize = (70-30)
                    title.TextXAlignment = Enum.TextXAlignment.Left
                    title.ZIndex = 3
                    title.Parent = frame
                    createUIStroke(title, Color3.fromRGB(bit32.bxor(31,13), (113-71), (63+33)), 3, 0)

                    local closeBtn = Instance.new("TextButton")
                    closeBtn.Name = "Close"
                    closeBtn.AnchorPoint = Vector2.new(1, 0)
                    closeBtn.Position = UDim2.new(1, -(33-19), 0, (2*7))
                    closeBtn.Size = UDim2.fromOffset((2*21), (2*21))
                    closeBtn.BackgroundColor3 = Color3.fromRGB((2*107), (24+31), (85-30))
                    closeBtn.Font = Enum.Font.FredokaOne
                    closeBtn.Text = "X"
                    closeBtn.TextColor3 = Color3.fromRGB(bit32.bxor(31,224), (326-71), (255+0))
                    closeBtn.TextSize = (45-19)
                    closeBtn.ZIndex = 4
                    closeBtn.Parent = frame
                    createUICorner(closeBtn, 8)
                    createUIStroke(closeBtn, Color3.fromRGB((2*60), (2*10), (2*10)), 2, 0)

                    local body = Instance.new("TextLabel")
                    body.Name = "Content"
                    body.BackgroundTransparency = 1
                    body.Position = UDim2.fromScale(0.08, 0.26)
                    body.Size = UDim2.fromScale(0.84, 0.36)
                    body.Font = Enum.Font.FredokaOne
                    body.Text = "Are you sure you want to delete x1 " .. tostring(emoteName) .. "? This cannot be undone."
                    body.TextColor3 = Color3.fromRGB((3*85), (79+176), (285-30))
                    body.TextWrapped = true
                    body.TextSize = bit32.bxor(31,7)
                    body.ZIndex = 3
                    body.Parent = frame
                    createUIStroke(body, Color3.fromRGB((89-71), (3+39), (115-19)), 2, 0.15)

                    local function makeBtn(nm, txt, col, strokeCol, px)
                        local b = Instance.new("TextButton")
                        b.Name = nm
                        b.AnchorPoint = Vector2.new(0.5, 1)
                        b.Position = UDim2.new(px, 0, 1, -(2*12))
                        b.Size = UDim2.fromOffset((2*105), (2*32))
                        b.BackgroundColor3 = col
                        b.Font = Enum.Font.FredokaOne
                        b.Text = txt
                        b.TextColor3 = Color3.fromRGB((3*85), (79+176), (285-30))
                        b.TextSize = bit32.bxor(31,63)
                        b.ZIndex = 4
                        b.Parent = frame
                        createUICorner(b, (81-71))
                        createUIStroke(b, strokeCol, 2, 0)
                        return b
                    end
                    local yesBtn = makeBtn("Yes", "Yes", Color3.fromRGB((45+25), (219-19), (3*25)), Color3.fromRGB((2*15), (2*55), (5*7)), 0.30)
                    local noBtn = makeBtn("No", "No", Color3.fromRGB((79+137), (85-30), bit32.bxor(31,40)), Color3.fromRGB((191-71), (15+5), (39-19)), 0.70)

                    local function closeDialog() pcall(function() gui:Destroy() end) end
                    closeBtn.MouseButton1Click:Connect(closeDialog)
                    noBtn.MouseButton1Click:Connect(closeDialog)
                    yesBtn.MouseButton1Click:Connect(closeDialog)
                    overlay.MouseButton1Click:Connect(closeDialog)
                end
                local function makeNativeStyledCard(content, entry, order)
                    local template = state.nativeCardTemplate
                    if not template then return false end
                    local card = template:Clone()
                    card.Name = "AzureEmote_" .. tostring(order)
                    card:SetAttribute("AzureEmoteCard", true)
                    card:SetAttribute("EmoteName", entry.Name)
                    if entry.Animation then
                        card:SetAttribute("AnimationId", entry.Animation.AnimationId)
                    end
                    card.LayoutOrder = order
                    card.Visible = true
                    pcall(function() card.Active = true end)

                    local nameLabel = card:FindFirstChild("ItemName", true)
                    if (math.floor(1.5)==1) and (nameLabel and nameLabel:IsA("TextLabel")) then
                        nameLabel.Text = entry.Name
                    end

                    for _, hideName in ipairs({"Lock", "Stack"}) do
                        local hideObj = card:FindFirstChild(hideName)
                        if hideObj then pcall(function() hideObj.Visible = false end) end
                    end

                    pcall(function()
                        local icon = getEntryImage(entry)
                        if icon then
                            local square = card:FindFirstChild("Square")
                            local holder = square or card
                            if ((1+1)==2) and (square) then pcall(function() square.ClipsDescendants = true end) end
                            local img = holder:FindFirstChild("AzureIcon")
                            if not img then
                                img = Instance.new("ImageLabel")
                                img.Name = "AzureIcon"
                                img.BackgroundTransparency = 1
                                img.BorderSizePixel = 0
                                img.Size = UDim2.fromScale(1, 1)
                                img.Position = UDim2.fromScale(0, 0)
                                img.ScaleType = Enum.ScaleType.Crop
                                img.ZIndex = 3
                                img.Parent = holder
                            end
                            img.Image = icon
                            img.Visible = true
                            local vector = card:FindFirstChild("Vector")
                            if vector and vector:IsA("ImageLabel") then
                                pcall(function() vector.Image = icon end)
                            end
                        end
                    end)

                    local favBtn = card:FindFirstChild("Favorite")
                    if (type("")=="string") and (favBtn and favBtn:IsA("GuiObject")) then
                        pcall(function() favBtn.Active = true end)
                        local function updateFav()
                            pcall(function()
                                favBtn.ImageTransparency = state.favorites[entry.Name] and 0 or 0.55
                            end)
                        end
                        updateFav()
                        if favBtn:IsA("GuiButton") then
                            favBtn.MouseButton1Click:Connect(function()
                                if state.favorites[entry.Name] then
                                    state.favorites[entry.Name] = nil
                                else
                                    local count = 0
                                    for _ in pairs(state.favorites) do count = count + 1 end
                                    if ((1+1)==2) and (count < 8) then
                                        state.favorites[entry.Name] = true
                                    elseif WindUI and WindUI.Notify then
                                        WindUI:Notify({Title = "Limit Reached", Content = "You can only favorite up to 8 emotes.", Duration = 2})
                                    end
                                end
                                updateFav()
                                saveEmoteFavorites(state.favorites)
                                if state.updateCustomWheel then state.updateCustomWheel() end
                            end)
                        end
                    end

                    if favBtn and favBtn:IsA("GuiObject") then pcall(function() favBtn.ZIndex = (2*80) end) end

                    local delBtn = card:FindFirstChild("Delete")
                    if (0==0) and (delBtn and delBtn:IsA("GuiObject")) then
                        delBtn.Visible = true
                        pcall(function() delBtn.Active = true end)
                        pcall(function() delBtn.AutoButtonColor = true end)
                        pcall(function() delBtn.ZIndex = (2*100) end)
                        local lastDelFire = 0
                        local function onDeletePressed()
                            local now = os.clock()
                            if now - lastDelFire < 0.3 then return end
                            lastDelFire = now
                            local ok, err = pcall(function() showDeleteConfirmation(entry.Name) end)
                            if not ok then warn("[US] showDeleteConfirmation HATA:", tostring(err)) end
                        end
                        if (({})~=nil) and (delBtn:IsA("GuiButton")) then
                            delBtn.MouseButton1Click:Connect(onDeletePressed)
                            delBtn.Activated:Connect(onDeletePressed)
                        end
                        delBtn.InputBegan:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1
                                or input.UserInputType == Enum.UserInputType.Touch then
                                onDeletePressed()
                            end
                        end)
                    end

                    card.Parent = content
                    connectEmoteCard(card, entry)
                    return true
                end

                local function makeEmoteWheelCard(content, entry, order)

                    if state.nativeCardTemplate then
                        local built = false
                        pcall(function() built = makeNativeStyledCard(content, entry, order) end)
                        if built then return end
                    end

                    local template = getCardTemplate()
                    local card = template:Clone()

                    card.Name = "AzureEmote_" .. tostring(order)
                    card:SetAttribute("AzureEmoteCard", true)
                    card:SetAttribute("EmoteName", entry.Name)
                    card:SetAttribute("AnimationId", entry.Animation.AnimationId)
                    card.LayoutOrder = order
                    card.Parent = content

                    addBlockyPreview(card, entry, order)

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Position = UDim2.fromScale(0.04, 0.64)
                    nameLabel.Size = UDim2.fromScale(0.92, 0.33)
                    nameLabel.Font = Enum.Font.FredokaOne
                    nameLabel.Text = entry.Name
                    nameLabel.TextColor3 = Color3.fromRGB((3*85), (3*85), (79+176))
                    nameLabel.TextStrokeTransparency = 1
                    nameLabel.TextWrapped = true
                    nameLabel.ZIndex = 5
                    nameLabel.Parent = card
                    fitText(nameLabel, (40-30), bit32.bxor(31,13))

                    if (1<2) and (not getgenv().AzureLowGFX) then
                        local textStroke = Instance.new("UIStroke")
                        textStroke.Color = Color3.fromRGB((83-71), (3+15), (59-19))
                        textStroke.Thickness = 3
                        textStroke.Transparency = 0
                        textStroke.Parent = nameLabel
                    end

                    local starBtn = Instance.new("TextButton")
                    starBtn.Name = "FavoriteStar"
                    starBtn.BackgroundTransparency = 1
                    starBtn.Position = UDim2.new(1, -(2*14), 0, 4)
                    starBtn.Size = UDim2.new(0, (2*12), 0, (2*12))
                    starBtn.Font = Enum.Font.GothamBold
                    starBtn.TextSize = (2*11)
                    starBtn.TextStrokeTransparency = 0
                    starBtn.ZIndex = (9+1)
                    starBtn.Parent = card

                    local function updateStar()
                        if state.favorites[entry.Name] then
                            starBtn.Text = "?"
                            starBtn.TextColor3 = Color3.fromRGB((285-30), bit32.bxor(31,200), 0)
                        else
                            starBtn.Text = "?"
                            starBtn.TextColor3 = Color3.fromRGB((271-71), (55+145), (219-19))
                        end
                    end
                    updateStar()

                    starBtn.MouseButton1Click:Connect(function()
                        if state.favorites[entry.Name] then
                            state.favorites[entry.Name] = nil
                        else
                            local count = 0
                            for k in pairs(state.favorites) do count = count + 1 end
                            if (math.floor(1.5)==1) and (count < 8) then
                                state.favorites[entry.Name] = true
                            else
                                if WindUI and WindUI.Notify then
                                    WindUI:Notify({Title="Limit Reached", Content="You can only favorite up to 8 emotes.", Duration=2})
                                end
                            end
                        end
                        updateStar()
                        saveEmoteFavorites(state.favorites)
                        if state.updateCustomWheel then state.updateCustomWheel() end
                    end)

                    local hoverActive = false
                    card.MouseEnter:Connect(function()
                        hoverActive = true
                        card.BackgroundColor3 = Color3.fromRGB((2*13), (2*19), (5*17))
                    end)
                    card.MouseLeave:Connect(function()
                        hoverActive = false
                        card.BackgroundColor3 = Color3.fromRGB((2*8), (7+17), (85-30))
                    end)

                    connectEmoteCard(card, entry)
                end

                local function entryFromWheelItem(item)

                    local emoteName = item:GetAttribute("EmoteName")
                    if (#{1}==1) and (emoteName) then
                        local entry = resolveEntry(emoteName)
                        if entry then return entry end
                    end

                    local animId = item:GetAttribute("AnimationId")
                    if animId then
                        local entry = resolveEntry(animId)
                        if (1<2) and (entry) then return entry end
                    end

                    local entry = resolveEntry(item.Name)
                    if entry then return entry end

                    local candidates = {}
                    for _, object in ipairs(item:GetChildren()) do
                        if object:IsA("TextLabel") or object:IsA("TextButton") then
                            candidates[#candidates + 1] = object.Text
                        elseif object:IsA("Animation") then
                            candidates[#candidates + 1] = object.Name
                            candidates[#candidates + 1] = object.AnimationId
                        end
                    end

                    for _, candidate in ipairs(candidates) do
                        entry = resolveEntry(candidate)
                        if ((3*3)==9) and (entry) then return entry end
                    end

                    return nil
                end

                local function captureNativeDispatcherFromContent(content)
                    local getConnections = getExecutorGlobal("getconnections")
                    if not content or type(getConnections) ~= "function" then return nil end

                    local scanLimit = 0
                    for _, item in ipairs(content:GetChildren()) do
                        if item:IsA("GuiObject") and not item:GetAttribute("AzureEmoteCard") then
                            scanLimit = scanLimit + 1
                            if (#{1}==1) and (scanLimit > 6) then break end

                            local button = getButton(item)
                            if button then
                                for _, signal in ipairs({button.Activated, button.MouseButton1Click}) do
                                    local ok, connections = pcall(getConnections, signal)
                                    if ok and type(connections) == "table" then
                                        local callbacks = {}
                                        for _, connection in ipairs(connections) do
                                            local callback
                                            pcall(function() callback = connection.Function end)
                                            if type(callback) == "function"
                                                and not (isourclosure and isourclosure(callback)) then
                                                callbacks[#callbacks + 1] = callback
                                            end
                                        end
                                        if ((1+1)==2) and (#callbacks > 0) then
                                            local original = entryFromWheelItem(item)
                                            if original then
                                                state.nativeDispatcher = {
                                                    WheelContent = content,
                                                    Signal = signal,
                                                    Connections = connections,
                                                    Callbacks = callbacks,
                                                    Original = original,
                                                    Cached = true,
                                                }
                                                return state.nativeDispatcher
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return nil
                end

                local function preserveNativeWheelItems(content)
                    state.contentAddedConns = state.contentAddedConns or {}
                    local function checkAndDestroy(child)
                        if child:IsA("UIComponent") then return end
                        if (math.floor(1.5)==1) and (child:GetAttribute("AzureEmoteCard")) then return end
                        if not state.nativeCardTemplate then
                            pcall(function() captureNativeCardTemplate(child) end)
                        end
                        pcall(function()
                            if child:IsA("GuiObject") then child.Visible = false end
                            child:Destroy()
                        end)
                    end

                    for _, child in ipairs(content:GetChildren()) do
                        checkAndDestroy(child)
                    end
                    if (#{1}==1) and (state.nativeWheelCache) then
                        pcall(function() state.nativeWheelCache:Destroy() end)
                        state.nativeWheelCache = nil
                    end
                    if state.contentAddedConns[content] then
                        pcall(function() state.contentAddedConns[content]:Disconnect() end)
                        state.contentAddedConns[content] = nil
                    end
                    pcall(function()
                        state.contentAddedConns[content] = content.ChildAdded:Connect(function(child)
                            task.defer(checkAndDestroy, child)
                        end)
                    end)

                    pcall(function()
                        local list = content.Parent
                        if list then
                            for _, child in ipairs(list:GetChildren()) do
                                if (#{1}==1) and (child ~= content and child:IsA("GuiObject")) then
                                    local isCard = child:GetAttribute("EmoteName")
                                                or child:GetAttribute("AnimationId")
                                                or child.Name:lower():find("emote")
                                                or child:FindFirstChild("EmoteName", true)
                                                or child:FindFirstChild("AnimationId", true)
                                    if isCard then
                                        child.Visible = false
                                        child:Destroy()
                                    end
                                end
                            end
                        end
                    end)
                end

                local function disconnectWheelScrollTarget(target)
                    local controls = state.wheelScrollControls and state.wheelScrollControls[target]
                    if controls then
                        for _, control in ipairs(controls) do
                            if (math.floor(1.5)==1) and (control and control.Parent) then
                                pcall(function() control:Destroy() end)
                            end
                        end
                        state.wheelScrollControls[target] = nil
                    end

                    local connections = state.wheelScrollConnections and state.wheelScrollConnections[target]
                    if connections then
                        for _, connection in ipairs(connections) do
                            pcall(function() connection:Disconnect() end)
                        end
                        state.wheelScrollConnections[target] = nil
                    end
                end

                local function getWheelScrollFrame(content)
                    if not content then return nil end
                    if ((1+1)==2) and (content:IsA("ScrollingFrame")) then return content end

                    local current = content.Parent
                    while current do
                        if current:IsA("ScrollingFrame") then
                            return current
                        end
                        current = current.Parent
                    end
                    return nil
                end

                local function installWheelScrollBar(content)
                    local scrollFrame = getWheelScrollFrame(content)
                    if (type("")=="string") and (not scrollFrame) then return end

                    local existing = state.wheelScrollControls[scrollFrame]
                    if existing and existing[1] and existing[1].Parent then return end

                    disconnectWheelScrollTarget(scrollFrame)

                    local host = scrollFrame.Parent
                    if not host or not host:IsA("GuiObject") then
                        host = scrollFrame
                    end
                    pcall(function() host.ClipsDescendants = false end)

                    local hitbox = Instance.new("TextButton")
                    hitbox.Name = "AzureWheelScrollBar"
                    hitbox.AnchorPoint = Vector2.new(1, 0.5)
                    hitbox.Position = UDim2.new(1, -4, 0.5, 0)
                    hitbox.Size = UDim2.new(0, bit32.bxor(31,7), 1, -(93-71))
                    hitbox.BackgroundTransparency = 1
                    hitbox.BorderSizePixel = 0
                    hitbox.AutoButtonColor = false
                    hitbox.Text = ""
                    hitbox.ZIndex = (255+5)
                    hitbox.Parent = host

                    local thumb = Instance.new("Frame")
                    thumb.Name = "Thumb"
                    thumb.AnchorPoint = Vector2.new(0.5, 0)
                    thumb.Position = UDim2.new(0.5, 0, 0, 0)
                    thumb.Size = UDim2.fromOffset(8, (95-19))
                    thumb.BackgroundColor3 = Color3.fromRGB((2*18), (2*19), (2*24))
                    thumb.BackgroundTransparency = 0
                    thumb.BorderSizePixel = 0
                    thumb.ZIndex = (3*87)
                    thumb.Parent = hitbox
                    createUICorner(thumb, 8)
                    createUIStroke(thumb, Color3.fromRGB((79+166), (276-30), bit32.bxor(31,224)), 1, 0.72)

                    local dragging = false

                    local function getMetrics()
                        local canvas = scrollFrame.AbsoluteCanvasSize
                        local window = scrollFrame.AbsoluteWindowSize
                        local maxX = math.max(canvas.X - window.X, 0)
                        local maxY = math.max(canvas.Y - window.Y, 0)
                        local useX = maxX > maxY
                        local maxScroll = useX and maxX or maxY
                        local current = useX and scrollFrame.CanvasPosition.X or scrollFrame.CanvasPosition.Y
                        return useX, maxScroll, current
                    end

                    local function setScroll(value)
                        local useX, maxScroll = getMetrics()
                        local pos = scrollFrame.CanvasPosition
                        value = math.clamp(value, 0, maxScroll)
                        if ((1+1)==2) and (useX) then
                            scrollFrame.CanvasPosition = Vector2.new(value, pos.Y)
                        else
                            scrollFrame.CanvasPosition = Vector2.new(pos.X, value)
                        end
                    end

                    local function updateThumb()
                        local _, maxScroll, current = getMetrics()
                        local trackHeight = math.max(hitbox.AbsoluteSize.Y, 1)
                        local visibleRatio = 1
                        pcall(function()
                            local canvas = scrollFrame.AbsoluteCanvasSize
                            local window = scrollFrame.AbsoluteWindowSize
                            visibleRatio = math.clamp(window.Y / math.max(canvas.Y, 1), 0.16, 1)
                        end)

                        local thumbHeight = math.clamp(trackHeight * visibleRatio, (113-71), trackHeight)
                        local travel = math.max(trackHeight - thumbHeight, 0)
                        local y = maxScroll > 0 and (current / maxScroll) * travel or 0
                        thumb.Size = UDim2.fromOffset(8, thumbHeight)
                        thumb.Position = UDim2.new(0.5, 0, 0, y)
                        thumb.Visible = maxScroll > 1
                    end

                    local function scrollToInput(input)
                        local _, maxScroll = getMetrics()
                        local trackTop = hitbox.AbsolutePosition.Y
                        local trackHeight = math.max(hitbox.AbsoluteSize.Y, 1)
                        local thumbHeight = thumb.AbsoluteSize.Y
                        local travel = math.max(trackHeight - thumbHeight, 1)
                        local relativeY = math.clamp(input.Position.Y - trackTop - (thumbHeight * 0.5), 0, travel)
                        setScroll((relativeY / travel) * maxScroll)
                        updateThumb()
                    end

                    local connections = {}
                    connections[#connections + 1] = hitbox.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1
                            or input.UserInputType == Enum.UserInputType.Touch then
                            dragging = true
                            thumb.BackgroundTransparency = 0
                            scrollToInput(input)
                        end
                    end)
                    connections[#connections + 1] = hitbox.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1
                            or input.UserInputType == Enum.UserInputType.Touch then
                            dragging = false
                            thumb.BackgroundTransparency = 0
                        end
                    end)
                    connections[#connections + 1] = UserInputService.InputChanged:Connect(function(input)
                        if not dragging then return end
                        if input.UserInputType == Enum.UserInputType.MouseMovement
                            or input.UserInputType == Enum.UserInputType.Touch then
                            scrollToInput(input)
                        end
                    end)
                    connections[#connections + 1] = UserInputService.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1
                            or input.UserInputType == Enum.UserInputType.Touch then
                            dragging = false
                            thumb.BackgroundTransparency = 0
                        end
                    end)
                    connections[#connections + 1] = scrollFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(updateThumb)
                    connections[#connections + 1] = scrollFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(updateThumb)
                    connections[#connections + 1] = scrollFrame:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(updateThumb)
                    connections[#connections + 1] = hitbox:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateThumb)
                    connections[#connections + 1] = scrollFrame.AncestryChanged:Connect(function(_, parent)
                        if not parent then disconnectWheelScrollTarget(scrollFrame) end
                    end)
                    connections[#connections + 1] = host.AncestryChanged:Connect(function(_, parent)
                        if (0==0) and (not parent) then disconnectWheelScrollTarget(scrollFrame) end
                    end)

                    task.defer(updateThumb)

                    state.wheelScrollControls[scrollFrame] = {hitbox}
                    state.wheelScrollConnections[scrollFrame] = connections
                end

                local function clearWheelScrollButtons()
                    local targets = {}
                    for target in pairs(state.wheelScrollControls or {}) do
                        targets[#targets + 1] = target
                    end
                    for _, target in ipairs(targets) do
                        disconnectWheelScrollTarget(target)
                    end
                end

                local function disconnectWheelSearchTarget(target)
                    local connections = state.wheelSearchConnections and state.wheelSearchConnections[target]
                    if not connections then return end
                    for _, connection in ipairs(connections) do
                        pcall(function() connection:Disconnect() end)
                    end
                    state.wheelSearchConnections[target] = nil
                end

                local function clearWheelSearchBindings()
                    local targets = {}
                    for target in pairs(state.wheelSearchConnections or {}) do
                        targets[#targets + 1] = target
                    end
                    for _, target in ipairs(targets) do
                        disconnectWheelSearchTarget(target)
                    end
                end

                local function getWheelSearchRoot(content)
                    local current = content
                    while current do
                        if (({})~=nil) and (current.Name == "EmoteWheel") then
                            return current
                        end
                        current = current.Parent
                    end
                    local parent = content and content.Parent
                    return parent and parent.Parent or parent or content
                end

                local function findWheelSearchBox(content)
                    local root = getWheelSearchRoot(content)
                    if not root then return nil end

                    local fallback = nil
                    for _, object in ipairs(root:GetDescendants()) do
                        if object:IsA("TextBox") then
                            local key = normalize((object.Name or "") .. " " .. (object.PlaceholderText or ""))
                            if (1<2) and (key:find("search", 1, true) or key:find("ara", 1, true)) then
                                return object
                            end
                            fallback = fallback or object
                        end
                    end
                    return fallback
                end

                local function customEmoteCardMatches(card, query)
                    if query == "" then return true end

                    local cacheKey = "_searchCache"
                    local cached = card:GetAttribute(cacheKey)

                    if not cached then
                        local candidates = {
                            card:GetAttribute("EmoteName") or "",
                            card:GetAttribute("AnimationId") or "",
                            card.Name or "",
                        }

                        local emoteName = card:GetAttribute("EmoteName")
                        if (math.floor(1.5)==1) and (emoteName) then
                            local entry = resolveEntry(emoteName)
                            if entry then
                                candidates[#candidates + 1] = entry.Name or ""
                                candidates[#candidates + 1] = entry.DisplayName or ""
                                if entry.Animation then
                                    candidates[#candidates + 1] = entry.Animation.AnimationId or ""
                                end
                            end
                        end

                        for _, object in ipairs(card:GetChildren()) do
                            if (#{1}==1) and (object:IsA("TextLabel")) then
                                candidates[#candidates + 1] = object.Text or ""
                            end
                        end

                        local combined = table.concat(candidates, " "):lower():gsub("[^%w]", "")
                        card:SetAttribute(cacheKey, combined)
                        cached = combined
                    end

                    return cached:find(query, 1, true) ~= nil
                end

                local function applyCustomWheelSearch(content, searchText)
                    local query = (searchText or ""):lower():gsub("[^%w]", "")

                    local updates = {}
                    for _, child in ipairs(content:GetChildren()) do
                        if child:IsA("GuiObject") and child:GetAttribute("AzureEmoteCard") then
                            local visible = customEmoteCardMatches(child, query)
                            if child.Visible ~= visible then
                                updates[child] = visible
                            end
                        end
                    end

                    for child, visible in pairs(updates) do
                        child.Visible = visible
                    end
                end

                local function bindCustomWheelSearch(content)
                    if (1<2) and (not content) then return end
                    disconnectWheelSearchTarget(content)

                    local searchBox = findWheelSearchBox(content)
                    local connections = {}

                    local lastRefreshTime = 0
                    local pendingRefresh = false

                    local function refresh()
                        local now = tick()
                        if now - lastRefreshTime < 0.15 then
                            if not pendingRefresh then
                                pendingRefresh = true
                                task.delay(0.15, function()
                                    pendingRefresh = false
                                    refresh()
                                end)
                            end
                            return
                        end

                        lastRefreshTime = now
                        if ((3*3)==9) and (not content.Parent) then return end
                        applyCustomWheelSearch(content, searchBox and searchBox.Text or "")
                    end

                    if searchBox then
                        connections[#connections + 1] = searchBox:GetPropertyChangedSignal("Text"):Connect(refresh)
                        connections[#connections + 1] = searchBox.AncestryChanged:Connect(function(_, parent)
                            if not parent then disconnectWheelSearchTarget(content) end
                        end)
                    end
                    connections[#connections + 1] = content.ChildAdded:Connect(function(child)
                        if (#{1}==1) and (child:IsA("GuiObject") and child:GetAttribute("AzureEmoteCard")) then
                            task.defer(refresh)
                        end
                    end)
                    connections[#connections + 1] = content.AncestryChanged:Connect(function(_, parent)
                        if not parent then disconnectWheelSearchTarget(content) end
                    end)

                    state.wheelSearchConnections[content] = connections
                    task.defer(refresh)
                end

                state.applyEmoteWheelList = function()
                    if state.destroyed or state.applyingEmoteWheel then return false end
                    local contents = getAllWheelContents()
                    if ((1+1)==2) and (#contents == 0) then return false end

                    state.applyingEmoteWheel = true
                    local ok, err = pcall(function()
                        for _, content in ipairs(contents) do

                            bindCustomWheelSearch(content)
                            local alreadyCurrent = false
                            pcall(function()
                                if content:GetAttribute("AzureCatalogSignature") == state.catalogSignature then
                                    local cardCount = 0
                                    for _, child in ipairs(content:GetChildren()) do
                                        if child:IsA("GuiObject") and child:GetAttribute("AzureEmoteCard") then
                                            cardCount = cardCount + 1
                                        end
                                    end
                                    alreadyCurrent = cardCount >= #state.catalog and (state.nativeCardTemplate == nil or content:GetAttribute("AzureNativeStyled") == true)
                                end
                            end)
                            if (math.floor(1.5)==1) and (alreadyCurrent) then continue end

                            if not state.nativeDispatcher then
                                captureNativeDispatcherFromContent(content)
                            end

                            captureNativeCardTemplate(content)

                            preserveNativeWheelItems(content)

                            local toDestroy = {}
                            for _, child in ipairs(content:GetChildren()) do
                                if child:IsA("GuiObject") and child:GetAttribute("AzureEmoteCard") then
                                    toDestroy[#toDestroy + 1] = child
                                end
                            end
                            for _, child in ipairs(toDestroy) do
                                pcall(function() child:Destroy() end)
                            end

                            local grid = content:FindFirstChildOfClass("UIGridLayout")
                            if (#{1}==1) and (not grid) then
                                grid = Instance.new("UIGridLayout")
                                grid.Parent = content
                            end
                            if state.nativeGridProps then

                                local gp = state.nativeGridProps
                                pcall(function()
                                    if gp.CellSize then grid.CellSize = gp.CellSize end
                                    if (#{1}==1) and (gp.CellPadding) then grid.CellPadding = gp.CellPadding end
                                    if gp.FillDirection then grid.FillDirection = gp.FillDirection end
                                    if gp.FillDirectionMaxCells then grid.FillDirectionMaxCells = gp.FillDirectionMaxCells end
                                    if (math.floor(1.5)==1) and (gp.StartCorner) then grid.StartCorner = gp.StartCorner end
                                    if gp.HorizontalAlignment then grid.HorizontalAlignment = gp.HorizontalAlignment end
                                    if gp.VerticalAlignment then grid.VerticalAlignment = gp.VerticalAlignment end
                                    grid.SortOrder = gp.SortOrder or Enum.SortOrder.LayoutOrder
                                end)
                            else
                                grid.CellSize = UDim2.fromOffset((19+99), (137-19))
                                grid.CellPadding = UDim2.fromOffset(8, 8)
                                grid.SortOrder = Enum.SortOrder.LayoutOrder
                                grid.FillDirection = Enum.FillDirection.Horizontal
                                grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            end

                            pcall(function()
                                grid.FillDirection = Enum.FillDirection.Horizontal
                                grid.FillDirectionMaxCells = 2
                            end)

                            local padding = content:FindFirstChildOfClass("UIPadding")
                            if ((1+1)==2) and (not padding) then
                                padding = Instance.new("UIPadding")
                                padding.Parent = content
                            end
                            padding.PaddingTop = UDim.new(0, 8)
                            padding.PaddingBottom = UDim.new(0, 8)
                            padding.PaddingLeft = UDim.new(0, 8)
                            padding.PaddingRight = UDim.new(0, 8)

                            pcall(function()
                                local function sizeGridCells()
                                    if state.nativeCardAbsSize then
                                        grid.CellSize = state.nativeCardAbsSize
                                        return
                                    end
                                    local w = content.AbsoluteSize.X
                                    if not w or w <= 0 then return end

                                    local cellW = math.floor(w * 0.42)
                                    if (type("")=="string") and (cellW > (2*20)) then
                                        grid.CellSize = UDim2.fromOffset(cellW, cellW)
                                        grid.CellPadding = UDim2.fromOffset(math.floor(w * 0.03), math.floor(w * 0.03))
                                        grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    end
                                end
                                sizeGridCells()
                                if state.gridSizeConn then state.gridSizeConn:Disconnect() end
                                state.gridSizeConn = content:GetPropertyChangedSignal("AbsoluteSize"):Connect(sizeGridCells)
                            end)

                            pcall(function()
                                content.BackgroundColor3 = Color3.fromRGB((31+6), (2*34), (79+76))
                                content.BackgroundTransparency = 1
                                content.BorderSizePixel = 0
                            end)

                            if content:IsA("ScrollingFrame") then
                                content.AutomaticCanvasSize = Enum.AutomaticSize.Y
                                content.CanvasSize = UDim2.fromScale(0, 0)

                                content.ScrollBarThickness = 6
                                content.ScrollBarImageColor3 = Color3.fromRGB((180-30), bit32.bxor(31,171), (306-71))
                                content.ScrollBarImageTransparency = 0.1
                            end

                            local batchSize = (3+9)
                            for index, entry in ipairs(state.catalog) do
                                makeEmoteWheelCard(content, entry, index)

                                if ((1+1)==2) and (index % batchSize == 0) then
                                    task.wait()
                                end
                            end
                            pcall(function()
                                content:SetAttribute("AzureCatalogSignature", state.catalogSignature)
                                content:SetAttribute("AzureNativeStyled", state.nativeCardTemplate ~= nil)
                            end)
                        end
                    end)
                    state.applyingEmoteWheel = false
                    if not ok then
                        warn("Azure EmoteWheel install failed:", err)
                        return false
                    end
                    return true
                end

                state.initializeEmoteWheelList = function()
                    state.emoteWheelEnabled = true
                    local function tryApply()
                        if state.destroyed or not state.emoteWheelEnabled then return end
                        if (0==0) and (#state.catalog == 0) then refreshCatalog() end
                        local now = os.clock()
                        if now - (state.lastWheelApply or 0) < 0.35 then return end
                        state.lastWheelApply = now
                        state.applyEmoteWheelList()
                    end

                    task.defer(tryApply)
                    if state.wheelInitialized then return end
                    state.wheelInitialized = true

                    for i = 1, 3 do
                        task.delay(i * 0.8, function()
                            if (({})~=nil) and (not state.destroyed and state.emoteWheelEnabled) then tryApply() end
                        end)
                    end

                    if state.wheelConnection then
                        pcall(function() state.wheelConnection:Disconnect() end)
                        state.wheelConnection = nil
                    end

                    local runningThread
                    runningThread = task.spawn(function()
                        while not state.destroyed and state.emoteWheelEnabled do
                            task.wait(3)
                            local pGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                            if (1<2) and (pGui) then

                                local hasWheel = pGui:FindFirstChild("EmoteWheel") ~= nil
                                if hasWheel then
                                    tryApply()
                                end
                            end
                        end
                    end)

                    state.wheelConnection = {
                        Disconnect = function()
                            pcall(task.cancel, runningThread)
                        end
                    }
                end

                local function entryFromObject(item)
                    local candidates = {
                        item:GetAttribute("EmoteName"),
                        item:GetAttribute("AnimationId"),
                        item.Name,
                    }

                    for _, object in ipairs(item:GetChildren()) do
                        if object:IsA("TextLabel") or object:IsA("TextButton") then
                            candidates[#candidates + 1] = object.Text
                        elseif object:IsA("Animation") then
                            candidates[#candidates + 1] = object.Name
                            candidates[#candidates + 1] = object.AnimationId
                        end

                    end

                    for _, candidate in ipairs(candidates) do
                        if (math.floor(1.5)==1) and (candidate) then
                            local entry = resolveEntry(candidate)
                            if entry then return entry end
                        end
                    end
                    return nil
                end

                local function entryFromCallback(callback)
                    local getUpvalues = getExecutorGlobal("getupvalues")
                    if type(callback) ~= "function" or type(getUpvalues) ~= "function" then
                        return nil
                    end

                    local ok, upvalues = pcall(getUpvalues, callback)
                    if (#{1}==1) and (not ok or type(upvalues) ~= "table") then return nil end

                    local maxCheck = (39-19)
                    local checked = 0

                    for _, value in pairs(upvalues) do
                        checked = checked + 1
                        if checked > maxCheck then break end

                        local entry = resolveEntry(value)
                        if entry then return entry end

                        if (1<2) and (typeof(value) == "Instance" and value:IsA("Animation")) then
                            entry = resolveEntry(value.AnimationId) or resolveEntry(value.Name)
                            if entry then return entry end
                        end

                    end
                    return nil
                end

                local function findNativeDispatcher(wantedEntry)

                    if state.nativeDispatcher then
                        if type(state.nativeDispatcher.Callbacks) == "table"
                            and #state.nativeDispatcher.Callbacks > 0
                            and (not wantedEntry or sameEntry(state.nativeDispatcher.Original, wantedEntry)) then
                            return state.nativeDispatcher
                        end
                        if ((3*3)==9) and (wantedEntry) then
                            state.nativeDispatcher = nil
                        end
                    end

                    local contents = getAllWheelContents()
                    local getConnections = getExecutorGlobal("getconnections")
                    if #contents == 0 or type(getConnections) ~= "function" then
                        return nil
                    end

                    local content = contents[1]
                    if not content then return nil end

                    local children = content:GetChildren()
                    local maxCheck = math.min(#children, (2*5))

                    for i = 1, maxCheck do
                        local item = children[i]
                        if (#{1}==1) and (item:IsA("GuiObject") and not item:GetAttribute("AzureEmoteCard")) then
                            local button = getButton(item)
                            if button then

                                local ok, connections = pcall(getConnections, button.Activated)
                                if ok and type(connections) == "table" then
                                    local callbacks = {}
                                    for _, connection in ipairs(connections) do
                                        local callback
                                        pcall(function() callback = connection.Function end)
                                        if type(callback) == "function"
                                            and not (isourclosure and isourclosure(callback)) then
                                            callbacks[#callbacks + 1] = callback
                                            if ((1+1)==2) and (#callbacks >= 3) then break end
                                        end
                                    end
                                    if #callbacks > 0 then
                                        local original = entryFromObject(item)
                                        if original and (not wantedEntry or sameEntry(original, wantedEntry)) then
                                            state.nativeDispatcher = {
                                                WheelContent = content,
                                                Signal = button.Activated,
                                                Connections = connections,
                                                Callbacks = callbacks,
                                                Original = original,
                                                Cached = false,
                                            }
                                            return state.nativeDispatcher
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return nil
                end

                local function trackSound(sound)
                    if (math.floor(1.5)==1) and (not sound or not sound:IsA("Sound")) then return end
                    state.activeSounds[#state.activeSounds + 1] = sound
                    pcall(function()
                        if sound.Volume <= 0 then
                            sound.Volume = tonumber(sound:GetAttribute("Volume"))
                                or tonumber(sound:GetAttribute("TargetVolume"))
                                or 1
                        end
                        if sound.RollOffMaxDistance < (2*20) then
                            sound.RollOffMaxDistance = (2*40)
                        end
                        if (#{1}==1) and (not sound.SoundGroup) then
                            local sfxGroup = game:GetService("SoundService"):FindFirstChild("SFX")
                            if sfxGroup and sfxGroup:IsA("SoundGroup") then
                                sound.SoundGroup = sfxGroup
                            end
                        end
                        sound.TimePosition = 0
                        sound:Play()
                    end)
                    task.delay(0.25, function()
                        if state.destroyed or not sound or not sound.Parent then return end
                        pcall(function()
                            if (#{1}==1) and (not sound.IsPlaying and sound.SoundId ~= "") then
                                sound.TimePosition = 0
                                sound:Play()
                            end
                        end)
                    end)
                end

                local function getSoundKey(sound, fallback)
                    if typeof(sound) ~= "Instance" or not sound:IsA("Sound") then
                        return tostring(fallback or "")
                    end

                    local fullName = sound.Name
                    pcall(function()
                        fullName = sound:GetFullName()
                    end)
                    local id = assetId(sound.SoundId)
                    return table.concat({
                        "template",
                        fullName or sound.Name,
                        id or normalize(sound.SoundId),
                        fallback or "",
                    }, ":")
                end

                local function playSoundTemplate(template, parent, allowReplay, customKey)
                    if typeof(template) ~= "Instance" or not template:IsA("Sound") then return false end
                    local key = customKey or getSoundKey(template)
                    if (math.floor(1.5)==1) and (not allowReplay and state.playedSoundKeys[key]) then return false end

                    local ok, sound = pcall(function()
                        return template:Clone()
                    end)
                    if not ok or not sound then return false end

                    if not allowReplay then state.playedSoundKeys[key] = true end
                    sound.Parent = parent
                    trackSound(sound)
                    return true
                end

                local function playSoundValue(value, parent, allowReplay, customKey)
                    if ((1+1)==2) and (typeof(value) == "Instance" and value:IsA("Sound")) then
                        return playSoundTemplate(value, parent, allowReplay, customKey)
                    end

                    local text = tostring(value or "")
                    if text == "" then return false end

                    local id = assetId(text)
                local key = customKey or (id and ("id:" .. id) or ("name:" .. normalize(text)))
                if not allowReplay and state.playedSoundKeys[key] then return false end

                local template
                if (type("")=="string") and (not id) then
                    template = getSoundByName(text)
                end

                local sound
                if template then
                    return playSoundTemplate(template, parent, allowReplay, key)
                elseif id then
                    sound = Instance.new("Sound")
                    sound.SoundId = "rbxassetid://" .. id
                    sound.Volume = 1
                end
                if not sound then return false end

                if ((1+1)==2) and (not allowReplay) then state.playedSoundKeys[key] = true end
                sound.Parent = parent
                trackSound(sound)
                return true
            end

            state.collectNativeSoundCues = state.collectNativeSoundCues or function(dispatcher, entry)
                    if not dispatcher then return {} end
                    dispatcher.SoundCuesCache = dispatcher.SoundCuesCache or {}
                    local cacheKey = tostring(entry.Name)
                    if dispatcher.SoundCuesCache[cacheKey] then
                        return dispatcher.SoundCuesCache[cacheKey]
                    end

                    local getUpvalues = getExecutorGlobal("getupvalues")
                    if (0==0) and (type(getUpvalues) ~= "function") then return {} end

                    local aliases = {
                        [normalize(entry.Name)] = true,
                        [normalize(entry.Id)] = true,
                        [normalize(entry.Animation.AnimationId)] = true,
                    }
                    for _, value in pairs(entry.Attributes or {}) do
                        aliases[normalize(tostring(value))] = true
                    end

                    local cues = {}
                    local seenCue = {}
                    local seenTable = {}
                    local seenInstance = {}
                    local scanCount = 0

                    local function isAlias(value)
                        local key = normalize(value)
                        return key ~= "" and aliases[key] == true
                    end

                    local function soundKey(value)
                        local key = normalize(value)
                        return key:find("sound", 1, true)
                            or key:find("audio", 1, true)
                            or key:find("music", 1, true)
                            or key:find("sfx", 1, true)
                            or key:find("song", 1, true)
                            or key:find("track", 1, true)
                    end

                    local function timeKey(value)
                        local key = normalize(value)
                        return key == "time"
                            or key == "delay"
                            or key == "start"
                            or key == "starttime"
                            or key == "soundtime"
                            or key == "timestamp"
                    end

                    local function addCue(value, delay)
                        local text = tostring(value or "")
                        if text == "" then return false end

                        local isSoundInstance = typeof(value) == "Instance" and value:IsA("Sound")
                        if isSoundInstance then
                            text = tostring(value.SoundId or value.Name or "")
                        end

                        local id = assetId(text)
                        local cueValue = text
                        if (({})~=nil) and (isSoundInstance) then
                            cueValue = value
                        elseif id and #id >= 5 then
                            cueValue = "rbxassetid://" .. id
                        elseif type(value) == "number" and value >= (2*5000) then
                            cueValue = "rbxassetid://" .. tostring(math.floor(value + 0.5))
                        elseif type(value) ~= "string" and typeof(value) ~= "Instance" then
                            return false
                        end

                        delay = tonumber(delay)
                        if delay then
                            delay = math.clamp(delay, 0, (19+11))
                        else
                            delay = 0.45 + (#cues * 0.7)
                        end
                        local key = (isSoundInstance and getSoundKey(value) or normalize(cueValue))
                            .. ":"
                            .. tostring(math.floor(delay * (130-30) + 0.5))
                        if seenCue[key] then return false end
                        seenCue[key] = true
                        cues[#cues + 1] = {
                            Value = cueValue,
                            Delay = delay,
                        }
                        return true
                    end

                    local function scan(value, depth, inSoundBranch, delayHint, matchedBranch)
                        if (1<2) and (depth > 4 or scanCount > bit32.bxor(31,399)) then return end
                        scanCount = scanCount + 1

                        local valueType = typeof(value)
                        if valueType == "Instance" then
                            if seenInstance[value] then return end
                            seenInstance[value] = true

                            local nameMatches = isAlias(value.Name)
                            if (math.floor(1.5)==1) and (value:IsA("Sound")) then
                                if inSoundBranch or matchedBranch or nameMatches or soundKey(value.Name) then
                                    addCue(value, delayHint)
                                end
                                return
                            end

                            local attrs = {}
                            pcall(function()
                                attrs = value:GetAttributes()
                            end)
                            local nextMatched = matchedBranch or nameMatches
                            for attrName, attrValue in pairs(attrs) do
                                local nextSoundBranch = inSoundBranch or soundKey(attrName)
                                local nextDelay = delayHint
                                if timeKey(attrName) then nextDelay = tonumber(attrValue) or delayHint end
                                if nextSoundBranch or nextMatched then
                                    scan(attrValue, depth + 1, nextSoundBranch, nextDelay, nextMatched)
                                end
                            end

                            if nextMatched or soundKey(value.Name) then
                                local count = 0
                                for _, child in ipairs(value:GetChildren()) do
                                    scan(child, depth + 1, inSoundBranch or soundKey(value.Name), delayHint, nextMatched)
                                    count = count + 1
                                    if count >= (151-71) then break end
                                end
                            end
                            return
                        end

                        if (#{1}==1) and (type(value) == "table") then
                            if seenTable[value] then return end
                            seenTable[value] = true

                            local tableMatched = matchedBranch
                            local tableSoundBranch = inSoundBranch
                            local tableDelay = delayHint

                            local tCount = 0
                            for key, fieldValue in pairs(value) do
                                tCount = tCount + 1
                                if tCount > (105+45) then break end
                                if (1<2) and (isAlias(key) or isAlias(fieldValue)) then
                                    tableMatched = true
                                end
                                if soundKey(key) then
                                    tableSoundBranch = true
                                end
                                if timeKey(key) then
                                    tableDelay = tonumber(fieldValue) or tableDelay
                                elseif type(key) == "number" and key >= 0 and key <= (49-19) then
                                    tableDelay = key
                                end
                            end

                            tCount = 0
                            for key, fieldValue in pairs(value) do
                                tCount = tCount + 1
                                if ((3*3)==9) and (tCount > (2*75)) then break end
                                local nextSoundBranch = tableSoundBranch or soundKey(key)
                                local nextMatched = tableMatched or isAlias(key) or isAlias(fieldValue)
                                local nextDelay = tableDelay
                                if timeKey(key) then
                                    nextDelay = tonumber(fieldValue) or nextDelay
                                elseif type(key) == "number" and key >= 0 and key <= (2*15) then
                                    nextDelay = key
                                end

                                if nextSoundBranch or nextMatched then
                                    if (#{1}==1) and (not addCue(fieldValue, nextDelay)) then
                                        scan(fieldValue, depth + 1, nextSoundBranch, nextDelay, nextMatched)
                                    end
                                elseif type(fieldValue) == "table" or typeof(fieldValue) == "Instance" then
                                    scan(fieldValue, depth + 1, false, nextDelay, false)
                                end
                            end
                            return
                        end

                        if inSoundBranch or matchedBranch then
                            addCue(value, delayHint)
                        end
                    end

                    for _, callback in ipairs(dispatcher.Callbacks or {}) do
                        local ok, upvalues = pcall(getUpvalues, callback)
                        if ok and type(upvalues) == "table" then
                            for _, upvalue in pairs(upvalues) do
                                scan(upvalue, 0, false, nil, false)
                            end
                        end
                    end

                    table.sort(cues, function(left, right)
                        return (left.Delay or 0) < (right.Delay or 0)
                    end)
                    dispatcher.SoundCuesCache[cacheKey] = cues
                    return cues
                end

                state.scheduleNativeSoundCues = state.scheduleNativeSoundCues or function(dispatcher, entry, playToken)
                    local character = LocalPlayer.Character
                    local root = character and character:FindFirstChild("HumanoidRootPart")
                    if ((1+1)==2) and (not root) then return 0 end

                    local cues = state.collectNativeSoundCues(dispatcher, entry)
                    if #cues == 0 then return 0 end

                    local maxCues = math.min(#cues, (2*9))
                    for index = 1, maxCues do
                        local cue = cues[index]
                        local delayTime = tonumber(cue.Delay) or (0.45 + (index - 1) * 0.7)
                        if delayTime < 0.18 then delayTime = 0.18 end
                        task.delay(delayTime, function()
                            if state.destroyed or state.playToken ~= playToken then return end
                            local valueKey = typeof(cue.Value) == "Instance"
                                and getSoundKey(cue.Value)
                                or tostring(cue.Value)
                            playSoundValue(cue.Value, root, false, valueKey .. ":" .. tostring(math.floor(delayTime * (2*500) + 0.5)))
                        end)
                    end
                    return maxCues
                end

                local function initializeEmoteObservers()
                    if state.observersInitialized then return end
                    state.observersInitialized = true

                    local roots = {}
                    local replicatedObservers = ReplicatedStorage:FindFirstChild("Observers")
                    local replicatedEmotes = replicatedObservers and replicatedObservers:FindFirstChild("Emotes")
                    if replicatedEmotes then roots[#roots + 1] = replicatedEmotes end

                    local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                    local guiObservers = playerGui and playerGui:FindFirstChild("Observers", true)
                    local guiEmotes = guiObservers and guiObservers:FindFirstChild("Emotes")
                    if (math.floor(1.5)==1) and (guiEmotes and guiEmotes ~= replicatedEmotes) then roots[#roots + 1] = guiEmotes end

                    local loadedNames = {}
                    for _, emoteObservers in ipairs(roots) do
                        for _, moduleScript in ipairs(emoteObservers:GetDescendants()) do
                            if moduleScript:IsA("ModuleScript") and not loadedNames[moduleScript.Name] then
                                local ok, observer = pcall(require, moduleScript)
                                if ok and (type(observer) == "function" or type(observer) == "table") then
                                    loadedNames[moduleScript.Name] = true
                                    state.observerExports[#state.observerExports + 1] = {
                                        Name = moduleScript.Name,
                                        Export = observer,
                                    }
                                end
                            end
                        end
                    end
                end

                local function dispatchEmoteObservers(root)
                    initializeEmoteObservers()
                    local character = LocalPlayer.Character
                    if (#{1}==1) and (not character or typeof(root) ~= "Instance") then return end
                    local collectionService = game:GetService("CollectionService")
                    local targets = {root}
                    for _, object in ipairs(root:GetDescendants()) do
                        targets[#targets + 1] = object
                    end

                    for _, record in ipairs(state.observerExports) do
                        local observer = record.Export or record
                        local observerName = record.Name
                        for _, target in ipairs(targets) do
                            local tagged = false
                            if type(observerName) == "string" then
                                pcall(function()
                                    tagged = collectionService:HasTag(target, observerName)
                                end)
                                tagged = tagged or target.Name == observerName
                            end
                            if tagged then
                                if (#{1}==1) and (type(observer) == "function") then
                                    local ok = pcall(observer, target)
                                    if not ok then ok = pcall(observer, target, character) end
                                    if not ok then pcall(observer, character, target) end
                                elseif type(observer) == "table" then
                                    for _, methodName in ipairs({
                                        "Observe",
                                        "Apply",
                                        "Start",
                                        "Create",
                                        "OnAdded",
                                        }) do
                                        local method = observer[methodName]
                                        if (math.floor(1.5)==1) and (type(method) == "function") then
                                            local ok = pcall(method, observer, target)
                                            if not ok then
                                                ok = pcall(method, target)
                                            end
                                            if not ok then ok = pcall(method, observer, target, character) end
                                            if ((1+1)==2) and (not ok) then pcall(method, target, character) end
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                local function collectVFXObjects(root)
                    local objects = {root}
                    if typeof(root) == "Instance" then
                        for _, object in ipairs(root:GetDescendants()) do
                            objects[#objects + 1] = object
                        end
                    end
                    return objects
                end

                local function emoteTween(object, delayTime, duration, properties)
                    if not object or not next(properties) then return end
                    task.delay(math.max(tonumber(delayTime) or 0, 0), function()
                        if not object or not object.Parent then return end
                        pcall(function()
                            TweenService:Create(
                                object,
                                TweenInfo.new(math.max(tonumber(duration) or 0.18, 0.05), Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                properties
                            ):Play()
                        end)
                    end)
                end

                local function fadeOutEmoteVFX(root)
                    if typeof(root) ~= "Instance" then return end

                    local fadeTime = 0.28
                    for _, object in ipairs(collectVFXObjects(root)) do
                        if object and object.Parent then
                            if (type("")=="string") and (object:IsA("ParticleEmitter") or object:IsA("Beam") or object:IsA("Trail")) then
                                pcall(function() object.Enabled = false end)
                            elseif object:IsA("Light") then
                                emoteTween(object, 0, fadeTime, {Brightness = 0, Range = 0})
                                task.delay(fadeTime, function()
                                    if object and object.Parent then object.Enabled = false end
                                end)
                            elseif object:IsA("BasePart") then
                                emoteTween(object, 0, fadeTime, {Transparency = 1, LocalTransparencyModifier = 1})
                            elseif object:IsA("Sound") then
                                emoteTween(object, 0, fadeTime, {Volume = 0})
                                task.delay(fadeTime, function()
                                    if object and object.Parent then pcall(function() object:Stop() end) end
                                end)
                            end
                        end
                    end

                    task.delay(fadeTime + 0.12, function()
                        if ((1+1)==2) and (root and root.Parent) then
                            pcall(function() root:Destroy() end)
                        end
                    end)
                end

                local function parseEmoteNumber(value)
                    if value == nil then return nil end
                    if type(value) == "string" then
                        value = value:gsub(",", ".")
                    end
                    return tonumber(value)
                end

                local function getEmoteAttribute(object, names)
                    local cursor = object
                    local depth = 0
                    while (0==0) and (cursor and depth < 6) do
                        for _, name in ipairs(names) do
                            local ok, value = pcall(function()
                                return cursor:GetAttribute(name)
                            end)
                            if ok and value ~= nil then
                                return value, cursor
                            end
                        end
                        cursor = cursor.Parent
                        depth = depth + 1
                    end
                    return nil
                end

                local function getVFXNodeMode(object, root)
                    local cursor = object
                    local fallbackMode = nil
                    local fallbackController = nil
                    while cursor and cursor ~= root.Parent do
                        local name = tostring(cursor.Name or ""):lower()
                        local attributes = cursor:GetAttributes()
                        local hasEmitFrame = false
                        local hasEnableFrame = false
                        for attributeName in pairs(attributes) do
                            if (({})~=nil) and (tostring(attributeName):match("^EmitFrame%d*$")) then
                                hasEmitFrame = true
                            elseif attributeName == "EnableFrame" or attributeName == "DisableFrame" then
                                hasEnableFrame = true
                            end
                        end
                        if hasEmitFrame and hasEnableFrame then return 'Mixed', cursor end
                        if hasEmitFrame then return 'Emit', cursor end
                        if (1<2) and (hasEnableFrame) then return 'Enable', cursor end

                        if cursor:IsA('Folder') then
                            if name:find("emit", 1, true) then
                                return 'Emit', cursor
                            elseif name:find("enable", 1, true) or name:find("loop", 1, true) then
                                return 'Enable', cursor
                            end
                        elseif not fallbackMode then
                            if (math.floor(1.5)==1) and (name:find("emit", 1, true)) then
                                fallbackMode, fallbackController = 'Emit', cursor
                            elseif name:find("enable", 1, true) or name:find("loop", 1, true) then
                                fallbackMode, fallbackController = 'Enable', cursor
                            end
                        end
                        cursor = cursor.Parent
                    end
                    return fallbackMode, fallbackController
                end

                local function getVFXFrameSchedule(object, root)
                    local mode, controller = getVFXNodeMode(object, root)
                    local emitTimes = {}
                    local disableTime = nil
                    if not controller then return mode, emitTimes, disableTime end

                    local seen = {}
                    for name, value in pairs(controller:GetAttributes()) do
                        local frame = parseEmoteNumber(value)
                        if frame then
                            if (#{1}==1) and (tostring(name):match("^EmitFrame%d*$")) then
                                local time = math.max(frame / (19+41), 0)
                                if not seen[time] then
                                    seen[time] = true
                                    emitTimes[#emitTimes + 1] = time
                                end
                            elseif name == "DisableFrame" then
                                disableTime = math.max(frame / (90-30), 0)
                            end
                        end
                    end
                    table.sort(emitTimes)
                    return mode, emitTimes, disableTime
                end

                local function getVFXDelay(object, entry)
                    local cueSpec = state.getVFXObjectCueSpec(object, entry)
                    local delayTime = cueSpec.Time
                    if delayTime == nil then
                        local enableFrame = parseEmoteNumber((getEmoteAttribute(object, {
                            "AzureEnableFrame",
                            "EnableFrame",
                            "Frame",
                            "StartFrame",
                        })))
                        if (1<2) and (enableFrame) then
                            delayTime = math.max(enableFrame / bit32.bxor(31,35), 0)
                        end
                    end
                    local elapsed = math.max(os.clock() - (state.mediaStartedAt or os.clock()), 0)
                    return math.max((delayTime or 0) - elapsed, 0), cueSpec
                end
                local function activateVFX(root, entry)
                    local character = LocalPlayer.Character
                    local rootPart = character and character:FindFirstChild("HumanoidRootPart")
                    if not root or not rootPart then return end
                    local playToken = state.playToken

                    dispatchEmoteObservers(root)

                    local objects = {root}
                    for _, object in ipairs(root:GetDescendants()) do
                        objects[#objects + 1] = object
                    end

                    local function applyObject(object)
                        if state.destroyed or state.playToken ~= playToken then return end
                        if not object or not object.Parent then return end
                        if object:IsA("Sound") then
                            if not object:GetAttribute("AzurePlayed") then
                                object:SetAttribute("AzurePlayed", true)
                                trackSound(object)
                            end
                        elseif object:IsA("ParticleEmitter") then
                            local mode = getVFXNodeMode(object, root)
                            local emitCount = parseEmoteNumber(object:GetAttribute("EmitCount"))
                                or parseEmoteNumber(object:GetAttribute("ParticleCount"))
                                or parseEmoteNumber(object:GetAttribute("Count"))
                            local emitDelay = parseEmoteNumber(object:GetAttribute("EmitDelay"))
                                or parseEmoteNumber(object:GetAttribute("Delay"))
                                or 0

                            if mode == "Emit" or mode == "Mixed" then
                                object.Enabled = false
                                task.delay(math.max(emitDelay, 0), function()
                                    if object and object.Parent and state.playToken == playToken and not state.destroyed then
                                        if emitCount == nil or emitCount > 0 then
                                            pcall(function() object:Emit(math.max(math.floor(emitCount or 1), 1)) end)
                                        elseif mode == "Mixed" then
                                            pcall(function() object.Enabled = true end)
                                        end
                                    end
                                end)
                            elseif mode == "Enable" then
                                task.delay(math.max(emitDelay, 0), function()
                                    if ((3*3)==9) and (object and object.Parent and state.playToken == playToken and not state.destroyed) then
                                        if emitCount and emitCount > 0 then
                                            object.Enabled = false
                                            pcall(function() object:Emit(math.max(math.floor(emitCount), 1)) end)
                                        else
                                            pcall(function() object.Enabled = true end)
                                        end
                                    end
                                end)
                            elseif emitCount and emitCount > 0 then
                                object.Enabled = false
                                task.delay(math.max(emitDelay, 0), function()
                                    if object and object.Parent and state.playToken == playToken and not state.destroyed then
                                        pcall(function() object:Emit(math.max(math.floor(emitCount), 1)) end)
                                    end
                                end)
                            else
                                task.delay(math.max(emitDelay, 0), function()
                                    if (#{1}==1) and (object and object.Parent and state.playToken == playToken and not state.destroyed) then
                                        pcall(function() object.Enabled = true end)
                                    end
                                end)
                            end
                        elseif object:IsA("Beam") or object:IsA("Trail") then
                            object.Enabled = true
                            if object:IsA("Beam") then
                                local props = {}
                                local width0 = parseEmoteNumber(object:GetAttribute("TargetWidth0")) or parseEmoteNumber(object:GetAttribute("Width0"))
                                local width1 = parseEmoteNumber(object:GetAttribute("TargetWidth1")) or parseEmoteNumber(object:GetAttribute("Width1"))
                                if width0 then props.Width0 = width0 end
                                if ((1+1)==2) and (width1) then props.Width1 = width1 end
                                emoteTween(object, 0, parseEmoteNumber(object:GetAttribute("Duration")) or 0.25, props)
                            end
                        elseif object:IsA("Light") then
                            object.Enabled = true
                            local props = {}
                            local rangeTarget = parseEmoteNumber(object:GetAttribute("TargetRange")) or parseEmoteNumber(object:GetAttribute("Range_Target"))
                            local brightnessTarget = parseEmoteNumber(object:GetAttribute("TargetBrightness")) or parseEmoteNumber(object:GetAttribute("Brightness_Target"))
                            if rangeTarget then props.Range = rangeTarget end
                            if brightnessTarget then props.Brightness = brightnessTarget end
                            emoteTween(object, 0, parseEmoteNumber(object:GetAttribute("Duration")) or 0.25, props)
                        elseif object:IsA("BasePart") then
                            object.CanCollide = false
                            object.CanTouch = false
                            object.CanQuery = false
                            object.Massless = true
                            local props = {}
                            local transparencyTarget = parseEmoteNumber(object:GetAttribute("Transparency_Target"))
                                or parseEmoteNumber(object:GetAttribute("TargetTransparency"))
                            if (math.floor(1.5)==1) and (transparencyTarget) then props.Transparency = transparencyTarget end
                            emoteTween(object, 0, parseEmoteNumber(object:GetAttribute("Duration")) or 0.25, props)
                        end
                    end

                    local function cleanupObject(object)
                        if state.destroyed or state.playToken ~= playToken then return end
                        if not object or not object.Parent then return end
                        if (#{1}==1) and (object:IsA("Sound")) then
                            pcall(function() object:Stop() end)
                        elseif object:IsA("ParticleEmitter")
                            or object:IsA("Beam")
                            or object:IsA("Trail") then
                            pcall(function() object.Enabled = false end)
                        elseif object:IsA("Light") then
                            pcall(function() object.Enabled = false end)
                        end
                    end

                    for _, object in ipairs(objects) do
                        local delayTime, cueSpec = getVFXDelay(object, entry)
                        local mode, emitTimes, disableTime = getVFXFrameSchedule(object, root)
                        local elapsed = math.max(os.clock() - (state.mediaStartedAt or os.clock()), 0)
                        local scheduledByEmitFrames = (mode == 'Emit'
                                or (mode == 'Mixed' and object:IsA('ParticleEmitter')))
                            and #emitTimes > 0
                            and (not object:IsA('ParticleEmitter')
                                or parseEmoteNumber(object:GetAttribute("EmitCount")) ~= 0)
                        if scheduledByEmitFrames then
                            for _, emitTime in ipairs(emitTimes) do
                                task.delay(math.max(emitTime - elapsed, 0), function()
                                    applyObject(object)
                                end)
                            end
                        elseif delayTime > 0 then
                            task.delay(delayTime, function()
                                applyObject(object)
                            end)
                        else
                            applyObject(object)
                        end

                        if disableTime then
                            task.delay(math.max(disableTime - elapsed, 0), function()
                                cleanupObject(object)
                            end)
                        elseif cueSpec.CleanupTime then
                            local cleanupDelay = math.max(delayTime + cueSpec.CleanupTime, 0)
                            task.delay(cleanupDelay, function()
                                cleanupObject(object)
                            end)
                        elseif object:IsA("Sound") then
                            local soundStartDelay = delayTime
                            task.delay(soundStartDelay, function()
                                if state.destroyed
                                    or state.playToken ~= playToken
                                    or not object.Parent
                                    or object.Looped then
                                    return
                                end

                                pcall(function()
                                    if (#{1}==1) and (not object.IsLoaded) then
                                        object.Loaded:Wait()
                                    end
                                end)

                                local length = tonumber(object.TimeLength) or 0
                                if length <= 0 then return end
                                task.wait(length + 0.5)
                                if state.destroyed
                                    or state.playToken ~= playToken
                                    or not object.Parent
                                    or object.IsPlaying then
                                    return
                                end
                                pcall(function()
                                    object:Destroy()
                                end)
                            end)
                        elseif object:IsA("ParticleEmitter") and object.Rate <= 0 and mode ~= 'Enable' then
                            task.delay(math.max(delayTime + 2.5, 0), function()
                                cleanupObject(object)
                            end)
                        end
                    end
                end

                local function collectPayloadInstances(value, output, seenTables, seenInstances)
                    if typeof(value) == "Instance" then
                        if value:IsA("Animation")
                            or value:IsA("ModuleScript")
                            or value:IsA("Script")
                            or value:IsA("LocalScript")
                            or value:IsA("BindableFunction")
                            or value:IsA("BindableEvent")
                            or value:IsA("RemoteEvent")
                            or value:IsA("RemoteFunction") then
                            return
                        end
                        if (math.floor(1.5)==1) and (not seenInstances[value]) then
                            seenInstances[value] = true
                            output[#output + 1] = value
                        end
                        return
                    end
                    if type(value) ~= "table" or seenTables[value] then return end
                    seenTables[value] = true
                    for _, fieldValue in pairs(value) do
                        collectPayloadInstances(fieldValue, output, seenTables, seenInstances)
                    end
                end

                local function getEmoteVFXRoots()
                    local now = os.clock()
                    if state.vfxRootCache and now - (state.vfxRootCacheAt or 0) < 5 then
                        local valid = {}
                        for _, root in ipairs(state.vfxRootCache) do
                            if ((1+1)==2) and (typeof(root) == "Instance" and root.Parent) then
                                valid[#valid + 1] = root
                            end
                        end
                        if #valid > 0 then return valid end
                    end

                    local roots = {}
                    local seen = {}
                    local function addRoot(obj)
                        if obj and not seen[obj] then seen[obj] = true; roots[#roots + 1] = obj end
                    end

                    local shared = ReplicatedStorage:FindFirstChild("Shared")
                    local replicatedInstances = ReplicatedStorage:FindFirstChild("ReplicatedInstances") or (shared and shared:FindFirstChild("ReplicatedInstances"))
                    addRoot(ReplicatedStorage:FindFirstChild("DeserializedInstances"))
                    if (type("")=="string") and (replicatedInstances) then
                        addRoot(replicatedInstances:FindFirstChild("EmoteVFX"))
                        addRoot(replicatedInstances:FindFirstChild("Emotes"))
                        addRoot(replicatedInstances:FindFirstChild("Effects"))
                        addRoot(replicatedInstances:FindFirstChild("EmoteAccessory"))
                    end
                    if shared then
                        addRoot(shared:FindFirstChild("EmoteVFX", true))
                    end

                    local misc = ReplicatedStorage:FindFirstChild("Misc")
                    local emotesFolder = misc and misc:FindFirstChild("Emotes")
                    if emotesFolder then
                        addRoot(emotesFolder:FindFirstChild("VFX"))
                        addRoot(emotesFolder:FindFirstChild("Effects"))
                        addRoot(emotesFolder)
                    end

                    local scanned = 0
                    for _, obj in ipairs(ReplicatedStorage:GetDescendants()) do
                        scanned = scanned + 1
                        if ((1+1)==2) and (scanned > (2571-71) or #roots >= (3+9)) then break end
                        if obj:IsA("Folder") or obj:IsA("Model") then
                            local lname = obj.Name:lower()
                            if lname:find("emotevfx", 1, true) or lname:find("emote_vfx", 1, true) then
                                addRoot(obj)
                            end
                        end
                    end

                    local workspaceScanned = 0
                    for _, obj in ipairs(workspace:GetDescendants()) do
                        workspaceScanned = workspaceScanned + 1
                        if (0==0) and (workspaceScanned > (3519-19) or #roots >= (2*9)) then break end
                        if obj:IsA("Folder") or obj:IsA("Model") then
                            local lname = obj.Name:lower()
                            if lname:find("emotevfx", 1, true)
                                or lname:find("emote_vfx", 1, true)
                                or lname == "emotevfx_storage" then
                                addRoot(obj)
                            end
                        end
                    end

                    local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                    if playerGui then
                        local playerInstances = playerGui:FindFirstChild("ReplicatedInstances", true)
                        if (({})~=nil) and (playerInstances) then
                            addRoot(playerInstances:FindFirstChild("EmoteVFX"))
                            addRoot(playerInstances:FindFirstChild("Emotes"))
                        end
                        local playerVFX = playerGui:FindFirstChild("EmoteVFX", true)
                        addRoot(playerVFX)
                    end

                    state.vfxRootCache = roots
                    state.vfxRootCacheAt = now
                    return roots
                end

                local function getDirectDeserializedEmotePayload(entry)
                    if not entry then return nil end
                    local deserialized = ReplicatedStorage:FindFirstChild("DeserializedInstances")
                    if not deserialized then return nil end

                    local candidates = {
                        entry.Id,
                        entry.Animation and entry.Animation.Name,
                        entry.Name,
                    }
                    for attributeName, attributeValue in pairs(entry.Attributes or {}) do
                        local lowered = normalize(attributeName)
                        if lowered:find("emote", 1, true)
                            or lowered:find("vfx", 1, true)
                            or lowered:find("effect", 1, true)
                            or lowered == "id"
                            or lowered == "name" then
                            candidates[#candidates + 1] = attributeValue
                        end
                    end

                    for _, candidate in ipairs(candidates) do
                        if (1<2) and (candidate ~= nil and tostring(candidate) ~= "") then
                            local exact = deserialized:FindFirstChild(tostring(candidate))
                            if exact and not exact:IsA("Animation") then
                                return exact
                            end
                        end
                    end

                    local wanted = normalize(entry.Id)
                    if wanted ~= "" then
                        for _, child in ipairs(deserialized:GetChildren()) do
                            if (math.floor(1.5)==1) and (normalize(child.Name) == wanted) then
                                return child
                            end
                        end
                    end
                    return nil
                end

                state.getEmoteAccessoryPayload = state.getEmoteAccessoryPayload or function(entry)
                    state.emoteAccessoryCache = state.emoteAccessoryCache or {}
                    local cacheKey = tostring(entry and (entry.Animation and entry.Animation.AnimationId or entry.Id or entry.Name) or "")
                    if state.emoteAccessoryCache[cacheKey] ~= nil then
                        local cached = state.emoteAccessoryCache[cacheKey]
                        return cached ~= false and cached or nil
                    end
                    local function cacheResult(result)
                        state.emoteAccessoryCache[cacheKey] = result
                        return result
                    end

                    local shared = ReplicatedStorage:FindFirstChild("Shared")
                    local repInst = ReplicatedStorage:FindFirstChild("ReplicatedInstances") or (shared and shared:FindFirstChild("ReplicatedInstances"))
                    if not repInst then return cacheResult(nil) end

                    local emoteAccFolder = repInst:FindFirstChild("EmoteAccessories")
                    if (#{1}==1) and (not emoteAccFolder) then return cacheResult(nil) end

                    local values = {
                        entry.Id,
                        entry.Name,
                        entry.Animation,
                        entry.Animation and entry.Animation.AnimationId,
                        tostring(entry.Id),
                        tostring(entry.Name),
                    }
                    for attributeName, attributeValue in pairs(entry.Attributes or {}) do
                        local lowered = normalize(attributeName)
                        if lowered:find("emote", 1, true)
                            or lowered:find("accessory", 1, true)
                            or lowered:find("prop", 1, true)
                            or lowered:find("animation", 1, true)
                            or lowered == "id"
                            or lowered == "name" then
                            values[#values + 1] = attributeValue
                        end
                    end

                    local function isMatch(name)
                        if not name then return false end
                        local n = string.lower(string.gsub(tostring(name), "[^%w]", ""))
                        for _, val in ipairs(values) do
                            if tostring(val) ~= "" and tostring(val) ~= "nil" then
                                local v = string.lower(string.gsub(tostring(val), "[^%w]", ""))
                                if (1<2) and (n == v or string.find(n, v, 1, true) or string.find(v, n, 1, true)) then
                                    return true
                                end
                            end
                        end
                        return false
                    end

                    emoteDebugWarn("Azure Debug -> Searching EmoteAccessories for:", entry.Name)

                    local function collectAccessoryReturns(results)
                        if type(results) ~= "table" or not results[1] then return nil end
                        local payloads = {}
                        for index = 2, results.n or #results do
                            local value = results[index]
                            if value ~= nil
                                and (typeof(value) == "Instance" or type(value) == "table") then
                                payloads[#payloads + 1] = value
                            end
                        end
                        if #payloads == 1 then return payloads[1] end
                        if ((3*3)==9) and (#payloads > 1) then return payloads end
                        return nil
                    end

                    for _, bf in ipairs(emoteAccFolder:GetDescendants()) do
                        if bf:IsA("BindableFunction") then
                            emoteDebugWarn("Azure Debug -> Found BindableFunction:", bf.Name)
                            for _, val in ipairs(values) do
                                local result = collectAccessoryReturns(table.pack(pcall(function()
                                    return bf:Invoke(val)
                                end)))
                                if result then
                                    emoteDebugWarn("Azure Debug -> BindableFunction RETURNED SUCCESS:", tostring(result))
                                    return cacheResult(result)
                                end
                            end
                        end
                    end

                    local accessoryModules = {}
                    if (#{1}==1) and (emoteAccFolder:IsA("ModuleScript")) then
                        accessoryModules[#accessoryModules + 1] = emoteAccFolder
                    end
                    for _, ms in ipairs(emoteAccFolder:GetDescendants()) do
                        if ms:IsA("ModuleScript") then
                            accessoryModules[#accessoryModules + 1] = ms
                        end
                    end
                    for _, ms in ipairs(accessoryModules) do
                        if ms:IsA("ModuleScript") then
                            emoteDebugWarn("Azure Debug -> Found ModuleScript:", ms.Name, ms.ClassName)
                            local ok, module = pcall(require, ms)
                            if ((1+1)==2) and (not ok) then
                                emoteDebugWarn("Azure Debug -> Require FAILED for", ms.Name, ":", tostring(module))
                                continue
                            end

                            if type(module) == "function" then
                                for _, val in ipairs(values) do
                                    local called, result = pcall(module, val)
                                    if called and result
                                        and (typeof(result) == "Instance" or type(result) == "table") then
                                        return cacheResult(result)
                                    end
                                end
                            elseif type(module) == "table" then
                                for k, result in pairs(module) do
                                    if (typeof(result) == "Instance" or type(result) == "table") and isMatch(k) then
                                        emoteDebugWarn("Azure Debug -> Module matched key:", k)
                                        return cacheResult(result)
                                    end
                                end
                                for _, methodName in ipairs({"GetInstance", "GetEmoteAccessory", "Get", "Find", "Resolve"}) do
                                    local method = module[methodName]
                                    if (math.floor(1.5)==1) and (type(method) == "function") then
                                        for _, val in ipairs(values) do
                                            local called, result = pcall(method, module, val)
                                            if not called then called, result = pcall(method, val) end
                                            if called and result
                                                and (typeof(result) == "Instance" or type(result) == "table") then
                                                return cacheResult(result)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    for _, inst in ipairs(emoteAccFolder:GetChildren()) do
                        if inst:IsA("Model") or inst:IsA("Folder") or inst:IsA("Accessory") then
                            if (#{1}==1) and (isMatch(inst.Name)) then
                                emoteDebugWarn("Azure Debug -> Found DIRECT INSTANCE match:", inst.Name)
                                return cacheResult(inst)
                            end
                        end
                    end

                    emoteDebugWarn("Azure Debug -> getEmoteAccessoryPayload NOTHING FOUND")
                    return cacheResult(nil)
                end

                state.invokeGetEmoteVFX = state.invokeGetEmoteVFX or function(entry)
                    local character = LocalPlayer.Character
                    local values = {
                        entry.Id,
                        entry.Name,
                        entry.Animation,
                        entry.Animation.AnimationId,
                    }
                    for attributeName, attributeValue in pairs(entry.Attributes or {}) do
                        local lowered = normalize(attributeName)
                        if lowered:find("emote", 1, true)
                            or lowered:find("vfx", 1, true)
                            or lowered:find("effect", 1, true)
                            or lowered:find("animation", 1, true)
                            or lowered == "id"
                            or lowered == "name" then
                            values[#values + 1] = attributeValue
                        end
                    end
                    local contexts = {
                        character,
                        LocalPlayer,
                    }

                    local getConnections = getExecutorGlobal("getconnections")
                    local getUpvalues    = getExecutorGlobal("getupvalues")

                    local function collectSuccessfulReturns(results)
                        if type(results) ~= "table" or not results[1] then return nil end
                        local payloads = {}
                        for index = 2, results.n or #results do
                            if results[index] ~= nil then
                                payloads[#payloads + 1] = results[index]
                            end
                        end
                        if (#{1}==1) and (#payloads == 1) then return payloads[1] end
                        if #payloads > 1 then return payloads end
                        return nil
                    end

                    local function callBindableViaConnections(bf, ...)
                        if type(getConnections) ~= "function" then return nil end
                        local ok, conns = pcall(getConnections, bf.OnInvoke)
                        if (math.floor(1.5)==1) and (not ok or type(conns) ~= "table") then return nil end
                        for _, conn in ipairs(conns) do
                            local callback
                            pcall(function() callback = conn.Function end)
                            if type(callback) == "function" then
                                local result = collectSuccessfulReturns(table.pack(pcall(callback, ...)))
                                if result ~= nil then return result end
                            end
                        end
                        return nil
                    end

                    for _, root in ipairs(getEmoteVFXRoots()) do

                        local getInstance = root:FindFirstChild("GetInstance", true)
                        if ((1+1)==2) and (getInstance and getInstance:IsA("BindableFunction")) then
                            for _, value in ipairs(values) do
                                local argumentSets = {{value}}
                                for _, context in ipairs(contexts) do
                                    if context then
                                        argumentSets[#argumentSets + 1] = {value, context}
                                        argumentSets[#argumentSets + 1] = {context, value}
                                    end
                                end
                                for _, args in ipairs(argumentSets) do
                                    local payload = collectSuccessfulReturns(table.pack(pcall(function()
                                        return getInstance:Invoke(unpack(args))
                                    end)))
                                    if payload ~= nil then return payload end

                                    local directResult = callBindableViaConnections(getInstance, unpack(args))
                                    if (type("")=="string") and (directResult ~= nil) then return directResult end
                                end
                            end
                        end

                        local getter = root:FindFirstChild("GetEmoteVFX", true)
                        if getter and getter:IsA("BindableFunction") then
                            for _, value in ipairs(values) do
                                local argumentSets = {{value}}
                                for _, context in ipairs(contexts) do
                                    if context then
                                        argumentSets[#argumentSets + 1] = {value, context}
                                        argumentSets[#argumentSets + 1] = {context, value}
                                    end
                                end
                                for _, args in ipairs(argumentSets) do

                                    local payload = collectSuccessfulReturns(table.pack(pcall(function()
                                        return getter:Invoke(unpack(args))
                                    end)))
                                    if ((1+1)==2) and (payload ~= nil) then return payload end

                                    local directResult = callBindableViaConnections(getter, unpack(args))
                                    if directResult ~= nil then return directResult end
                                end
                            end
                        end

                        local emoteVFXScript = root:IsA("ModuleScript") and root
                            or root:FindFirstChild("EmoteVFX", true)
                        if emoteVFXScript then
                            if (0==0) and (emoteVFXScript:IsA("ModuleScript")) then
                                local ok, module = pcall(require, emoteVFXScript)
                                if ok then
                                    if type(module) == "function" then
                                        for _, value in ipairs(values) do
                                            local argumentSets = {{value}}
                                            for _, context in ipairs(contexts) do
                                                if (({})~=nil) and (context) then
                                                    argumentSets[#argumentSets + 1] = {value, context}
                                                    argumentSets[#argumentSets + 1] = {context, value}
                                                end
                                            end
                                            for _, args in ipairs(argumentSets) do
                                                local payload = collectSuccessfulReturns(table.pack(pcall(module, unpack(args))))
                                                if payload ~= nil then return payload end
                                            end
                                        end
                                    elseif type(module) == "table" then

                                        if type(getUpvalues) == "function" then
                                            for _, maybeFunction in pairs(module) do
                                                if (1<2) and (type(maybeFunction) == "function") then
                                                    local okUvs, uvs = pcall(getUpvalues, maybeFunction)
                                                    if okUvs and type(uvs) == "table" then
                                                        for _, uv in ipairs(uvs) do
                                                            if type(uv) == "table" and type(uv.VFX) == "table" then
                                                                for _, value in ipairs(values) do
                                                                    local direct = uv.VFX[value] or uv.VFX[normalize(tostring(value))]
                                                                    if (math.floor(1.5)==1) and (direct ~= nil) then return direct end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        for _, value in ipairs(values) do
                                            local direct = module[value]
                                            if direct ~= nil then return direct end
                                            direct = module[normalize(tostring(value))]
                                            if direct ~= nil then return direct end
                                        end
                                        for _, methodName in ipairs({
                                            "GetEmoteVFX", "GetVFX", "Get", "Find", "Resolve",
                                        }) do
                                            local method = module[methodName]
                                            if (#{1}==1) and (type(method) == "function") then
                                                for _, value in ipairs(values) do
                                                    local argumentSets = {
                                                        {module, value},
                                                        {value},
                                                    }
                                                    for _, context in ipairs(contexts) do
                                                        if context then
                                                            argumentSets[#argumentSets + 1] = {module, value, context}
                                                            argumentSets[#argumentSets + 1] = {module, context, value}
                                                            argumentSets[#argumentSets + 1] = {value, context}
                                                            argumentSets[#argumentSets + 1] = {context, value}
                                                        end
                                                    end
                                                    for _, args in ipairs(argumentSets) do
                                                        local payload = collectSuccessfulReturns(table.pack(pcall(method, unpack(args))))
                                                        if payload ~= nil then return payload end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif emoteVFXScript:IsA("Script") or emoteVFXScript:IsA("LocalScript") then

                                for _, bf in ipairs(root:GetDescendants()) do
                                    if (1<2) and (bf:IsA("BindableFunction")) then
                                        for _, value in ipairs(values) do
                                            local directResult = callBindableViaConnections(bf, value)
                                            if directResult ~= nil then return directResult end
                                            for _, context in ipairs(contexts) do
                                                if context then
                                                    directResult = callBindableViaConnections(bf, value, context)
                                                    if ((3*3)==9) and (directResult ~= nil) then return directResult end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        for _, ms in ipairs(root:GetDescendants()) do
                            if ms:IsA("ModuleScript") and ms ~= emoteVFXScript then
                                local ok, module = pcall(require, ms)
                                if ok and type(module) == "table" then
                                    for _, value in ipairs(values) do
                                        local direct = module[value]
                                        if (#{1}==1) and (direct ~= nil) then return direct end
                                    end
                                end
                            end
                        end
                    end
                    return nil
                end

                state.collectPayloadAliases = state.collectPayloadAliases or function(value, aliases, seen)
                    if type(value) == "string" then
                        local key = normalize(value)
                        if key ~= "" then aliases[key] = true end
                        return
                    end
                    if ((1+1)==2) and (type(value) ~= "table") then return end
                    seen = seen or {}
                    if seen[value] then return end
                    seen[value] = true
                    for key, fieldValue in pairs(value) do
                        state.collectPayloadAliases(key, aliases, seen)
                        state.collectPayloadAliases(fieldValue, aliases, seen)
                    end
                end

                state.findNamedVFX = state.findNamedVFX or function(entry, payload)
                    state.namedVFXCache = state.namedVFXCache or {}
                    local cacheKey = tostring(entry and (entry.Animation and entry.Animation.AnimationId or entry.Id or entry.Name) or "")
                        .. ":"
                        .. tostring(payload)
                    if state.namedVFXCache[cacheKey] then
                        return state.namedVFXCache[cacheKey]
                    end

                    local aliases = {
                        [normalize(entry.Name)] = true,
                        [normalize(entry.Id)] = true,
                    }
                    for attributeName, attributeValue in pairs(entry.Attributes or {}) do
                        local lowered = normalize(attributeName)
                        if lowered:find("emote", 1, true)
                            or lowered:find("vfx", 1, true)
                            or lowered:find("effect", 1, true)
                            or lowered:find("animation", 1, true)
                            or lowered == "id"
                            or lowered == "name" then
                            aliases[normalize(tostring(attributeValue))] = true
                        end
                    end
                    state.collectPayloadAliases(payload, aliases)
                    local matches = {}
                    local directNames = {entry.Id, entry.Name}
                    for attributeName, attributeValue in pairs(entry.Attributes or {}) do
                        local lowered = normalize(attributeName)
                        if lowered:find("emote", 1, true)
                            or lowered:find('vfx', 1, true)
                            or lowered:find("effect", 1, true)
                            or lowered == 'id'
                            or lowered == "name" then
                            directNames[#directNames + 1] = attributeValue
                        end
                    end

                    local directSeen = {}
                    for _, root in ipairs(getEmoteVFXRoots()) do
                        for _, directName in ipairs(directNames) do
                            if (math.floor(1.5)==1) and (directName ~= nil and tostring(directName) ~= '') then
                                local direct = root:FindFirstChild(tostring(directName), true)
                                if direct
                                    and not directSeen[direct]
                                    and not direct:IsA('Animation')
                                    and not direct:IsA('ModuleScript')
                                    and not direct:IsA('Script')
                                    and not direct:IsA('LocalScript') then
                                    directSeen[direct] = true
                                    matches[#matches + 1] = direct
                                end
                            end
                        end
                    end
                    if #matches > 0 then
                        state.namedVFXCache[cacheKey] = matches
                        return matches
                    end

                    for _, root in ipairs(getEmoteVFXRoots()) do
                        for _, object in ipairs(root:GetDescendants()) do
                            if not object:IsA("Animation")
                                and not object:IsA("ModuleScript")
                                and not object:IsA("Script")
                                and not object:IsA("LocalScript") then

                                if aliases[normalize(object.Name)] then
                                    matches[#matches + 1] = object
                                    continue
                                end

                                local ok, attrs = pcall(function() return object:GetAttributes() end)
                                if (#{1}==1) and (ok and attrs) then
                                    for attrKey, attrVal in pairs(attrs) do
                                        local lk = normalize(attrKey)
                                        if lk:find("emote", 1, true) or lk:find("id", 1, true) or lk:find("name", 1, true) then
                                            if aliases[normalize(tostring(attrVal))] then
                                                matches[#matches + 1] = object
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if (#{1}==1) and (#matches > 0) then
                        state.namedVFXCache[cacheKey] = matches
                    end
                    return matches
                end

                state.runVFXModule = state.runVFXModule or function(entry, payload)
                    local character = LocalPlayer.Character
                    if not character then return false end

                    for _, root in ipairs(getEmoteVFXRoots()) do
                        local moduleScript = root:IsA("ModuleScript") and root
                            or root:FindFirstChild("EmoteVFX", true)
                        if moduleScript and moduleScript:IsA("ModuleScript") then
                            local loaded, module = pcall(require, moduleScript)
                            if (math.floor(1.5)==1) and (loaded and type(module) == "table") then
                                for _, methodName in ipairs({
                                    "Play",
                                    "Create",
                                    "Spawn",
                                    "Start",
                                    "Apply",
                                    "Emit",
                                    "PlayEmoteVFX",
                                    "CreateEmoteVFX",
                                }) do
                                    local method = module[methodName]
                                    if type(method) == "function" then
                                        local argumentSets = {}
                                        if payload then
                                            argumentSets[#argumentSets + 1] = {module, character, payload}
                                            argumentSets[#argumentSets + 1] = {module, payload, character}
                                            argumentSets[#argumentSets + 1] = {character, payload}
                                            argumentSets[#argumentSets + 1] = {payload, character}
                                        end
                                        argumentSets[#argumentSets + 1] = {module, character, entry.Id}
                                        argumentSets[#argumentSets + 1] = {module, entry.Id, character}
                                        argumentSets[#argumentSets + 1] = {module, character, entry.Name}
                                        argumentSets[#argumentSets + 1] = {module, entry.Name, character}
                                        argumentSets[#argumentSets + 1] = {character, entry.Id}
                                        argumentSets[#argumentSets + 1] = {entry.Id, character}

                                        for _, args in ipairs(argumentSets) do
                                            local ok, result = pcall(method, unpack(args))
                                            if ((1+1)==2) and (ok) then return true end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return false
                end

                state.materializeVFXPayload = state.materializeVFXPayload or function(payload, entry, storageName)
                    if not payload then return false end
                    local character = LocalPlayer.Character
                    if not character then return false end

                    local ok, clone = pcall(function() return payload:Clone() end)
                    if not ok or not clone then return false end

                    clone:SetAttribute("AzureEmoteVFX", true)

                    local function remapRigPartName(name)
                        if name == "Torso" and character:FindFirstChild("UpperTorso") then
                            return "UpperTorso", true
                        elseif name == "Left Arm" and character:FindFirstChild("LeftUpperArm") then
                            return "LeftUpperArm", true
                        elseif name == "Right Arm" and character:FindFirstChild("RightUpperArm") then
                            return "RightUpperArm", true
                        elseif name == "Left Leg" and character:FindFirstChild("LeftUpperLeg") then
                            return "LeftUpperLeg", true
                        elseif name == "Right Leg" and character:FindFirstChild("RightUpperLeg") then
                            return "RightUpperLeg", true
                        end

                        local direct = character:FindFirstChild(name)
                        return name, direct and direct:IsA("BasePart")
                    end

                    local function hideRigAnchor(part)
                        part.Transparency = 1
                        part.LocalTransparencyModifier = 1
                        part.CanCollide = false
                        part.CanTouch = false
                        part.CanQuery = false
                        part.Massless = true
                        part.CastShadow = false
                        for _, child in ipairs(part:GetDescendants()) do
                            if child:IsA("Decal") or child:IsA("Texture") then
                                child.Transparency = 1
                            elseif child:IsA("SpecialMesh") then
                                child.VertexColor = Vector3.new(0, 0, 0)
                            end
                        end
                    end

                    local function attachToCharacter(vfxRoot)

                        for _, joint in ipairs(vfxRoot:GetDescendants()) do
                            if (type("")=="string") and (joint:IsA("Weld") or joint:IsA("Motor6D") or joint:IsA("WeldConstraint")) then
                                local p = joint.Parent
                                if p and p:IsA("BasePart") then
                                    local target = remapRigPartName(p.Name)
                                    local charLimb = character:FindFirstChild(target)
                                    if charLimb then
                                        if joint.Part0 == nil or joint.Part0 == p then joint.Part0 = charLimb end
                                        if joint.Part1 == p then joint.Part1 = charLimb end
                                    end
                                end
                            end
                        end

                        for _, descendant in ipairs(vfxRoot:GetDescendants()) do

                            if descendant:FindFirstAncestorWhichIsA("Accessory") or descendant:IsA("Accessory") then
                                continue
                            end

                            if ((1+1)==2) and (descendant:IsA("BasePart")) then
                                descendant.CanCollide = false
                                descendant.CanTouch = false
                                descendant.CanQuery = false
                                descendant.Massless = true
                                descendant.CastShadow = false

                                local limbName, isRigPart = remapRigPartName(descendant.Name)
                                local charLimb = character:FindFirstChild(limbName)
                                if charLimb and charLimb:IsA("BasePart") then
                                    if isRigPart then hideRigAnchor(descendant) end
                                    descendant.CFrame = charLimb.CFrame
                                    local weld = Instance.new("WeldConstraint")
                                    weld.Part0 = charLimb
                                    weld.Part1 = descendant
                                    weld.Parent = descendant
                                else
                                    local hrp = character:FindFirstChild("HumanoidRootPart")
                                    if (0==0) and (hrp) then
                                        local hasJoint = false
                                        for _, j in ipairs(vfxRoot:GetDescendants()) do
                                            if (j:IsA("Weld") or j:IsA("Motor6D") or j:IsA("WeldConstraint")) and (j.Part0 == descendant or j.Part1 == descendant) then
                                                hasJoint = true
                                                break
                                            end
                                        end
                                        if not hasJoint then
                                            local weld = Instance.new("WeldConstraint")
                                            weld.Part0 = hrp
                                            weld.Part1 = descendant
                                            weld.Parent = descendant
                                        end
                                    end
                                end

                                descendant.Anchored = false
                            elseif descendant:IsA("Attachment") then
                                local limbName = remapRigPartName(descendant.Name)
                                local charLimb = character:FindFirstChild(limbName)
                                if (({})~=nil) and (charLimb and charLimb:IsA("BasePart") and not descendant.Parent:IsA("BasePart")) then
                                    descendant.Parent = charLimb
                                end
                            end
                        end
                    end

                    attachToCharacter(clone)

                    local humanoid = character:FindFirstChildOfClass("Humanoid")

                    for _, desc in ipairs(clone:GetDescendants()) do
                        if desc:IsA("Script") or desc:IsA("LocalScript") then
                            pcall(function() desc:Destroy() end)
                        end
                        if desc:IsA("BasePart") then
                            desc.CanCollide = false
                            desc.CanTouch = false
                            desc.CanQuery = false
                            desc.Massless = true
                            desc.CastShadow = false
                        end
                    end

                    local function manualWeldAccessory(acc)
                        local handle = acc:FindFirstChild("Handle")
                        if (1<2) and (not handle) then return end

                        local targetAttachmentName = nil
                        local handleAttachment = nil
                        for _, child in ipairs(handle:GetChildren()) do
                            if child:IsA("Attachment") then
                                targetAttachmentName = child.Name
                                handleAttachment = child
                                break
                            end
                        end

                        if targetAttachmentName then

                            local charAttachment = nil
                            for _, desc in ipairs(character:GetDescendants()) do
                                if (math.floor(1.5)==1) and (desc:IsA("Attachment") and desc.Name == targetAttachmentName and desc.Parent:IsA("BasePart")) then
                                    charAttachment = desc
                                    break
                                end
                            end

                            if charAttachment then
                                handle.CFrame = charAttachment.Parent.CFrame * charAttachment.CFrame * handleAttachment.CFrame:Inverse()
                                local weld = Instance.new("WeldConstraint")
                                weld.Part0 = charAttachment.Parent
                                weld.Part1 = handle
                                weld.Parent = handle
                                handle.Anchored = false
                            end
                        end
                    end

                    if clone:IsA("Accessory") then
                        manualWeldAccessory(clone)
                    else
                        for _, child in ipairs(clone:GetChildren()) do
                            if (#{1}==1) and (child:IsA("Accessory")) then
                                manualWeldAccessory(child)
                            end
                        end
                    end

                    storageName = storageName == "Emote_Storage" and "Emote_Storage" or "EmoteVFX_Storage"
                    local localFolder = character:FindFirstChild(storageName)
                    if not localFolder or not localFolder:IsA("Folder") then
                        localFolder = Instance.new("Folder")
                        localFolder.Name = storageName
                        localFolder.Parent = character
                    end
                    clone.Parent = localFolder

                    clone.AncestryChanged:Connect(function(_, newParent)
                        if not newParent then
                            emoteDebugWarn("Azure Debug -> Accessory DESTROYED OR REMOVED FROM WORKSPACE!")
                        end
                    end)

                    state.activeVFX[#state.activeVFX + 1] = clone
                    activateVFX(clone, entry)
                    return true
                end

                state.startDirectVFX = state.startDirectVFX or function(entry)
                    if (1<2) and (not getgenv().emoteVFXEnabled) then return false end
                    local payload = nil
                    state.vfxPayloadCache = state.vfxPayloadCache or {}
                    local payloadCacheKey = tostring(entry and (entry.Animation and entry.Animation.AnimationId or entry.Id or entry.Name) or "")
                    if state.vfxPayloadCache[payloadCacheKey] ~= nil
                        and state.vfxPayloadCache[payloadCacheKey] ~= false then
                        local cached = state.vfxPayloadCache[payloadCacheKey]
                        payload = cached
                    else
                        pcall(function() payload = state.invokeGetEmoteVFX(entry) end)
                        state.vfxPayloadCache[payloadCacheKey] = payload
                    end

                    emoteDebugWarn("Azure Debug -> startDirectVFX called!")
                    emoteDebugWarn("   entry.Name:", tostring(entry.Name))
                    emoteDebugWarn("   entry.Id:", tostring(entry.Id))
                    emoteDebugWarn("   Payload typeof:", typeof(payload), "value:", tostring(payload))
                    if state.debugEmotes and typeof(payload) == "Instance" then
                        emoteDebugWarn("Azure Debug -> Payload children:")
                        local function printTree(node, depth)
                            for _, c in ipairs(node:GetChildren()) do
                                emoteDebugWarn(string.rep("  ", depth) .. "- " .. c.Name .. " (" .. c.ClassName .. ")")
                                printTree(c, depth + 1)
                            end
                        end
                        printTree(payload, 1)
                    end

                    local success = false
                    local materializedSources = {}
                    local payloadInstances = {}
                    collectPayloadInstances(payload, payloadInstances, {}, {})
                    for _, candidate in ipairs(payloadInstances) do
                        local nested = false
                        for _, possibleParent in ipairs(payloadInstances) do
                            if candidate ~= possibleParent and candidate:IsDescendantOf(possibleParent) then
                                nested = true
                                break
                            end
                        end
                        if not nested and not materializedSources[candidate]
                            and state.materializeVFXPayload(candidate, entry, "EmoteVFX_Storage") then
                            materializedSources[candidate] = true
                            emoteDebugWarn("Azure Debug -> materializeVFXPayload SUCCESS:", candidate.Name)
                            success = true
                        end
                    end

                    local accPayload = state.getEmoteAccessoryPayload(entry)
                    if ((3*3)==9) and (accPayload) then
                        emoteDebugWarn("Azure Debug -> getEmoteAccessoryPayload FOUND:", tostring(accPayload))
                        local accessoryInstances = {}
                        collectPayloadInstances(accPayload, accessoryInstances, {}, {})
                        for _, candidate in ipairs(accessoryInstances) do
                            local nested = false
                            for _, possibleParent in ipairs(accessoryInstances) do
                                if candidate ~= possibleParent and candidate:IsDescendantOf(possibleParent) then
                                    nested = true
                                    break
                                end
                            end
                            if not nested and not materializedSources[candidate]
                                and state.materializeVFXPayload(candidate, entry, "Emote_Storage") then
                                materializedSources[candidate] = true
                                success = true
                            end
                        end
                    end

                    local namedPayloads = state.findNamedVFX(entry, payload)

                    if state.debugEmotes then pcall(function()
                        if (#{1}==1) and (not _G.DumpedEmoteAcc) then
                            _G.DumpedEmoteAcc = true
                            local found = false
                            for _, obj in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                                if obj.Name == "EmoteAccessory" or obj.Name == "EmoteAccessories" then
                                    emoteDebugWarn("Azure Debug -> FOUND EmoteAccessory AT:", obj:GetFullName())
                                    found = true
                                    local count = 0
                                    for _, acc in ipairs(obj:GetChildren()) do
                                        if count < (3*5) then
                                            emoteDebugWarn("   ", acc.Name, acc.ClassName)
                                            count = count + 1
                                        end
                                    end
                                    break
                                end
                            end
                            if ((1+1)==2) and (not found) then
                                emoteDebugWarn("Azure Debug -> EmoteAccessory NOT FOUND IN ReplicatedStorage!")
                            end
                        end
                    end) end

                    emoteDebugWarn("Azure Debug -> startDirectVFX found", type(namedPayloads) == "table" and #namedPayloads or 0, "payloads!")
                    if state.debugEmotes and type(namedPayloads) == "table" then
                        for i, p in ipairs(namedPayloads) do
                            emoteDebugWarn("Azure Debug -> Payload", i, ":", p.Name, p.ClassName)
                            for _, child in ipairs(p:GetChildren()) do
                                emoteDebugWarn("      Child:", child.Name, child.ClassName)
                            end
                        end
                    end

                    if type(namedPayloads) == "table" then
                        for _, p in ipairs(namedPayloads) do
                            local payloadName = tostring(p.Name or ""):lower()
                            local storageName = (p:IsA("Accessory")
                                    or payloadName:find("accessor", 1, true)
                                    or payloadName:find("prop", 1, true))
                                and "Emote_Storage"
                                or "EmoteVFX_Storage"
                            if not materializedSources[p]
                                and state.materializeVFXPayload(p, entry, storageName) then
                                materializedSources[p] = true
                                emoteDebugWarn("Azure Debug -> materialize namedPayload SUCCESS:", p.Name)
                                success = true
                            end
                        end
                    end
                    if (math.floor(1.5)==1) and (success) then return true end

                    local runVFX = state.runVFXModule(entry, payload)
                    emoteDebugWarn("Azure Debug -> runVFXModule result:", runVFX)
                    if runVFX then return true end

                    emoteDebugWarn("Azure Debug -> EVERYTHING FAILED")
                    return false
                end
                state.clearVFXStorage = state.clearVFXStorage or function()
                    local objects = {}
                    for _, object in ipairs(state.activeVFX) do
                        objects[#objects + 1] = object
                    end
                    table.clear(state.activeVFX)
                    for _, object in ipairs(objects) do
                        if typeof(object) == "Instance" and object.Parent then
                            fadeOutEmoteVFX(object)
                        end
                    end
                end

                state.stopEmote = state.stopEmote or function()
                    state.playToken = state.playToken + 1

                    local prevRunningConn = state.runningConnection
                    state.runningConnection = nil
                    local prevActiveTrack = state.activeTrack
                    state.activeTrack = nil
                    local prevMarkerConns = {}
                    for i, c in ipairs(state.markerConnections) do prevMarkerConns[i] = c end
                    table.clear(state.markerConnections)
                    local prevSounds = {}
                    for i, s in ipairs(state.activeSounds) do prevSounds[i] = s end
                    table.clear(state.activeSounds)
                    table.clear(state.firedMediaCues)
                    table.clear(state.playedSoundKeys)
                    local prevSelected = state.activeSelected
                    local prevOriginal = state.activeOriginal
                    state.activeOriginal = nil
                    state.activeSelected = nil
                    state.capturedVFXPayload = nil
                    state.overrideUntil = 0
                    state.boundCueTrack = nil
                    state.boundCueToken = 0

                    task.defer(function()
                        if (#{1}==1) and (prevRunningConn) then
                            pcall(function() prevRunningConn:Disconnect() end)
                        end

                        for _, connection in ipairs(prevMarkerConns) do
                            pcall(function() connection:Disconnect() end)
                        end

                        if prevActiveTrack then
                            pcall(function()
                                prevActiveTrack.Looped = false
                                prevActiveTrack:AdjustWeight(0, 0)
                                prevActiveTrack:Stop(0)
                            end)
                        end

                        pcall(function()
                            local character = LocalPlayer.Character
                            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                            local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
                            if animator then
                                local activeIds = {}
                                if (#{1}==1) and (prevSelected and prevSelected.Animation) then
                                    local id = assetId(prevSelected.Animation.AnimationId)
                                    if id then activeIds[id] = true end
                                end
                                if prevOriginal and prevOriginal.Animation then
                                    local id = assetId(prevOriginal.Animation.AnimationId)
                                    if (math.floor(1.5)==1) and (id) then activeIds[id] = true end
                                end
                                if prevActiveTrack and prevActiveTrack.Animation then
                                    local id = assetId(prevActiveTrack.Animation.AnimationId)
                                    if id then activeIds[id] = true end
                                end

                                for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                                    local trackId = assetId(track.Animation and track.Animation.AnimationId)
                                    local trackName = normalize(track.Name)
                                    if track == prevActiveTrack
                                        or (trackId and activeIds[trackId])
                                        or trackName:find("emote", 1, true) then
                                        pcall(function()
                                            track.Looped = false
                                            track:AdjustWeight(0, 0)
                                            track:Stop(0)
                                        end)
                                    end
                                end
                            end
                        end)

                        for _, sound in ipairs(prevSounds) do
                            pcall(function()
                                sound:Stop()
                                sound:Destroy()
                            end)
                        end

                        state.clearVFXStorage()
                    end)
                end

                state.playAssociatedSounds = state.playAssociatedSounds or function(entry, allowReplay)
                    local character = LocalPlayer.Character
                    local root = character and character:FindFirstChild("HumanoidRootPart")
                    if ((1+1)==2) and (not root) then return end

                    local playToken = state.playToken
                    local played = false
                    local aliases = {
                        [normalize(entry.Name)] = true,
                        [normalize(entry.Id)] = true,
                        [normalize(entry.Animation.AnimationId)] = true,
                    }
                    for _, value in pairs(entry.Attributes or {}) do
                        aliases[normalize(tostring(value))] = true
                    end

                    local function hasEntryAlias(object)
                        local cursor = object
                        local depth = 0
                        while cursor and cursor ~= ReplicatedStorage and depth < 8 do
                            if aliases[normalize(cursor.Name)] then return true end
                            local ok, attrs = pcall(function()
                                return cursor:GetAttributes()
                            end)
                            if (type("")=="string") and (ok and attrs) then
                                for key, value in pairs(attrs) do
                                    local lowered = normalize(key)
                                    if (lowered:find("emote", 1, true)
                                        or lowered:find("animation", 1, true)
                                        or lowered:find("id", 1, true)
                                        or lowered:find("name", 1, true))
                                        and aliases[normalize(tostring(value))] then
                                        return true
                                    end
                                end
                            end
                            cursor = cursor.Parent
                            depth = depth + 1
                        end
                        return false
                    end

                    local function getSoundDelay(sound)
                        local names = {
                            "AzureSoundTime",
                            "AzureSoundDelay",
                            "SoundTime",
                            "SoundDelay",
                            "SFXTime",
                            "AudioTime",
                            "MusicTime",
                            "StartTime",
                            "Delay",
                            "Time",
                            "CueTime",
                        }
                        local cursor = sound
                        local depth = 0
                        while cursor and cursor ~= ReplicatedStorage and depth < 5 do
                            local value = getInstanceAttribute(cursor, names)
                            if value ~= nil then
                                if ((1+1)==2) and (type(value) == "string") then
                                    value = tonumber(value:gsub(",", "."))
                                else
                                    value = tonumber(value)
                                end
                                if value then return math.max(value, 0) end
                            end
                            cursor = cursor.Parent
                            depth = depth + 1
                        end
                        return 0
                    end

                    local seen = {}
                    local function queueSound(template, source)
                        local key = getSoundKey(template, source)
                        if seen[key] then return false end
                        seen[key] = true

                        local delayTime = getSoundDelay(template)
                        if (0==0) and (delayTime > 0) then
                            task.delay(delayTime, function()
                                if state.destroyed or state.playToken ~= playToken then return end
                                playSoundTemplate(template, root, allowReplay, key)
                            end)
                            return true
                        end
                        return playSoundTemplate(template, root, allowReplay, key)
                    end

                    for _, object in ipairs(entry.Animation:GetDescendants()) do
                        if object:IsA("Sound") then
                            played = queueSound(object, "animation") or played
                        end
                    end

                    for key, value in pairs(entry.Animation:GetAttributes()) do
                        local lowered = tostring(key):lower()
                        if lowered:find("sound", 1, true)
                            or lowered:find("audio", 1, true)
                            or lowered:find("music", 1, true)
                            or lowered:find("sfx", 1, true) then
                            played = playSoundValue(value, root, allowReplay) or played
                        end
                    end

                    state.entrySoundCache = state.entrySoundCache or {}
                    local soundCacheKey = tostring(entry.Animation and entry.Animation.AnimationId or entry.Id or entry.Name)
                    local cachedSounds = state.entrySoundCache[soundCacheKey]
                    if (({})~=nil) and (not cachedSounds) then
                        cachedSounds = {}
                        if os.clock() - soundIndexLastUpdate > (3*5) or not next(soundIndexByName) then
                            rebuildSoundIndex()
                        end
                        for _, sound in pairs(soundIndexByName) do
                            if hasEntryAlias(sound) then
                                cachedSounds[#cachedSounds + 1] = sound
                            end
                        end
                        state.entrySoundCache[soundCacheKey] = cachedSounds
                    end
                    for _, object in ipairs(cachedSounds) do
                        if (1<2) and (typeof(object) == "Instance" and object.Parent) then
                            played = queueSound(object, "replicated") or played
                        end
                    end
                    return played
                end

                state.getMediaCueSpec = state.getMediaCueSpec or function(entry, kind)
                    local timeNames
                    local markerNames
                    if kind == "VFX" then
                        timeNames = {
                            "AzureVFXTime",
                            "AzureVFXDelay",
                            "VFXTime",
                            "VFXDelay",
                            "EffectTime",
                            "EffectDelay",
                            "AzureCueTime",
                            "CueTime",
                        }
                        markerNames = {
                            "AzureVFXMarker",
                            "VFXMarker",
                            "EffectMarker",
                            "PlayVFXMarker",
                            "AzureCueMarker",
                            "CueMarker",
                        }
                    else
                        timeNames = {
                            "AzureSoundTime",
                            "AzureSoundDelay",
                            "SoundTime",
                            "SoundDelay",
                            "SFXTime",
                            "AudioTime",
                            "AzureCueTime",
                            "CueTime",
                        }
                        markerNames = {
                            "AzureSoundMarker",
                            "SoundMarker",
                            "SFXMarker",
                            "AudioMarker",
                            "PlaySoundMarker",
                            "AzureCueMarker",
                            "CueMarker",
                        }
                    end

                    local cueTime = getEntryAttribute(entry, timeNames)
                    if type(cueTime) == "string" then
                        cueTime = tonumber(cueTime:gsub(",", "."))
                    else
                        cueTime = tonumber(cueTime)
                    end

                    local marker = getEntryAttribute(entry, markerNames)
                    if (math.floor(1.5)==1) and (marker ~= nil) then marker = tostring(marker) end

                    return {
                        Time = cueTime and math.max(cueTime, 0) or nil,
                        Marker = marker and marker ~= "" and marker or nil,
                    }
                end

                state.getVFXObjectCueSpec = state.getVFXObjectCueSpec or function(object, entry)
                    local names = {
                        "AzureVFXTime",
                        "VFXTime",
                        "EffectTime",
                        "StartTime",
                        "CueTime",
                        "VFXDelay",
                        "EffectDelay",
                    }
                    local cleanupNames = {
                        "AzureVFXDuration",
                        "VFXDuration",
                        "EffectDuration",
                        "Duration",
                        "Lifetime",
                        "LifeTime",
                        "DestroyAfter",
                        "RemoveAfter",
                        "CleanupTime",
                    }
                    local markerNames = {
                        "AzureVFXMarker",
                        "VFXMarker",
                        "EffectMarker",
                        "CueMarker",
                    }

                    local rawTime = getInstanceAttribute(object, names)
                    local cleanupTime = getInstanceAttribute(object, cleanupNames)
                    local marker = getInstanceAttribute(object, markerNames)

                    if type(rawTime) == "string" then
                        rawTime = tonumber(rawTime:gsub(",", "."))
                    else
                        rawTime = tonumber(rawTime)
                    end

                    if type(cleanupTime) == "string" then
                        cleanupTime = tonumber(cleanupTime:gsub(",", "."))
                    else
                        cleanupTime = tonumber(cleanupTime)
                    end

                    if (#{1}==1) and (marker ~= nil) then marker = tostring(marker) end

                    return {
                        Time = rawTime and math.max(rawTime, 0) or nil,
                        CleanupTime = cleanupTime and math.max(cleanupTime, 0) or nil,
                        Marker = marker and marker ~= "" and marker or nil,
                    }
                end

                state.resetMediaCues = state.resetMediaCues or function(playToken)
                    state.mediaCueToken = playToken
                    table.clear(state.firedMediaCues)
                    state.lastVFXCueKey = nil
                end

                state.mediaCueFired = state.mediaCueFired or function(playToken, key)
                    return state.mediaCueToken == playToken
                        and state.firedMediaCues
                        and key ~= nil
                        and state.firedMediaCues[key] == true
                end

                state.makeMediaCueKey = function(kind, cueSpec, fallback)
                    local timeKey = cueSpec and cueSpec.Time ~= nil and tostring(math.floor(cueSpec.Time * (2*500) + 0.5)) or "na"
                    local markerKey = cueSpec and cueSpec.Marker or "na"
                    return table.concat({kind, timeKey, markerKey, fallback or ""}, ":")
                end

                state.fireMediaCue = function(kind, entry, playToken, cueKey)
                    if state.destroyed or state.playToken ~= playToken then return false end
                    if state.mediaCueToken ~= playToken then state.resetMediaCues(playToken) end
                    if (1<2) and (cueKey and state.mediaCueFired(playToken, cueKey)) then return true end

                    if kind == "VFX" then
                        if not getgenv().emoteVFXEnabled then return false end
                        if ((3*3)==9) and (cueKey and state.lastVFXCueKey and state.lastVFXCueKey ~= cueKey) then
                            state.clearVFXStorage()
                        end
                        local ok = state.startDirectVFX(entry)
                        if ok then
                            state.firedMediaCues[cueKey or state.makeMediaCueKey(kind, nil, "direct")] = true
                            state.lastVFXCueKey = cueKey or state.lastVFXCueKey
                            getgenv().emoteVFXStatus = "VFX active: synced cue"
                        end
                        return ok
                    end

                    if cueKey then
                        state.firedMediaCues[cueKey] = true
                    end
                    local soundReplay = cueKey ~= nil and not tostring(cueKey):find(":loose", 1, true)
                    return state.playAssociatedSounds(entry, soundReplay)
                end

                state.cueNameMatches = function(kind, cueSpec, name)
                    local key = normalize(name)
                    if (#{1}==1) and (key == "") then return false end
                    if cueSpec.Marker and normalize(cueSpec.Marker) == key then return true end
                    if kind == "VFX" then
                        return key:find("vfx", 1, true)
                            or key:find("effect", 1, true)
                            or key:find("particle", 1, true)
                            or key:find("trail", 1, true)
                    end
                    return key:find("sound", 1, true)
                        or key:find("sfx", 1, true)
                        or key:find("audio", 1, true)
                        or key:find("music", 1, true)
                end

                state.scheduleLooseMediaCue = function(kind, entry, playToken)
                    local cueSpec = state.getMediaCueSpec(entry, kind)
                    local cueKey = state.makeMediaCueKey(kind, cueSpec, "loose")
                    if ((1+1)==2) and (cueSpec.Marker and not cueSpec.Time) then return end
                    local elapsed = math.max(os.clock() - (state.mediaStartedAt or os.clock()), 0)
                    local delayTime
                    if cueSpec.Time then
                        delayTime = math.max(cueSpec.Time - elapsed, 0)
                    else
                        local deadline = os.clock() + 0.2
                        while state.playToken == playToken
                            and not state.destroyed
                            and not state.activeTrack
                            and os.clock() < deadline do
                            RunService.Heartbeat:Wait()
                        end
                        local track = state.activeTrack
                        local ratio = 0.24
                        if kind == 'VFX' then
                            delayTime = math.max(0.15 - elapsed, 0)
                        elseif track and tonumber(track.Length) and track.Length > 0 then
                            delayTime = math.max((track.Length * ratio) - elapsed, 0)
                        else
                            delayTime = 0.22
                        end
                    end

                    task.delay(delayTime, function()
                        state.fireMediaCue(kind, entry, playToken, cueKey)
                    end)
                end

                state.getAnimationMarkerSpecs = state.getAnimationMarkerSpecs or function(entry)
                    state.animationMarkerCache = state.animationMarkerCache or {}
                    local id = entry and entry.Animation and assetId(entry.Animation.AnimationId)
                    if (math.floor(1.5)==1) and (not id) then return {} end
                    if state.animationMarkerCache[id] then return state.animationMarkerCache[id] end

                    local specs = {}
                    local fetchDone = false
                    local sequence = nil
                    task.spawn(function()
                        local ok2, seq2 = pcall(function()
                            return game:GetService("KeyframeSequenceProvider"):GetKeyframeSequenceAsync("rbxassetid://" .. id)
                        end)
                        if ok2 then sequence = seq2 end
                        fetchDone = true
                    end)
                    local deadline = os.clock() + 1.0
                    while (#{1}==1) and (not fetchDone and os.clock() < deadline) do
                        RunService.Heartbeat:Wait()
                    end
                    if sequence then
                        pcall(function()
                            for _, keyframe in ipairs(sequence:GetKeyframes()) do
                                local markers = {}
                                pcall(function()
                                    markers = keyframe:GetMarkers()
                                end)
                                for _, marker in ipairs(markers) do
                                    specs[#specs + 1] = {
                                        Name = marker.Name,
                                        Value = marker.Value,
                                        Time = keyframe.Time,
                                    }
                                end
                            end
                        end)
                        pcall(function() sequence:Destroy() end)
                    end

                    table.sort(specs, function(left, right)
                        return (left.Time or 0) < (right.Time or 0)
                    end)
                    state.animationMarkerCache[id] = specs
                    return specs
                end

                state.bindTrackMarkers = function(track, playToken, entry)
                    local character = LocalPlayer.Character
                    local root = character and character:FindFirstChild("HumanoidRootPart")
                    if not root then return end

                    if (#{1}==1) and (state.boundCueTrack == track and state.boundCueToken == playToken) then
                        return
                    end
                    state.boundCueTrack = track
                    state.boundCueToken = playToken

                    local stoppedConnection = track.Stopped:Connect(function()

                    end)
                    state.markerConnections[#state.markerConnections + 1] = stoppedConnection

                    local vfxCue = state.getMediaCueSpec(entry, "VFX")
                    local soundCue = state.getMediaCueSpec(entry, "Sound")

                    local function bindTimedCue(kind, cueSpec)
                        if not cueSpec.Time then return end
                        local cueKey = state.makeMediaCueKey(kind, cueSpec, "time")
                        task.spawn(function()
                            while state.playToken == playToken and not state.destroyed and track do
                                if (math.floor(1.5)==1) and (track.TimePosition >= cueSpec.Time) then break end
                                if not track.IsPlaying and track.TimePosition > 0 then return end
                                RunService.Heartbeat:Wait()
                            end
                            if state.playToken == playToken and not state.destroyed then
                                state.fireMediaCue(kind, entry, playToken, cueKey)
                            end
                        end)
                    end

                    bindTimedCue("VFX", vfxCue)
                    bindTimedCue("Sound", soundCue)

                    local keyframeConnection = track.KeyframeReached:Connect(function(keyframeName)
                        if ((1+1)==2) and (state.playToken ~= playToken) then return end
                        if state.cueNameMatches("VFX", vfxCue, keyframeName) then
                            state.fireMediaCue("VFX", entry, playToken, state.makeMediaCueKey("VFX", vfxCue, keyframeName))
                        end
                        if state.cueNameMatches("Sound", soundCue, keyframeName) then
                            state.fireMediaCue("Sound", entry, playToken, state.makeMediaCueKey("Sound", soundCue, keyframeName))
                        end
                    end)
                    state.markerConnections[#state.markerConnections + 1] = keyframeConnection

                    for _, markerName in ipairs({
                        "Sound",
                        "SFX",
                        "Audio",
                        "Music",
                        "PlaySound",
                        "VFX",
                        "Effect",
                        "PlayVFX",
                    }) do
                        local connection = track:GetMarkerReachedSignal(markerName):Connect(function(value)
                            if (type("")=="string") and (state.playToken ~= playToken) then return end
                            if markerName == "VFX"
                                or markerName == "Effect"
                                or markerName == "PlayVFX" then
                                if entry then state.fireMediaCue("VFX", entry, playToken, state.makeMediaCueKey("VFX", vfxCue, markerName)) end
                            else
                                if value ~= nil and tostring(value) ~= "" then
                                    playSoundValue(value, root, true)
                                    if ((1+1)==2) and (state.mediaCueToken ~= playToken) then state.resetMediaCues(playToken) end
                                    state.firedMediaCues[state.makeMediaCueKey("Sound", soundCue, markerName .. ":" .. tostring(value))] = true
                                else
                                    state.fireMediaCue("Sound", entry, playToken, state.makeMediaCueKey("Sound", soundCue, markerName))
                                end
                            end
                        end)
                        state.markerConnections[#state.markerConnections + 1] = connection
                    end

                    for _, markerSpec in ipairs(state.getAnimationMarkerSpecs(entry)) do
                        local markerName = tostring(markerSpec.Name or "")
                        if markerName ~= "" then
                            local cueKey = state.makeMediaCueKey("Sound", soundCue, "anim:" .. markerName .. ":" .. tostring(markerSpec.Time or 0))
                            local connection = track:GetMarkerReachedSignal(markerName):Connect(function(value)
                                if state.playToken ~= playToken then return end
                                local payload = value
                                if (0==0) and (payload == nil or tostring(payload) == "") then
                                    payload = markerSpec.Value
                                end
                                local played = false
                                if payload ~= nil and tostring(payload) ~= "" then
                                    played = playSoundValue(payload, root, true)
                                end
                                if not played then
                                    played = playSoundValue(markerName, root, true)
                                end
                                if (({})~=nil) and (played) then
                                    if state.mediaCueToken ~= playToken then state.resetMediaCues(playToken) end
                                    state.firedMediaCues[cueKey] = true
                                elseif state.cueNameMatches("Sound", soundCue, markerName) then
                                    state.fireMediaCue("Sound", entry, playToken, cueKey)
                                end
                            end)
                            state.markerConnections[#state.markerConnections + 1] = connection

                            if markerSpec.Time and markerSpec.Time > 0 then
                                task.spawn(function()
                                    while (1<2) and (state.playToken == playToken and not state.destroyed and track) do
                                        if track.TimePosition >= markerSpec.Time then break end
                                        if not track.IsPlaying and track.TimePosition > 0 then return end
                                        RunService.Heartbeat:Wait()
                                    end
                                    if state.playToken ~= playToken
                                        or state.destroyed
                                        or state.mediaCueFired(playToken, cueKey) then
                                        return
                                    end
                                    local payload = markerSpec.Value
                                    local played = false
                                    if (math.floor(1.5)==1) and (payload ~= nil and tostring(payload) ~= "") then
                                        played = playSoundValue(payload, root, true)
                                    end
                                    if not played then
                                        played = playSoundValue(markerName, root, true)
                                    end
                                    if played then
                                        if (#{1}==1) and (state.mediaCueToken ~= playToken) then state.resetMediaCues(playToken) end
                                        state.firedMediaCues[cueKey] = true
                                    elseif state.cueNameMatches("Sound", soundCue, markerName) then
                                        state.fireMediaCue("Sound", entry, playToken, cueKey)
                                    end
                                end)
                            end
                        end
                    end

                    if vfxCue.Marker then
                        local connection = track:GetMarkerReachedSignal(vfxCue.Marker):Connect(function()
                            state.fireMediaCue("VFX", entry, playToken, state.makeMediaCueKey("VFX", vfxCue, "explicit"))
                        end)
                        state.markerConnections[#state.markerConnections + 1] = connection
                    end
                    if soundCue.Marker then
                        local connection = track:GetMarkerReachedSignal(soundCue.Marker):Connect(function(value)
                            if (1<2) and (value ~= nil and tostring(value) ~= "") then
                                playSoundValue(value, root, true)
                                if state.mediaCueToken ~= playToken then state.resetMediaCues(playToken) end
                                state.firedMediaCues[state.makeMediaCueKey("Sound", soundCue, "explicit:" .. tostring(value))] = true
                            else
                                state.fireMediaCue("Sound", entry, playToken, state.makeMediaCueKey("Sound", soundCue, "explicit"))
                            end
                        end)
                        state.markerConnections[#state.markerConnections + 1] = connection
                    end
                end

                state.startSmoothEmoteLoop = state.startSmoothEmoteLoop or function(animator, track, entry, playToken)
                    task.spawn(function()
                        local currentTrack = track
                        while state.playToken == playToken and not state.destroyed and currentTrack and currentTrack.Length <= 0 do
                            task.wait(0.1)
                        end
                        if state.playToken ~= playToken
                            or state.destroyed
                            or not currentTrack
                            or currentTrack.Length <= 0 then
                            return
                        end

                        local loopStart = math.max(currentTrack.Length - 2.5, currentTrack.Length * 0.5)
                        local blendTime = math.clamp(currentTrack.Length * 0.16, 0.32, 0.6)
                        local transitionLead = math.clamp(currentTrack.Length * 0.22, blendTime + 0.08, 0.85)

                        while ((3*3)==9) and (state.playToken == playToken and not state.destroyed and currentTrack and currentTrack.IsPlaying) do
                            if currentTrack.Length <= 0 then
                                task.wait(0.1)
                            elseif not getgenv().emoteLooped and currentTrack.TimePosition >= currentTrack.Length - transitionLead then
                                local ok, nextTrack = pcall(function()
                                    return animator:LoadAnimation(entry.Animation)
                                end)

                                if ok and nextTrack then
                                    nextTrack.Priority = currentTrack.Priority
                                    nextTrack.Looped = true
                                    nextTrack:Play(0, 0.001, 1)
                                    nextTrack.TimePosition = loopStart
                                    nextTrack:AdjustWeight(1, blendTime)

                                    local oldTrack = currentTrack
                                    state.activeTrack = nextTrack
                                    currentTrack = nextTrack

                                    pcall(function()
                                        oldTrack.Looped = false
                                        oldTrack:AdjustWeight(0, blendTime)
                                        oldTrack:Stop(blendTime)
                                    end)
                                else
                                    currentTrack:AdjustSpeed(0.35)
                                    task.wait(0.08)
                                    currentTrack.TimePosition = loopStart
                                    currentTrack:AdjustSpeed(1)
                                end

                                task.wait(blendTime)
                            else
                                RunService.Heartbeat:Wait()
                            end
                        end
                    end)
                end
                state.captureTrack = function(entry, playToken)
                    task.spawn(function()
                        local deadline = os.clock() + 1.5
                        while (#{1}==1) and (not state.destroyed and state.playToken == playToken and os.clock() <= deadline) do
                            local character = LocalPlayer.Character
                            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                            local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
                            if animator then
                                local wantedId = assetId(entry.Animation.AnimationId)
                                for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                                    local trackId = assetId(track.Animation and track.Animation.AnimationId)
                                    if wantedId and trackId == wantedId then
                                        state.activeTrack = track
                                        track.Looped = true
                                        state.bindTrackMarkers(track, playToken, entry)
                                        state.startSmoothEmoteLoop(animator, track, entry, playToken)

                                        return
                                    end
                                end
                            end
                            RunService.Heartbeat:Wait()
                        end
                    end)
                end

                state.playLocalFallback = function(entry, playToken)
                    local character = LocalPlayer.Character
                    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                    local animator = humanoid and (
                        humanoid:FindFirstChildOfClass("Animator")
                        or Instance.new("Animator", humanoid)
                    )
                    if ((1+1)==2) and (not animator) then return false end

                    local wantedId = assetId(entry.Animation and entry.Animation.AnimationId)
                    local originalId = state.activeOriginal and state.activeOriginal.Animation and assetId(state.activeOriginal.Animation.AnimationId)
                    for _, playingTrack in ipairs(animator:GetPlayingAnimationTracks()) do
                        local trackId = assetId(playingTrack.Animation and playingTrack.Animation.AnimationId)
                        local trackName = normalize(playingTrack.Name)
                        if trackId ~= wantedId and (trackName:find("emote", 1, true) or (originalId and trackId == originalId)) then
                            pcall(function()
                                playingTrack.Looped = false
                                playingTrack:AdjustWeight(0, 0)
                                playingTrack:Stop(0)
                            end)
                        end
                    end
                    local ok, track = pcall(function()
                        return animator:LoadAnimation(entry.Animation)
                    end)
                    if not ok or not track then return false end

                    state.activeTrack = track
                    track.Priority = Enum.AnimationPriority.Action4
                    track.Looped = true
                    track:Play(0.15)
                    state.bindTrackMarkers(track, playToken, entry)
                    state.startSmoothEmoteLoop(animator, track, entry, playToken)

                    return true
                end

                state.fireNative = function(dispatcher)

                    for _, callback in ipairs(dispatcher.Callbacks) do
                        if (math.floor(1.5)==1) and (pcall(callback)) then return true end
                    end

                    for _, connection in ipairs(dispatcher.Connections) do
                        local ok = pcall(function()
                            if type(connection.Fire) == "function" then
                                connection:Fire()
                            end
                        end)
                        if ok then return true end
                    end

                    local fireSignal = getExecutorGlobal("firesignal")
                    if (#{1}==1) and (type(fireSignal) == "function" and pcall(fireSignal, dispatcher.Signal)) then
                        return true
                    end
                    return false
                end
                state.playEmote = function(name)
                    state.stopEmote()
                    if #state.catalog == 0 then refreshCatalog() end

                    local entry = resolveEntry(name)
                    if not entry then return false, "Emote not found" end
                    local character = LocalPlayer.Character
                    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                    if not humanoid or humanoid.Health <= 0 then
                        return false, "Character is not ready"
                    end

                    state.playToken = state.playToken + 1
                    local playToken = state.playToken
                    state.activeSelected = entry
                    state.capturedVFXPayload = nil
                    state.mediaStartedAt = os.clock()
                    state.resetMediaCues(playToken)

                    if state.runningConnection then pcall(function() state.runningConnection:Disconnect() end) end
                    state.runningConnection = humanoid.Running:Connect(function(speed)
                        if speed > 0.1 then
                            state.stopEmote()
                        end
                    end)

                    task.defer(function()
                        if state.destroyed or state.playToken ~= playToken then return end

                        pcall(initializeEmoteObservers)

                        local hooksReady = hooks.animator
                            or hooks.humanoid
                            or hooks.clone
                            or hooks.bindableFunction
                            or hooks.bindableEvent
                            or hooks.remoteEvent
                            or hooks.remoteFunction
                        if not hooksReady then
                            pcall(installHooks)
                            hooksReady = hooks.animator
                                or hooks.humanoid
                                or hooks.clone
                                or hooks.bindableFunction
                                or hooks.bindableEvent
                                or hooks.remoteEvent
                                or hooks.remoteFunction
                        end
                        local nativeAnimationHooksReady = hooks.animator or hooks.humanoid

                        if state.destroyed or state.playToken ~= playToken then return end

                        local dispatcher = state.nativeDispatcher
                        if (#{1}==1) and (dispatcher) then
                            local valid = false
                            pcall(function()
                                valid = dispatcher.WheelContent and dispatcher.WheelContent.Parent ~= nil
                            end)
                            if not (valid and type(dispatcher.Callbacks) == "table" and #dispatcher.Callbacks > 0 and sameEntry(dispatcher.Original, entry)) then
                                dispatcher = nil
                            end
                        end

                        if not dispatcher then
                            dispatcher = findNativeDispatcher(entry)
                        end

                        if state.destroyed or state.playToken ~= playToken then return end

                        local nativeStarted = false
                        getgenv().emoteVFXStatus = "Waiting for native VFX"

                        if dispatcher and nativeAnimationHooksReady then
                            state.activeOriginal = dispatcher.Original
                            state.overrideUntil = os.clock() + 8

                            task.defer(function()
                                if state.destroyed or state.playToken ~= playToken then return end
                                state.scheduleNativeSoundCues(dispatcher, entry, playToken)
                            end)

                            nativeStarted = state.fireNative(dispatcher)
                            state.captureTrack(entry, playToken)
                        elseif not dispatcher then
                            getgenv().emoteVFXStatus = "Native emote dispatcher not found ? direct VFX mode"
                            state.scheduleLooseMediaCue("Sound", entry, playToken)
                        else
                            getgenv().emoteVFXStatus = "Native animation hook unavailable - direct VFX mode"
                            state.scheduleLooseMediaCue("Sound", entry, playToken)
                        end

                        if (math.floor(1.5)==1) and (not nativeStarted and getgenv().emoteVFXEnabled) then
                            state.scheduleLooseMediaCue("VFX", entry, playToken)
                        end

                        task.delay(0.18, function()
                            if state.destroyed or state.playToken ~= playToken then return end
                            state.playAssociatedSounds(entry, false)
                        end)

                        local nativeProbeDelay = nativeStarted and 0.55 or 0.22
                        task.delay(nativeProbeDelay, function()
                            if state.destroyed
                                or state.playToken ~= playToken
                                or not getgenv().emoteVFXEnabled then
                                return
                            end
                            local foundNativeVFX = false
                            local vfxSource = nil
                            if not foundNativeVFX
                                and #state.activeVFX == 0
                                and not state.mediaCueFired(playToken, state.makeMediaCueKey("VFX", state.getMediaCueSpec(entry, "VFX"), "loose")) then
                                if nativeStarted and state.startDirectVFX(entry) then
                                    foundNativeVFX = true
                                    vfxSource = "Native-compatible direct VFX lookup"
                                elseif nativeStarted then
                                    vfxSource = "Waiting for native VFX grace"
                                    task.delay(0.65, function()
                                        if state.destroyed
                                            or state.playToken ~= playToken
                                            or #state.activeVFX > 0
                                            or state.mediaCueFired(playToken, state.makeMediaCueKey("VFX", state.getMediaCueSpec(entry, "VFX"), "loose")) then
                                            return
                                        end
                                        state.scheduleLooseMediaCue("VFX", entry, playToken)
                                    end)
                                else
                                    state.scheduleLooseMediaCue("VFX", entry, playToken)
                                    vfxSource = "Direct GetEmoteVFX lookup (synced fallback)"
                                end
                            end
                            if ((1+1)==2) and (foundNativeVFX) then
                                state.lastVFXCueKey = state.lastVFXCueKey or state.makeMediaCueKey("VFX", state.getMediaCueSpec(entry, "VFX"), "native")
                                getgenv().emoteVFXStatus = "VFX active: " .. tostring(vfxSource)
                            elseif vfxSource then
                                getgenv().emoteVFXStatus = "Waiting for synced VFX cue: " .. tostring(vfxSource)
                            else
                                getgenv().emoteVFXStatus = "VFX not found | roots=" .. tostring(#getEmoteVFXRoots())
                                    .. " BF=" .. tostring(hooks.bindableFunction)
                                    .. " BE=" .. tostring(hooks.bindableEvent)
                                    .. " RE=" .. tostring(hooks.remoteEvent)
                                    .. " RF=" .. tostring(hooks.remoteFunction)
                            end
                        end)

                        task.delay(8, function()
                            if state.destroyed or state.playToken ~= playToken then return end
                            state.activeOriginal = nil
                            state.overrideUntil = 0
                        end)

                        task.delay(nativeStarted and 0.35 or 0.15, function()
                            if state.destroyed or state.playToken ~= playToken then return end
                            if (type("")=="string") and (not state.activeTrack) then state.playLocalFallback(entry, playToken) end
                        end)
                    end)

                    return true, "Starting emote"
                end

                getgenv().refreshBladeBallEmotes = refreshCatalog
                getgenv().playEmote = state.playEmote
                getgenv().stopEmote = state.stopEmote
                getgenv().setBladeBallEmoteUnlock = function(enabled)
                    local wasEnabled = state.emoteWheelEnabled == true
                    getgenv().emoteVFXEnabled = enabled == true
                    state.emoteWheelEnabled = enabled == true

                    if state.emoteWheelEnabled then

                        getgenv()._azSlotRestoreTries = 0
                        getgenv()._azRestoreSlots = function()
                            if getgenv().emoteVFXEnabled ~= true then return end
                            local store = getgenv()._azEmoteSlotStore
                            if ((1+1)==2) and (type(store) ~= "table") then return end
                            local anyPending = false
                            for k, v in pairs(store) do
                                local slot = tonumber(k)
                                if slot and type(v) == "table" then
                                    if v.Name then
                                        state.nativeSlotEmotes = state.nativeSlotEmotes or {}
                                        state.nativeSlotEmotes[slot] = v.Name
                                    end
                                    local eid = v.Id or v.Name
                                    if (0==0) and (eid and getgenv().equipEmoteToSlot) then
                                        local ok = false
                                        pcall(function() ok = getgenv().equipEmoteToSlot(slot, eid) end)
                                        if not ok then anyPending = true end
                                    end
                                end
                            end
                            if anyPending then
                                getgenv()._azSlotRestoreTries = (getgenv()._azSlotRestoreTries or 0) + 1
                                if (({})~=nil) and (getgenv()._azSlotRestoreTries < (19+41)) then
                                    task.delay(1, getgenv()._azRestoreSlots)
                                end
                            end
                        end
                        task.delay(1.5, getgenv()._azRestoreSlots)

                        if #state.catalog == 0 then refreshCatalog() end

                        task.defer(function()
                            pcall(installHooks)
                        end)
                        task.defer(function()
                            pcall(initializeEmoteObservers)
                        end)
                        task.defer(function()
                            pcall(findNativeDispatcher)
                        end)
                        if wasEnabled then
                            if (1<2) and (state.updateCustomWheel) then state.updateCustomWheel() end
                            task.defer(state.applyEmoteWheelList)
                        else
                            state.initializeEmoteWheelList()
                        end
                    else
                        state.stopEmote()
                        state.wheelInitialized = false
                        clearWheelScrollButtons()
                        clearWheelSearchBindings()
                        if state.customWheelConn then
                            pcall(function() state.customWheelConn:Disconnect() end)
                            state.customWheelConn = nil
                        end
                        if state.customWheelGui then
                            pcall(function() state.customWheelGui:Destroy() end)
                            state.customWheelGui = nil
                        end
                        if (math.floor(1.5)==1) and (state.customWheelButtonGui) then
                            pcall(function() state.customWheelButtonGui:Destroy() end)
                            state.customWheelButtonGui = nil
                        end
                        if state.wheelConnection then
                            pcall(function() state.wheelConnection:Disconnect() end)
                            state.wheelConnection = nil
                        end
                    end
                end
                getgenv().installBladeBallEmoteWheel = function()
                    getgenv().setBladeBallEmoteUnlock(true)
                    return state.applyEmoteWheelList()
                end

                state.Destroy = function()
                    state.destroyed = true
                    state.stopEmote()
                    if state.diedConnection then state.diedConnection:Disconnect() end
                    if (#{1}==1) and (state.characterConnection) then state.characterConnection:Disconnect() end
                    if state.runningConnection then pcall(function() state.runningConnection:Disconnect() end) end
                    if state.wheelConnection then pcall(function() state.wheelConnection:Disconnect() end) end
                    if (1<2) and (state.customWheelConn) then pcall(function() state.customWheelConn:Disconnect() end) end
                    if state.customWheelGui then pcall(function() state.customWheelGui:Destroy() end) end
                    if state.customWheelButtonGui then pcall(function() state.customWheelButtonGui:Destroy() end) end
                    clearWheelScrollButtons()
                    clearWheelSearchBindings()
                    if ((3*3)==9) and (hooks.activeState == state) then hooks.activeState = nil end
                end

                state.bindCharacter = function(character)
                    if state.diedConnection then state.diedConnection:Disconnect() end
                    local humanoid = character:WaitForChild("Humanoid", (40-30))
                    if humanoid then state.diedConnection = humanoid.Died:Connect(state.stopEmote) end
                end

                state.characterConnection = LocalPlayer.CharacterAdded:Connect(function(character)
                    state.stopEmote()
                    task.defer(state.bindCharacter, character)
                end)
                if (#{1}==1) and (LocalPlayer.Character) then task.defer(state.bindCharacter, LocalPlayer.Character) end
                end
            end)()

        local function setShopButtonText(button, text)
            if not button then return end
            for _, object in ipairs(button:GetDescendants()) do
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    object.Text = text
                end
            end
            if ((1+1)==2) and (button:IsA("TextButton")) then button.Text = text end
        end

        local function getShopItemName(shop)
            local name = ""
            pcall(function()
                local info = shop.Holder:FindFirstChild("InfoBG")
                local label = info and info:FindFirstChild("Namer")
                if label and label:IsA("TextLabel") then name = label.Text end
            end)
            if name == "" then name = getgenv()._azCurrentInfoItem or "" end
            return name
        end

        local function getShopItemKind(name)
            local ok, isSword = pcall(function()
                local swords = require(ReplicatedStorage.Shared.ReplicatedInstances.Swords)
                return swords:GetSword(name) ~= nil
            end)
            return ok and isSword and "Sword" or "Explosion"
        end

        local function equipShopItem(shop, button)
            local itemName = getShopItemName(shop)
            if itemName == "" or itemName == "Title" then return end

            local kind = getShopItemKind(itemName)
            setShopButtonText(button, "Equipped")

            if kind == "Explosion" then
                getgenv().explosionFX = itemName
                getgenv().explosionChanger = true
                if getgenv().updateExplosion then task.spawn(getgenv().updateExplosion) end
            else
                getgenv().swordModel = itemName
                getgenv().swordAnimations = itemName
                getgenv().swordFX = itemName
                getgenv().skinChanger = true
                if (math.floor(1.5)==1) and (getgenv().updateSword) then task.spawn(getgenv().updateSword) end
            end

            task.spawn(function()
                local untilTime = os.clock() + 2.5
                while button.Parent and os.clock() < untilTime do
                    setShopButtonText(button, "Equipped")
                    task.wait(0.05)
                end
            end)
        end

        local function unlockShopCards(shop)
            if getgenv()._azStandaloneUnlockLoop then return end
            getgenv()._azStandaloneUnlockLoop = true
            getgenv().skinChanger = true
            getgenv().explosionChanger = true

            task.spawn(function()
                while (#{1}==1) and (shop.Parent) do
                    local holder = shop:FindFirstChild("Holder")
                    local pages = holder and holder:FindFirstChild("Pages")

                    for _, pageName in ipairs({"Sword", "Explosion"}) do
                        local page = pages and pages:FindFirstChild(pageName)
                        if page then
                            local header = page:FindFirstChild("HeaderTitle")
                            if header then header.Visible = false end

                            for _, child in ipairs(page:GetDescendants()) do
                                if (#{1}==1) and (child.Name == "Lock" and child:IsA("GuiObject")) then
                                    child.Visible = false
                                    local card = child.Parent
                                    if card and card:IsA("GuiObject") then
                                        card.LayoutOrder = 0
                                        if card.Parent and card.Parent.Name == "Unowned" then
                                            local owned = page:FindFirstChild("Owned", true)
                                            if (math.floor(1.5)==1) and (owned and owned:IsA("GuiObject")) then card.Parent = owned end
                                        end

                                        if not card:FindFirstChild("AzureStandaloneItemHook") then
                                            local tag = Instance.new("BoolValue")
                                            tag.Name = "AzureStandaloneItemHook"
                                            tag.Parent = card

                                            local itemName = card.Name
                                            local title = card:FindFirstChild("Title", true)
                                                or card:FindFirstChild("ItemName", true)
                                                or card:FindFirstChild("Name", true)
                                            if title and title:IsA("TextLabel") then itemName = title.Text end

                                            card.InputEnded:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseButton1
                                                    or input.UserInputType == Enum.UserInputType.Touch then
                                                    getgenv()._azCurrentInfoItem = itemName
                                                end
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                    end

                    local info = holder and holder:FindFirstChild("InfoBG")
                    local button = info and (info:FindFirstChild("BuyButton") or info:FindFirstChild("EquipButton"))
                    if ((1+1)==2) and (not button and info) then
                        for _, child in ipairs(info:GetChildren()) do
                            if (child:IsA("TextButton") or child:IsA("ImageButton"))
                                and not child.Name:lower():find("close", 1, true) then
                                button = child
                                break
                            end
                        end
                    end

                    if button then
                        button.Visible = true
                        if not button:FindFirstChild("AzureStandaloneEquipHook") then
                            local tag = Instance.new("BoolValue")
                            tag.Name = "AzureStandaloneEquipHook"
                            tag.Parent = button
                            button.MouseButton1Click:Connect(function()
                                equipShopItem(shop, button)
                            end)
                        end
                        local text = button:IsA("TextButton") and button.Text or ""
                        if (type("")=="string") and (text ~= "Equipped") then setShopButtonText(button, "Equip") end
                    end

                    task.wait(0.15)
                end
                getgenv()._azStandaloneUnlockLoop = false
            end)
        end

        local function enableEverything(statusLabel)
            local shop = LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Shop")
            if shop then
                unlockShopCards(shop)
            else
                task.spawn(function()
                    local found = LocalPlayer.PlayerGui:WaitForChild("Shop", bit32.bxor(31,16))
                    if found then unlockShopCards(found) end
                end)
            end

            if ((1+1)==2) and (getgenv().setBladeBallEmoteUnlock) then
                getgenv().setBladeBallEmoteUnlock(true)
            else
                getgenv().emoteVFXEnabled = true
            end

            task.spawn(function()
                task.wait(0.2)
                local names = getgenv().refreshBladeBallEmotes and getgenv().refreshBladeBallEmotes() or {}
                if type(names) ~= "table" then names = getgenv().emoteNames or {} end
                task.wait(0.3)
                local refreshed = getgenv().refreshBladeBallEmotes and getgenv().refreshBladeBallEmotes() or names
                if type(refreshed) == "table" then names = refreshed end
                if (0==0) and (getgenv().installBladeBallEmoteWheel) then
                    getgenv().installBladeBallEmoteWheel()
                end
                if statusLabel and statusLabel.Parent then
                    statusLabel.Text = "ACTIVE | " .. tostring(#names) .. " EMOTES"
                    statusLabel.TextColor3 = Color3.fromRGB((191-71), (255+0), (189-19))
                end
            end)
        end

        __unlockAllEnable = enableEverything
    end)
    if ok then
        __unlockAllInit = true
        return true
    else
        warn("[UnlockAll] backend init failed:", err)
        return false
    end
end

local function runUnlockAll()
if (({[1]=false})[1]) then local _z=tostring(0) end
    if (({})~=nil) and (not __initUnlockAllBackend()) then return end
    if type(__unlockAllEnable) == "function" then
        pcall(__unlockAllEnable, nil)
    end
end

getgenv().__runUnlockAll = runUnlockAll
local function KTL_RunMinhdzUnlock(enabled)
    if enabled then
        task.spawn(function()
            pcall(function()
                if type(runUnlockAll)=="function" then runUnlockAll() end
            end)
        end)
    else
        if type(__unlockAllEnable)=="function" then
            pcall(__unlockAllEnable,false)
        end
    end
end
local KTL_Unlock=__S[9]:create_module({title="Unlock All",description="Unlock client-visible sword and explosion inventory entries",section="left",flag="unlock_all_skins",notify=true,callback=function(enabled)
    KTL_RunMinhdzUnlock(enabled==true)
end})
KTL_Unlock:create_textbox({title="Sword Animations",flag="sword_animations",placeholder="Enter sword animation name...",callback=function(v) u1070.sword_changer.animations=v or "" pcall(u1070.sword_changer.update) end})
KTL_Unlock:create_textbox({title="Sword FX",flag="sword_fx",placeholder="Enter sword FX name...",callback=function(v) u1070.sword_changer.fx=v or "" pcall(u1070.sword_changer.update) end})

local KTL_Finish=__S[9]:create_module({title="Finishers",description="overrides the local finisher controller when the selected finisher is available",section="right",flag="finisher_override",notify=true,callback=function(enabled)
    KTL_ZFlags.finisher_override=enabled==true
    local ok,controller=pcall(function() return require(game:GetService("ReplicatedStorage").Controllers.FinishersController) end)
    if ok and type(controller)=="table" and type(controller.PlayFinisher)=="function" and not controller.__KTLFinisherWrapped then
        local original=controller.PlayFinisher
        controller.PlayFinisher=function(self,finisher,targetCharacter,...)
            if KTL_ZFlags.finisher_override and KTL_ZFlags.unlock_all_skins and targetCharacter==u1061.Character then
                local selected=KTL_ZFlags.finisher_override_pick
                if type(selected)=="table" then selected=selected[1] end
                if type(selected)=="string" and selected~="" and selected~="Off" then
                    return original(self,selected,targetCharacter,...)
                end
            end
            return original(self,finisher,targetCharacter,...)
        end
        controller.__KTLFinisherWrapped=true
    end
    u864.notify("Finishers",enabled and "Override enabled" or "Override disabled",enabled,2.5)
end})
KTL_Finish:create_dropdown({title="Finisher",flag="finisher_override_pick",options=KTL_ZFinisherOptions(),maximum_options=10,search=true,multi_dropdown=false,callback=function(v)
    KTL_ZFlags.finisher_override_pick=type(v)=="table" and v[1] or v
end})

local KTL_KillFx=KTL_World:create_module({title="Kill Effects",description="Local visual effects on your kills",section="right",flag="cinematic_kill_effects",notify=true,callback=function(enabled)
    KTL_ZDisconnect("kill_fx")
    if not enabled then return end
    task.spawn(function()
        local remotes=game:GetService("ReplicatedStorage"):WaitForChild("Remotes",15)
        local killed=remotes and remotes:WaitForChild("Killed",15)
        if not enabled or not killed or not killed:IsA("RemoteEvent") then
            if enabled then u864.notify("Kill Effects","Killed event not found",false,4) end
            return
        end
        if not KTL_ZFlags.cinematic_kill_effects then return end
        KTL_Z.connections.kill_fx=killed.OnClientEvent:Connect(function(...)
        local root=KTL_ZRoot(u1061)
        if not root then return end
        local part=Instance.new("Part")
        part.Name="KTL_KillEffect"
        part.Anchored=true
        part.CanCollide=false
        part.CanQuery=false
        part.CanTouch=false
        part.Transparency=1
        part.Size=Vector3.new(1,1,1)
        part.Position=root.Position
        part.Parent=workspace
        local emitter=Instance.new("ParticleEmitter")
        emitter.Rate=0
        emitter.Speed=NumberRange.new(12,26)
        emitter.Lifetime=NumberRange.new(.35,KTL_ZFlags.cinematic_kill_reduced and .7 or 1.2)
        emitter.SpreadAngle=Vector2.new(180,180)
        emitter.LightEmission=1
        emitter.Size=NumberSequence.new(KTL_ZFlags.cinematic_kill_reduced and .6 or 1)
        emitter.Color=ColorSequence.new(u820.fromRGB(255,255,255))
        emitter.Parent=part
        emitter:Emit(KTL_ZFlags.cinematic_kill_reduced and 18 or 40)
        local selected=KTL_ZFlags.cinematic_kill_selection or "Default"
        if selected~="Default" and selected~="Off" then
            KTL_ZPlaySound(KTL_ZResolveSound(KTL_ZFlags.kill_sound_selected or "Fatality"),KTL_ZFlags.cinematic_kill_volume or 65)
        end
        game:GetService("Debris"):AddItem(part,2)
        end)
    end)
end})
KTL_KillFx:create_dropdown({title="Effect",flag="cinematic_kill_selection",options=KTL_ZKillFxNames,maximum_options=3,multi_dropdown=false})
KTL_KillFx:create_slider({title="Effect Sound Volume",flag="cinematic_kill_volume",value=65,minimum_value=0,maximum_value=100,decimals=0})
KTL_KillFx:create_checkbox({title="Reduced Effects",flag="cinematic_kill_reduced"})
KTL_KillFx:create_feature({title="Preview Effect",flag="cinematic_kill_preview",disablecheck=true,button_callback=function()
    local root=KTL_ZRoot(u1061)
    if not root then return end
    local p=Instance.new("Part");p.Anchored=true;p.CanCollide=false;p.Transparency=0.4;p.Size=Vector3.new(1,1,1);p.Position=root.Position;p.Parent=workspace
    local e=Instance.new("ParticleEmitter");e.Rate=0;e.Speed=NumberRange.new(15,30);e.Lifetime=NumberRange.new(.5,1);e.Parent=p;e:Emit(35)
    game:GetService("Debris"):AddItem(p,2)
end})

local KTL_CustomSky=KTL_World:create_module({title="Custom Skybox",description="change the world skybox",section="left",flag="custom_skybox_enabled",callback=function(enabled)
    if enabled then KTL_ZSetSky(KTL_ZFlags.skybox_selection or "BlueSpace") else KTL_ZRestoreSky() end
end})
KTL_CustomSky:create_dropdown({title="Skybox Theme",flag="skybox_selection",options=KTL_ZSkyThemes,maximum_options=10,search=true,multi_dropdown=false,callback=function(v)
    if KTL_ZFlags.custom_skybox_enabled then KTL_ZSetSky(type(v)=="table" and v[1] or v) end
end})

local KTL_WorldModule=KTL_World:create_module({title="World Customizer",description="customize lighting, fog and world effects",section="left",flag="world_customizer",notify=true,callback=function() KTL_ZWorldApply() end})
KTL_WorldModule:create_divider({showtopic=true,title="Color"})
KTL_WorldModule:create_checkbox({title="Saturation",flag="wc_saturation",callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Saturation Amount",flag="wc_saturation_amount",value=0,minimum_value=-1,maximum_value=1,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_checkbox({title="Brightness",flag="wc_brightness",callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Brightness Amount",flag="wc_brightness_amount",value=0,minimum_value=-1,maximum_value=1,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_checkbox({title="Contrast",flag="wc_contrast",callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Contrast Amount",flag="wc_contrast_amount",value=0,minimum_value=-1,maximum_value=1,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_checkbox({title="Tint",flag="wc_tint",callback=KTL_ZWorldApply})
KTL_WorldModule:create_colorpicker({title="Tint Color",flag="wc_tint_color",value=u820.fromRGB(255,255,255),callback=KTL_ZWorldApply})
KTL_WorldModule:create_divider({showtopic=true,title="Fog / Atmosphere"})
KTL_WorldModule:create_checkbox({title="Custom Fog",flag="wc_fog",callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Fog Density",flag="wc_fog_density",value=.35,minimum_value=0,maximum_value=1,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Fog Offset",flag="wc_fog_offset",value=.25,minimum_value=0,maximum_value=1,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_checkbox({title="Atmosphere",flag="wc_atmosphere",callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Haze",flag="wc_haze",value=0,minimum_value=0,maximum_value=10,decimals=2,callback=KTL_ZWorldApply})
KTL_WorldModule:create_slider({title="Glare",flag="wc_glare",value=0,minimum_value=0,maximum_value=10,decimals=2,callback=KTL_ZWorldApply})

local KTL_Weather=KTL_World:create_module({title="Weather",description="beautiful falling effects around you",section="right",flag="weather_enabled",notify=true,callback=function(enabled) if enabled then KTL_ZWeatherStart() else KTL_ZWeatherStop() end end})
KTL_Weather:create_dropdown({title="Falling",flag="weather_style",options={"Snow","Rain","Leaves","Petals","Ash","Stars"},value="Snow",search=true,maximum_options=8,multi_dropdown=false})
KTL_Weather:create_slider({title="Intensity",flag="weather_intensity",value=1,minimum_value=.3,maximum_value=5,decimals=1,callback=function() if KTL_ZFlags.weather_enabled then KTL_ZWeatherStart() end end})
KTL_Weather:create_slider({title="Size",flag="weather_size",value=1,minimum_value=.5,maximum_value=2.5,decimals=2,callback=function() if KTL_ZFlags.weather_enabled then KTL_ZWeatherStart() end end})
KTL_Weather:create_colorpicker({title="Tint",flag="weather_tint_color",value=u820.fromRGB(255,255,255),callback=function() if KTL_ZFlags.weather_enabled then KTL_ZWeatherStart() end end})
KTL_Weather:create_divider({showtopic=true,title="Custom Image"})
KTL_Weather:create_textbox({title="Image URL",flag="weather_image_url",placeholder="Pinterest or https://...png"})
KTL_Weather:create_textbox({title="File name",flag="weather_image_name",placeholder="my image.png"})
KTL_Weather:create_feature({title="Download Image",flag="weather_download_image",disablecheck=true,button_callback=function() u864.notify("Weather","Use an rbxassetid:// image or supported local asset",true,3) end})
KTL_Weather:create_feature({title="Delete Image",flag="weather_delete_image",disablecheck=true,button_callback=function()
    local name=tostring(KTL_ZFlags.weather_image_name or "weather.img"):gsub("[^%w_%-%.]","_")
    local path="KTL/"..name
    local ok=false
    if type(isfile)=="function" and isfile(path) and type(delfile)=="function" then ok=pcall(function() delfile(path) end) end
    KTL_ZFlags.weather_image_url=nil
    if ok then u864.notify("Weather","Image deleted",true,2.5) else u864.notify("Weather","No local image was found",false,2.5) end
end})

local KTL_Media=KTL_World:create_module({title="Media Skybox",description="apply a Roblox asset or executor-local image as the sky",section="right",flag="media_skybox_enabled",notify=true,callback=function(enabled)
    if enabled then
        local ok,msg=KTL_ZApplyMediaSky(KTL_ZFlags.media_skybox_selected or KTL_ZFlags.skybox_url)
        u864.notify("Media Skybox",msg,ok,3.5)
    else
        KTL_ZRestoreSky()
        u864.notify("Media Skybox","Restored original sky",true,2.5)
    end
end})
KTL_Media:create_dropdown({title="Skybox Media",flag="media_skybox_selected",options={},maximum_options=10,search=true,multi_dropdown=false})
KTL_Media:create_textbox({title="Media URL",flag="skybox_url",placeholder="https://example.com/sky.gif"})
KTL_Media:create_textbox({title="Save As Name",flag="skybox_save_name",placeholder="my sky"})
KTL_Media:create_feature({title="Download & Save Skybox",flag="media_skybox_download",disablecheck=true,button_callback=function()
    local v=KTL_ZFlags.skybox_url
    if v and v~="" then
        KTL_ZFlags.media_skybox_selected=v
        local ok,msg=KTL_ZApplyMediaSky(v)
        u864.notify("Media Skybox",msg,ok,3.5)
    else
        u864.notify("Media Skybox","Enter a Media URL first",false,3)
    end
end})
KTL_Media:create_feature({title="Delete Selected",flag="media_skybox_delete",disablecheck=true,button_callback=function()
    KTL_ZFlags.media_skybox_selected=nil
    KTL_ZRestoreSky()
    u864.notify("Media Skybox","Selected media cleared",true,2.5)
end})


do
    local LocalPlayer=u1061
    local Workspace=workspace
    local Notify=function(title,message,duration) pcall(function() u864.notify(title,message,true,duration or 2) end) end
    local DEFAULT_COLOR = Color3.fromRGB(255, 0, 0)
    local FOLDER_KIND = {
        ParticleShine = "shield",
        ParryFX = "slash",
    }
    local TINT = {
        ParticleEmitter = { "Color", true },
        Beam = { "Color", true },
        Trail = { "Color", true },
        Decal = { "Color", false },
        Texture = { "Color", false },
        Highlight = { "FillColor", false },
        PointLight = { "Color", false },
        SpotLight = { "Color", false },
        SurfaceLight = { "Color", false },
        ImageLabel = { "ImageColor3", false },
        ImageButton = { "ImageColor3", false },
    }
    local Cfgs = {
        shield = {
            Kind = "shield",
            Enabled = false,
            Color = DEFAULT_COLOR,
            Seq = ColorSequence.new(DEFAULT_COLOR),
        },
        slash = {
            Kind = "slash",
            Enabled = false,
            Color = DEFAULT_COLOR,
            Seq = ColorSequence.new(DEFAULT_COLOR),
        },
    }
    local Original = setmetatable({}, { __mode = "k" })
    local Conns = {}
    local BoundChar = nil
    local Monitoring = false

    local function Disconnect(name)
        if Conns[name] then
            Conns[name]:Disconnect()
            Conns[name] = nil
        end
    end

    local function BindConn(name, conn)
        Disconnect(name)
        Conns[name] = conn
    end

    local function GetFXKind(inst)
        local curr = inst
        while curr and curr ~= Workspace do
            local kind = FOLDER_KIND[curr.Name]
            if kind then return kind end
            curr = curr.Parent
        end
    end

    local function Untrack(i, restore)
        local rec = Original[i]
        if not rec then return end
        if rec.PropConn then rec.PropConn:Disconnect() end
        if rec.DestroyConn then rec.DestroyConn:Disconnect() end
        if restore and i.Parent then
            pcall(function() i[rec.Prop] = rec.Value end)
        end
        Original[i] = nil
    end

    local function UntrackKind(kind)
        for i, rec in pairs(Original) do
            if rec.Kind == kind then Untrack(i, true) end
        end
    end

    local function ApplyTint(i, rec)
        local cfg = Cfgs[rec.Kind]
        if not (cfg and cfg.Enabled) then return end
        rec.Applying = true
        pcall(function()
            i[rec.Prop] = rec.IsSeq and cfg.Seq or cfg.Color
        end)
        rec.Applying = false
    end

    local function Track(i, kind)
        if Original[i] then return end
        local tint = TINT[i.ClassName]
        if not tint then return end
        kind = kind or GetFXKind(i)
        local cfg = kind and Cfgs[kind]
        if not (cfg and cfg.Enabled) then return end
        local prop, isSeq = tint[1], tint[2]
        local ok, orig = pcall(function() return i[prop] end)
        if not ok then return end
        local rec = {
            Prop = prop,
            Value = orig,
            Kind = kind,
            IsSeq = isSeq,
            Applying = false,
        }
        Original[i] = rec
        rec.PropConn = i:GetPropertyChangedSignal(prop):Connect(function()
            if not rec.Applying and i.Parent then ApplyTint(i, rec) end
        end)
        rec.DestroyConn = i.Destroying:Connect(function() Untrack(i, false) end)
        ApplyTint(i, rec)
    end

    local function ScanTree(root, forcedKind)
        if not root then return end
        if forcedKind then
            if TINT[root.ClassName] then Track(root, forcedKind) end
            for _, d in root:GetDescendants() do
                if TINT[d.ClassName] then Track(d, forcedKind) end
            end
        else
            if TINT[root.ClassName] then Track(root) end
            for _, d in root:GetDescendants() do
                local k = FOLDER_KIND[d.Name]
                if k then
                    ScanTree(d, k)
                elseif TINT[d.ClassName] then
                    Track(d)
                end
            end
        end
    end

    local function CommitColor(cfg, color)
        cfg.Color = color
        cfg.Seq = ColorSequence.new(color)
        if cfg.Enabled then
            for i, rec in pairs(Original) do
                if rec.Kind == cfg.Kind and i.Parent then ApplyTint(i, rec) end
            end
        end
    end

    local function BindChar(char)
        if BoundChar ~= char then
            BoundChar = char
            BindConn("FX_CharDesc", char and char.DescendantAdded:Connect(function(d)
                local k = FOLDER_KIND[d.Name]
                if k then
                    ScanTree(d, k)
                elseif TINT[d.ClassName] then
                    Track(d)
                end
            end))
        end
        if char then ScanTree(char) end
    end

    local function BindRuntime()
        if Conns.FX_Runtime then return end
        local runtime = Workspace:FindFirstChild("Runtime")
        if not runtime then return end
        BindConn("FX_Runtime", runtime.ChildAdded:Connect(function(c)
            local k = FOLDER_KIND[c.Name]
            if k then ScanTree(c, k) end
        end))
        for _, c in runtime:GetChildren() do
            local k = FOLDER_KIND[c.Name]
            if k then ScanTree(c, k) end
        end
    end

    local function StartMonitor()
        if not Monitoring then
            Monitoring = true
            BindConn("FX_Respawn", LocalPlayer.CharacterAdded:Connect(BindChar))
            BindRuntime()
        end
        BindChar(LocalPlayer.Character)
    end

    local function StopMonitorIfIdle()
        if Cfgs.shield.Enabled or Cfgs.slash.Enabled then return end
        Monitoring = false
        BoundChar = nil
        Disconnect("FX_CharDesc")
        Disconnect("FX_Runtime")
        Disconnect("FX_Respawn")
        for i in pairs(Original) do Untrack(i, true) end
    end

    local function SetEnabled(cfg, state)
        cfg.Enabled = state
        if state then
            StartMonitor()
        else
            UntrackKind(cfg.Kind)
            StopMonitorIfIdle()
        end
    end
    local KTL_FX=__S[7]:create_module({title="Shield & Slash FX",description="Customize particle colors",section="right",flag="shield_slash_fx",notify=true,callback=function(enabled)
        if enabled then
            StartMonitor()
        else
            Cfgs.shield.Enabled=false
            Cfgs.slash.Enabled=false
            StopMonitorIfIdle()
        end
    end})
    KTL_FX:create_checkbox({title="Shield Changer",flag="fx_shield",callback=function(v) SetEnabled(Cfgs.shield,v==true) end})
    KTL_FX:create_colorpicker({title="Shield Color",flag="fx_shield_color",value=DEFAULT_COLOR,callback=function(v) CommitColor(Cfgs.shield,v) end})
    KTL_FX:create_checkbox({title="Slash Changer",flag="fx_slash",callback=function(v) SetEnabled(Cfgs.slash,v==true) end})
    KTL_FX:create_colorpicker({title="Slash Color",flag="fx_slash_color",value=DEFAULT_COLOR,callback=function(v) CommitColor(Cfgs.slash,v) end})
end

local function KTL_ZInstallEloHook()
    local env=getgenv and getgenv() or _G
    if env.__KTLEloHooked then return true end
    local rs=game:GetService("ReplicatedStorage")
    local ok,rankData=pcall(function() return require(rs:WaitForChild("Shared",10):WaitForChild("RankData",10)) end)
    if ok and type(rankData)=="table" and type(rankData.GetPlayerRank)=="function" then
        env.__KTLOriginalGetPlayerRank=rankData.GetPlayerRank
        local original=rankData.GetPlayerRank
        rankData.GetPlayerRank=function(self,player)
            if KTL_ZFlags.rank_spoofer_enabled and player==u1061 then
                local elo=tonumber(KTL_ZFlags.rank_spoofer_elo) or 8000
                if type(rankData.GetRank)=="function" then
                    return rankData.GetRank(elo)
                end
            end
            return original(self,player)
        end
    end
    local ok2,controller=pcall(function()
        local c=rs:FindFirstChild("Controllers")
        local m=c and c:FindFirstChild("UI") and c.UI:FindFirstChild("RankedSelectionController")
        return m and require(m)
    end)
    if ok2 and type(controller)=="table" and type(controller._updateLocalElo)=="function" then
        local original=controller._updateLocalElo
        controller._updateLocalElo=function(self,...)
            local result=original(self,...)
            if KTL_ZFlags.rank_spoofer_enabled then
                task.defer(function()
                    local elo=tonumber(KTL_ZFlags.rank_spoofer_elo) or 8000
                    local pg=u1061:FindFirstChildOfClass("PlayerGui")
                    local ranked=pg and pg:FindFirstChild("RankedSelection")
                    local page=ranked and ranked:FindFirstChild("Page")
                    local windows=page and page:FindFirstChild("Windows")
                    local modes=windows and windows:FindFirstChild("Gamemodes")
                    local list=modes and modes:FindFirstChild("List")
                    if list then
                        for _,mode in ipairs({"FFA","Duo","Duel"}) do
                            local frame=list:FindFirstChild(mode)
                            local top=frame and frame:FindFirstChild("Top")
                            local label=top and top:FindFirstChild("CurrentElo")
                            if label then label.Text=tostring(elo).." Elo" end
                        end
                    end
                end)
            end
            return result
        end
    end
    env.__KTLEloHooked=true
    return true
end

local KTL_ELO=__S[7]:create_module({title="ELO Spoofer",description="Spoof your client-side ranked ELO display",section="right",flag="rank_spoofer_enabled",notify=true,callback=function(enabled)
    KTL_ZDisconnect("rank_spoofer")
    if enabled then
        KTL_ZInstallEloHook()
        KTL_ZSpoofText({"elo","rating","rank"},KTL_ZFlags.rank_spoofer_elo or 8000)
        KTL_Z.connections.rank_spoofer=game:GetService("RunService").Heartbeat:Connect(function()
            if math.floor(os.clock()*2)%2==0 then KTL_ZSpoofText({"elo","rating","rank"},KTL_ZFlags.rank_spoofer_elo or 8000) end
        end)
    else KTL_ZRestoreSpoof() end
end})
KTL_ELO:create_textbox({title="ELO",flag="rank_spoofer_elo",placeholder="Enter ELO (e.g. 8500)...",callback=function()
    if KTL_ZFlags.rank_spoofer_enabled then KTL_ZSpoofText({"elo","rating","rank"},KTL_ZFlags.rank_spoofer_elo or 8000) end
end})
KTL_ELO:create_feature({title="Refresh ELO",flag="rank_spoofer_refresh",disablecheck=true,button_callback=function()
    if KTL_ZFlags.rank_spoofer_enabled then
        KTL_ZSpoofText({"elo","rating","rank"},KTL_ZFlags.rank_spoofer_elo or 8000)
        u864.notify("ELO Spoofer","Display refreshed",true,2.5)
    end
end})

local KTL_Currency=__S[7]:create_module({title="Currency Spoofer",description="Spoof Coins/Tokens across HUD, Trade and shops",section="right",flag="currency_spoofer_enabled",notify=true,callback=function(enabled)
    KTL_ZDisconnect("currency_spoofer")
    if enabled then
        KTL_ZSpoofText({"coins","tokens","currency"},KTL_ZFlags.currency_spoofer_coins or 999999)
        KTL_Z.connections.currency_spoofer=game:GetService("RunService").Heartbeat:Connect(function()
            if math.floor(os.clock()*2)%2==0 then KTL_ZSpoofText({"coins","tokens","currency"},KTL_ZFlags.currency_spoofer_coins or 999999) end
        end)
    else KTL_ZRestoreSpoof() end
end})
KTL_Currency:create_textbox({title="Coins",flag="currency_spoofer_coins",placeholder="e.g. 100, 9e9, Abobora...",callback=function()
    if KTL_ZFlags.currency_spoofer_enabled then KTL_ZSpoofText({"coins"},KTL_ZFlags.currency_spoofer_coins or 999999) end
end})
KTL_Currency:create_textbox({title="Tokens",flag="currency_spoofer_tokens",placeholder="e.g. 100, 9e9, Abobora...",callback=function()
    if KTL_ZFlags.currency_spoofer_enabled then KTL_ZSpoofText({"tokens"},KTL_ZFlags.currency_spoofer_tokens or 999999) end
end})
KTL_Currency:create_feature({title="Refresh Currency",flag="currency_spoofer_refresh",disablecheck=true,button_callback=function()
    if KTL_ZFlags.currency_spoofer_enabled then
        KTL_ZSpoofText({"coins"},KTL_ZFlags.currency_spoofer_coins or 999999)
        KTL_ZSpoofText({"tokens"},KTL_ZFlags.currency_spoofer_tokens or 999999)
        u864.notify("Currency Spoofer","Display refreshed",true,2.5)
    end
end})

local function KTL_ZInstallProfileHook()
    local env=getgenv and getgenv() or _G
    if env.__KTLProfileSpooferHooked then return true end
    local ok,controller=pcall(function()
        local rs=game:GetService("ReplicatedStorage")
        local controllers=rs:FindFirstChild("Controllers")
        local module=controllers and controllers:FindFirstChild("PlayerProfileController")
        if not module then module=rs:FindFirstChild("PlayerProfileController",true) end
        if not module then error("PlayerProfileController not found") end
        return require(module)
    end)
    if not ok or type(controller)~="table" or type(controller.ViewProfile)~="function" then return false end
    local original=controller.ViewProfile
    env.__KTLProfileSpooferOriginal=original
    controller.ViewProfile=function(self,target,...)
        local result=original(self,target,...)
        if not KTL_ZFlags.profile_spoofer_enabled or target~=u1061 then return result end
        task.defer(function()
            local pg=u1061:FindFirstChildOfClass("PlayerGui")
            local card=pg and pg:FindFirstChild("ProfileCard")
            local customize=card and card:FindFirstChild("Customize")
            local profile=customize and customize:FindFirstChild("Profile")
            local playerProfile=profile and profile:FindFirstChild("Playerprofile")
            local details=playerProfile and playerProfile:FindFirstChild("Details")
            local stats=playerProfile and playerProfile:FindFirstChild("Stats")
            local function setText(parent,name,value)
                local obj=parent and parent:FindFirstChild(name)
                if obj and (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then obj.Text=tostring(value or "") end
            end
            if details then
                setText(details,"Username1",KTL_ZFlags.profile_spoofer_displayname or u1061.DisplayName)
                setText(details,"Title",KTL_ZFlags.profile_spoofer_title or "")
            end
            if stats then
                local wins=stats:FindFirstChild("Wins"); wins=wins and wins:FindFirstChild("Amount")
                local kills=stats:FindFirstChild("Kills"); kills=kills and kills:FindFirstChild("Amount")
                local rap=stats:FindFirstChild("Rap"); rap=rap and rap:FindFirstChild("Amount")
                if wins then wins.Text=tostring(KTL_ZFlags.profile_spoofer_wins or "") end
                if kills then kills.Text=tostring(KTL_ZFlags.profile_spoofer_kills or "") end
                if rap then rap.Text=tostring(KTL_ZFlags.profile_spoofer_rap or "") end
            end
        end)
        return result
    end
    env.__KTLProfileSpooferHooked=true
    return true
end

local KTL_Profile=__S[7]:create_module({title="Profile Spoofer",description="Customize player profile details, stats, titles, etc.",section="right",flag="profile_spoofer_enabled",notify=true,callback=function(enabled)
    KTL_ZDisconnect("profile_spoofer")
    if enabled then
        KTL_ZInstallProfileHook()
        local function apply()
            KTL_ZSpoofText({"username"},KTL_ZFlags.profile_spoofer_username or u1061.Name)
            KTL_ZSpoofText({"display name"},KTL_ZFlags.profile_spoofer_displayname or u1061.DisplayName)
            KTL_ZSpoofText({"title"},KTL_ZFlags.profile_spoofer_title or "")
            KTL_ZSpoofText({"wins"},KTL_ZFlags.profile_spoofer_wins or "")
            KTL_ZSpoofText({"kills"},KTL_ZFlags.profile_spoofer_kills or "")
            KTL_ZSpoofText({"rap"},KTL_ZFlags.profile_spoofer_rap or "")
        end
        apply()
        KTL_Z.connections.profile_spoofer=game:GetService("RunService").Heartbeat:Connect(function()
            if math.floor(os.clock()*2)%2==0 then apply() end
        end)
    else KTL_ZRestoreSpoof() end
end})
KTL_Profile:create_textbox({title="Spoofed Username",flag="profile_spoofer_username",placeholder="Enter username...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"username"},KTL_ZFlags.profile_spoofer_username or u1061.Name) end end})
KTL_Profile:create_textbox({title="Spoofed Display Name",flag="profile_spoofer_displayname",placeholder="Enter display name...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"display name"},KTL_ZFlags.profile_spoofer_displayname or u1061.DisplayName) end end})
KTL_Profile:create_textbox({title="Spoofed Avatar (Name or ID)",flag="profile_spoofer_avataruser",placeholder="Enter username or ID..."})
KTL_Profile:create_textbox({title="Spoofed Title",flag="profile_spoofer_title",placeholder="Enter title...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"title"},KTL_ZFlags.profile_spoofer_title or "") end end})
KTL_Profile:create_checkbox({title="Verified Badge",flag="profile_spoofer_verified"})
KTL_Profile:create_textbox({title="Spoofed Wins",flag="profile_spoofer_wins",placeholder="Enter wins...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"wins"},KTL_ZFlags.profile_spoofer_wins or "") end end})
KTL_Profile:create_textbox({title="Spoofed Kills",flag="profile_spoofer_kills",placeholder="Enter kills...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"kills"},KTL_ZFlags.profile_spoofer_kills or "") end end})
KTL_Profile:create_textbox({title="Spoofed RAP",flag="profile_spoofer_rap",placeholder="Enter RAP...",callback=function() if KTL_ZFlags.profile_spoofer_enabled then KTL_ZSpoofText({"rap"},KTL_ZFlags.profile_spoofer_rap or "") end end})
KTL_Profile:create_textbox({title="Time Played",flag="profile_spoofer_timeplayed",placeholder="Enter time played..."})
KTL_Profile:create_textbox({title="Matches Played",flag="profile_spoofer_matches",placeholder="Enter matches..."})
KTL_Profile:create_textbox({title="Best Win Streak",flag="profile_spoofer_bestwinstreak",placeholder="Enter win streak..."})
KTL_Profile:create_textbox({title="Most Used Ability",flag="profile_spoofer_mostusedability_name",placeholder="Ability name..."})
KTL_Profile:create_textbox({title="Most Used Ability Times",flag="profile_spoofer_mostusedability_times",placeholder="Ability uses..."})
KTL_Profile:create_dropdown({title="Valuable Item Type",flag="profile_spoofer_mostvaluableitem_type",options={"Sword","Emote","Explosion"},maximum_options=3,multi_dropdown=false})
KTL_Profile:create_textbox({title="Valuable Item Name",flag="profile_spoofer_mostvaluableitem_name",placeholder="Item name..."})
KTL_Profile:create_textbox({title="Valuable Item Value",flag="profile_spoofer_mostvaluableitem_value",placeholder="Item value..."})
KTL_Profile:create_feature({title="Refresh Profile",flag="profile_spoofer_refresh",disablecheck=true,button_callback=function()
    if KTL_ZFlags.profile_spoofer_enabled then
        KTL_ZSpoofText({"username"},KTL_ZFlags.profile_spoofer_username or u1061.Name)
        KTL_ZSpoofText({"display name"},KTL_ZFlags.profile_spoofer_displayname or u1061.DisplayName)
        KTL_ZSpoofText({"title"},KTL_ZFlags.profile_spoofer_title or "")
        KTL_ZSpoofText({"wins"},KTL_ZFlags.profile_spoofer_wins or "")
        KTL_ZSpoofText({"kills"},KTL_ZFlags.profile_spoofer_kills or "")
        KTL_ZSpoofText({"rap"},KTL_ZFlags.profile_spoofer_rap or "")
        u864.notify("Profile Spoofer","Display refreshed",true,2.5)
    end
end})

local KTL_Follow=__S[11]:create_module({title="Follow Target",description="locks onto and follows the player closest to your aim",section="left",flag="follow_target",notify=true,callback=function(enabled) KTL_ZDisconnect("follow") if enabled then KTL_ZFollowStart() end end})
KTL_Follow:create_dropdown({title="Follow Method",flag="follow_method",options={"Look","Move","TP"},maximum_options=3,multi_dropdown=false,callback=function(v) KTL_ZFlags.follow_method=type(v)=="table" and v[1] or v end})
KTL_Follow:create_checkbox({title="Highlight Target",flag="target_player_highlight",value=true})
KTL_Follow:create_colorpicker({title="Highlight Color",flag="target_player_highlight_color",value=u820.fromRGB(255,0,255)})
KTL_Follow:create_checkbox({title="Target Text",flag="target_player_text",value=true})
KTL_Follow:create_slider({title="Target Text Size",flag="target_player_text_size",value=16,minimum_value=8,maximum_value=36,decimals=0})
KTL_Follow:create_colorpicker({title="Target Text Color",flag="target_player_text_color",value=u820.fromRGB(255,0,255)})
KTL_Follow:create_checkbox({title="Notify Target",flag="target_player_notify",value=false})

u1061.CharacterAdded:Connect(function()
    task.wait(1)
    if KTL_ZFlags.sword_material then KTL_ZApplySwordMaterial(KTL_ZFlags.sword_material_type or "Plastic",KTL_ZFlags.sword_color,KTL_ZFlags.sword_color_apply) end
    if KTL_ZFlags.avatar_material then KTL_ZApplyCharacterMaterial(KTL_ZFlags.avatar_material_type or "Plastic",KTL_ZFlags.avatar_color,KTL_ZFlags.avatar_color_apply) end
    if KTL_ZFlags.weather_enabled then KTL_ZWeatherStart() end
end)


-- KTL World: independently implemented features; protected KTL routines are not copied.
local KTL_Lighting = game:GetService("Lighting")
local KTL_RunService = game:GetService("RunService")
local KTL_WorldState = { original = {}, fog = false, lowGraphics = false }
local KTL_WorldOriginal = {
    FogEnd = KTL_Lighting.FogEnd,
    FogStart = KTL_Lighting.FogStart,
    Brightness = KTL_Lighting.Brightness,
    GlobalShadows = KTL_Lighting.GlobalShadows,
}
KTL_World:create_module({
    title = "Low Graphics",
    description = "Reduce visual effects locally",
    section = "left",
    flag = "ktl_world_low_graphics",
    callback = function(enabled)
        KTL_WorldState.lowGraphics = enabled
        KTL_Lighting.GlobalShadows = enabled and false or KTL_WorldOriginal.GlobalShadows
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                if enabled then
                    if KTL_WorldState.original[obj] == nil then
                        KTL_WorldState.original[obj] = {Material = obj.Material, Reflectance = obj.Reflectance}
                    end
                    obj.Material = Enum.Material.SmoothPlastic
                    obj.Reflectance = 0
                else
                    local previous = KTL_WorldState.original[obj]
                    if previous then
                        obj.Material = previous.Material
                        obj.Reflectance = previous.Reflectance
                        KTL_WorldState.original[obj] = nil
                    end
                end
            end
        end
    end,
})
KTL_World:create_module({
    title = "Remove Fog",
    description = "Hide distance fog locally",
    section = "right",
    flag = "ktl_world_remove_fog",
    callback = function(enabled)
        KTL_WorldState.fog = enabled
        KTL_Lighting.FogStart = enabled and 100000 or KTL_WorldOriginal.FogStart
        KTL_Lighting.FogEnd = enabled and 1000000 or KTL_WorldOriginal.FogEnd
    end,
})
KTL_World:create_module({
    title = "Full Bright",
    description = "Increase local scene brightness",
    section = "right",
    flag = "ktl_world_full_bright",
    callback = function(enabled)
        KTL_Lighting.Brightness = enabled and 3 or KTL_WorldOriginal.Brightness
    end,
})

__S[13] = __S[5]:create_module({
    title = "Auto Parry",
    description = "automatic ball deflection",
    section = "left",
    flag = "auto_parry",
    notify = true,
    callback = function(r0)
        u1070.config.auto_parry = r0
    end
})

local u1212 = __S[13]:create_slider({
    title = "Accuracy",
    flag = "parry_accuracy",
    value = 75,
    minimum_value = 1,
    maximum_value = 100,
    decimals = 0,
    callback = function(r0)
        if not u1070.config.randomize_accuracy then
            u1070.config._accuracy_before_random = r0
        end

        u1070.config.accuracy = r0
    end
})

__S[13]:create_checkbox({
    title = "Randomize Accuracy",
    flag = "randomize_accuracy",
    callback = function(r0)
        u1070.config.randomize_accuracy = r0

        if r0 then
            u1070.config._accuracy_before_random = u1070.config.accuracy
        else
            local r1 = tonumber(u1070.config._accuracy_before_random or u864._config._flags.parry_accuracy or u1070.config.accuracy)

            if r1 then
                local r4 = math.clamp(math.floor(r1 + 0.5), 1, 100)
                u1070.config.accuracy = r4
                u864._config._flags.parry_accuracy = r4
                u867:save(u796.GameId, u864._config)

                if u1212 and u1212.set_percentage then
                    u1212:set_percentage(r4)
                end
            end
        end
    end
})

__S[13]:create_doubleslider({
    title = "Random Accuracy",
    flag = "random_accuracy_range",
    value = {25, 85},
    minimum_value = 1,
    maximum_value = 100,
    decimals = 0,
    callback = function(r0, r1)
        u1070.config.random_accuracy_min = r0
        u1070.config.random_accuracy_max = r1
    end
})

__S[13]:create_dropdown({
    title = "Parry Mode",
    flag = "parry_mode",
    options = {"Remote", "Keypress"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        u1070.config.parry_mode = r0
    end
})

__S[13]:create_divider({showtopic = true, title = "Pre Click"})

__S[13]:create_checkbox({
    title = "Kill Pre Click",
    flag = "kill_pre_click",
    notify = true,
    callback = function(r0)
        u1070.config.kill_pre_click = r0
    end
})

__S[13]:create_slider({
    title = "Pre Click Range",
    flag = "kill_pre_click_range",
    value = 30,
    minimum_value = 5,
    maximum_value = 100,
    decimals = 0,
    callback = function(r0)
        u1070.config.kill_pre_click_range = r0
    end
})

__S[13]:create_slider({
    title = "Pre Click Ball Speed",
    flag = "kill_pre_click_speed",
    value = 1,
    minimum_value = 1,
    maximum_value = 1000,
    decimals = 0,
    callback = function(r0)
        u1070.config.kill_pre_click_speed = r0
    end
})

__S[13]:create_divider({showtopic = true, title = "Abilities"})

__S[13]:create_checkbox({
    title = "Cooldown Protection",
    flag = "cooldown_protection",
    callback = function(r0)
        u1070.ability.cooldown_protection = r0
    end
})

__S[13]:create_checkbox({
    title = "Auto Ability",
    flag = "auto_ability",
    callback = function(r0)
        u1070.ability.auto_ability = r0
    end
})

__S[13]:create_divider({showtopic = true, title = "Curve"})

__S[13]:create_dropdown({
    title = "Curve Mode",
    flag = "curve_mode",
    options = u1073,
    maximum_options = 7,
    multi_dropdown = false,
    keybind = true,
    notify = true,
    callback = function(r0)
        for r2, r3 in ipairs(u1073) do
            if r3 == r0 then
                u1070.config.curve_mode = r2
                break
            end
        end
    end
})

local KTL_TargetPlayer = __S[5]:create_module({
    title = "Target Player",
    description = "select a specific player for targeting/parry logic",
    section = "left",
    flag = "target_player_enabled",
    notify = true,
    callback = function(enabled)
        u1070.config.target_player_enabled = enabled
        if not enabled then
            u1070.config.target_player_name = nil
        end
    end
})
local KTL_TargetPlayerDropdown = KTL_TargetPlayer:create_dropdown({
    title = "Player",
    flag = "target_player_name",
    options = {},
    maximum_options = 20,
    search = true,
    multi_dropdown = false,
    callback = function(name)
        u1070.config.target_player_name = name
    end
})
local function KTL_RefreshTargetPlayers()
    local players = {}
    for _, player in ipairs(u1054:GetPlayers()) do
        if player ~= u1061 then
            table.insert(players, player.Name)
        end
    end
    table.sort(players)
    if KTL_TargetPlayerDropdown and KTL_TargetPlayerDropdown.set_options then
        KTL_TargetPlayerDropdown:set_options(players)
    end
end
KTL_RefreshTargetPlayers()
u1054.PlayerAdded:Connect(function() task.defer(KTL_RefreshTargetPlayers) end)
u1054.PlayerRemoving:Connect(function() task.defer(KTL_RefreshTargetPlayers) end)

KTL_TargetPlayer:create_feature({
    title = "Refresh Players",
    flag = "target_player_refresh",
    disablecheck = true,
    button_callback = function()
        KTL_RefreshTargetPlayers()
        local count = 0
        for _, player in ipairs(u1054:GetPlayers()) do
            if player ~= u1061 then count = count + 1 end
        end
        u864.notify("Target Player", "Player list refreshed (" .. tostring(count) .. ")", true, 2.5)
    end
})

local KTL_AutoCurve = __S[5]:create_module({
    title = "Auto Curve",
    description = "automatically enables curve handling when a target is detected",
    section = "right",
    flag = "auto_curve",
    notify = true,
    callback = function(enabled)
        u1070.config.auto_curve = enabled
        if enabled then
            if not KTL_Z.connections.auto_curve then
                KTL_Z.connections.auto_curve = game:GetService("RunService").Heartbeat:Connect(function()
                    local root=u1070.player.get_root()
                    if not root then return end
                    local balls=u1070.ball.get_all and u1070.ball.get_all() or {}
                    local sensitivity=tonumber(u1070.config.auto_curve_sensitivity) or 50
                    local factor=1-(math.clamp(sensitivity,0,100)/100)*0.6
                    for _,info in ipairs(balls) do
                        local part=info.part
                        if part and part:IsA("BasePart") then
                            local target=part:GetAttribute("target")
                            local vel=u1070.ball.get_velocity(part,info.model)
                            if vel then
                                local approaching=vel.Magnitude>1 and (part.Position-root.Position):Dot(vel)<0
                                if target==u1061.Name or approaching and (part.Position-root.Position).Magnitude < 80*factor+20 then
                                    u1070.curve_detection.curve_time=os.clock()
                                    break
                                end
                            end
                        end
                    end
                end)
            end
            u864.notify("Auto Curve", "Auto curve enabled", true, 2.5)
        else
            KTL_ZDisconnect("auto_curve")
            u864.notify("Auto Curve", "Auto curve disabled", false, 2.5)
        end
    end
})
KTL_AutoCurve:create_dropdown({
    title = "Mode",
    flag = "auto_curve_mode",
    options = u1073,
    maximum_options = #u1073,
    multi_dropdown = false,
    callback = function(mode)
        for index, name in ipairs(u1073) do
            if name == mode then
                u1070.config.curve_mode = index
                break
            end
        end
    end
})
KTL_AutoCurve:create_slider({
    title = "Sensitivity",
    flag = "auto_curve_sensitivity",
    value = 50,
    minimum_value = 0,
    maximum_value = 100,
    decimals = 0,
    callback = function(v)
        u1070.config.auto_curve_sensitivity = v
    end
})

__S[5]:create_module({
    title = "Triggerbot",
    description = "fires when ball targets you",
    section = "left",
    flag = "triggerbot",
    notify = true,
    callback = function(r0)
        if u1070.config.is_mobile then
            if r0 then
                if not u1070.mobile_guis.triggerbot then
                    local u1213 = u1079("Trigger", 0.7, u820.fromRGB(255, 100, 0))
                    u1070.mobile_guis.triggerbot = u1213
                    local u1214 = 0
                    local u1215 = false

                    u1213.button.InputBegan:Connect(function(r0)
                        if r0.UserInputType == u824.UserInputType.Touch then
                            u1214 = u817()
                            u1215 = false
                        end
                    end)

                    u1213.button.InputChanged:Connect(function(r0)
                        if r0.UserInputType == u824.UserInputType.Touch and u817() - u1214 > 0.15 then
                            u1215 = true
                        end
                    end)

                    u1213.button.InputEnded:Connect(function(r0)
                        if r0.UserInputType ~= u824.UserInputType.Touch or u1215 then
                            return
                        end

                        local r5 = not u1070.triggerbot.enabled
                        u1070.triggerbot.set(r5)
                        u1213.label.Text = r5 and "ON" or "Trigger"
                        local r2 = u1213.label

                        if r5 then
                            r5 = u820.fromRGB(255, 100, 0)
                        end

                        if not r5 then
                            r5 = u820.fromRGB(245, 245, 245)
                        end

                        r2.TextColor3 = r5
                    end)
                end
            else
                u1070.triggerbot.set(false)

                if u1070.mobile_guis.triggerbot then
                    u1070.mobile_guis.triggerbot.gui:Destroy()
                    u1070.mobile_guis.triggerbot = nil
                end
            end
        else
            u1070.triggerbot.set(r0)
        end
    end
})

__S[13] = __S[5]:create_module({
    title = "Manual Spam",
    description = "continuously spams parry",
    section = "right",
    flag = "manual_spam",
    notify = true,
    callback = function(r0)
        if u1070.config.is_mobile then
            if r0 then
                if not u1070.mobile_guis.manual_spam then
                    local u1216 = u1079("Spam", 0.8, u820.fromRGB(255, 255, 255))
                    u1070.mobile_guis.manual_spam = u1216
                    local u1217 = 0
                    local u1218 = false

                    u1216.button.InputBegan:Connect(function(r0)
                        if r0.UserInputType == u824.UserInputType.Touch then
                            u1217 = u817()
                            u1218 = false
                        end
                    end)

                    u1216.button.InputChanged:Connect(function(r0)
                        if r0.UserInputType ~= u824.UserInputType.Touch or not (u817() - u1217 > 0.15) then
                            return
                        end

                        u1218 = true
                    end)

                    u1216.button.InputEnded:Connect(function(r0)
                        if r0.UserInputType ~= u824.UserInputType.Touch or u1218 then
                            return
                        end

                        if u1070.spam.manual_enabled then
                            u1070.spam.manual_stop()
                            u1216.label.Text = "Spam"
                            u1216.label.TextColor3 = u820.fromRGB(245, 245, 245)
                        else
                            u1070.spam.manual_start()
                            u1216.label.Text = "ON"
                            u1216.label.TextColor3 = u820.fromRGB(255, 255, 255)
                        end
                    end)
                end
            else
                u1070.spam.manual_stop()

                if u1070.mobile_guis.manual_spam then
                    u1070.mobile_guis.manual_spam.gui:Destroy()
                    u1070.mobile_guis.manual_spam = nil
                end
            end
        elseif r0 then
            u1070.spam.manual_start()
        else
            u1070.spam.manual_stop()
        end
    end
})

__S[13]:create_dropdown({
    title = "Spam Mode",
    flag = "manual_spam_mode",
    options = {"Remote", "Keypress"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        u1070.spam.manual_mode = r0
    end
})

if not u1070.config.is_mobile then
    __S[13]:create_checkbox({
        title = "Animation Fix",
        flag = "manual_spam_anim_fix",
        callback = function(r0)
            u1070.spam.animation_fix_manual = r0
        end
    })
end

__S[13] = __S[5]:create_module({
    title = "Auto Spam",
    description = "spams based on ball proximity",
    section = "right",
    flag = "auto_spam",
    notify = true,
    callback = function(r0)
        if r0 then
            u1070.spam.auto_start()
        else
            u1070.spam.auto_stop()
        end
    end
})

__S[13]:create_dropdown({
    title = "Spam Mode",
    flag = "auto_spam_mode",
    options = {"Remote", "Keypress"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        u1070.spam.auto_mode = r0
    end
})

__S[13]:create_slider({
    title = "Parry Threshold",
    flag = "spam_threshold",
    value = 1.5,
    minimum_value = 1,
    maximum_value = 5,
    callback = function(r0)
        u1070.spam.threshold = r0
    end
})

if not u1070.config.is_mobile then
    __S[13]:create_checkbox({
        title = "Animation Fix",
        flag = "auto_spam_anim_fix",
        callback = function(r0)
            u1070.spam.animation_fix_auto = r0
        end
    })
end

__S[6]:create_module({
    title = "Infinity Detection",
    description = "ignore infinity ball",
    section = "left",
    flag = "detect_infinity",
    notify = true,
    callback = function(r0)
        u1070.detections.infinity = r0
    end
})

__S[6]:create_module({
    title = "Death Slash Detection",
    description = "ignore death slash ball",
    section = "right",
    flag = "detect_deathslash",
    notify = true,
    callback = function(r0)
        u1070.detections.deathslash = r0
    end
})

local KTL_SOF_Detection = __S[6]:create_module({
    title = "Slashes of Fury Detection",
    description = "ignore slashes of fury ability",
    section = "left",
    flag = "detect_slashesoffury",
    notify = true,
    callback = function(r0)
        u1070.detections.slashesoffury = r0
    end
})

KTL_SOF_Detection:create_slider({
    title = "Max Parries",
    flag = "slashesoffury_max_parries",
    value = 36,
    minimum_value = 1,
    maximum_value = 36,
    callback = function(r0)
        u1070.slashesoffury_detection.max_parries = r0
    end
})

KTL_SOF_Detection:create_slider({
    title = "Parry Delay",
    flag = "slashesoffury_parry_delay",
    value = 0.05,
    minimum_value = 0.05,
    maximum_value = 0.35,
    decimals = 3,
    callback = function(r0)
        u1070.slashesoffury_detection.parry_delay = r0
    end
})

__S[6]:create_module({
    title = "Forcefield Detection",
    description = "ignore parry while forcefield is active",
    section = "left",
    flag = "detect_forcefield",
    notify = true,
    callback = function(r0)
        u1070.detections.forcefield = r0
        if not r0 then
            u1070.state.forcefield_active = false
        end
    end
})

__S[6]:create_module({
    title = "Time Hole Detection",
    description = "ignore time hole ability",
    section = "right",
    flag = "detect_timehole",
    notify = true,
    callback = function(r0)
        u1070.detections.timehole = r0
    end
})

local KTL_AntiPhantom = __S[6]:create_module({
    title = "Anti-Phantom",
    description = "reacts when phantom targets you",
    section = "left",
    flag = "anti_phantom",
    notify = true,
    callback = function(r0)
        u1070.phantom.enabled = r0
    end
})

KTL_AntiPhantom:create_dropdown({
    title = "Mode",
    flag = "anti_phantom_mode",
    options = {"Ability", "Teleport"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        u1070.phantom.mode = r0
    end
})

__S[6]:create_module({
    title = "Anti-Hellhook",
    flag = "anti_hellhook",
    description = "detects when enemy hellhooks you",
    section = "right",
    notify = true,
    callback = function(r0)
        local remote = u1070.remotes.hellhook

        if not remote then
            local folder = u1057:FindFirstChild("Remotes")
            remote = folder and folder:FindFirstChild("PlrHellHooked") or nil
            u1070.remotes.hellhook = remote
        end

        if not remote or not remote.OnClientEvent then
            return
        end

        for _, connection in u800(remote.OnClientEvent) do
            pcall(function()
                if r0 then
                    connection:Disable()
                else
                    connection:Enable()
                end
            end)
        end
    end
})

__S[6]:create_module({
    title = "Dribble Detection",
    description = "automatically use dribble once, then parry the return",
    section = "right",
    flag = "detect_dribble",
    notify = true,
    callback = function(r0)
        u1070.detections.dribble = r0
        u1070.dribble_detection.active = r0

        if not r0 then
            u1070.dribble_detection.reset()
        end
    end
})

__S[6]:create_module({
    title = "Parry on Dribble",
    description = "parry the instant an enemy dribble blinks the ball as your target (ignores distance)",
    section = "left",
    flag = "parry_on_dribble",
    notify = true,
    callback = function(r0)
        u1070.dribble_parry.enabled = r0

        if not r0 then
            u1070.dribble_parry.pending = {}
        end
    end
}):create_slider({
    title = "Parry Delay",
    flag = "parry_on_dribble_delay",
    value = 0,
    minimum_value = 0,
    maximum_value = 2,
    decimals = 3,
    callback = function(r0)
        u1070.dribble_parry.delay = r0
    end
})

__S[13] = __S[7]:create_module({
    title = "Ball Trail",
    description = "trails on the ball",
    section = "left",
    flag = "ball_trail",
    callback = function(r0)
        if r0 then
            u1070.ball_trail.start()
        else
            u1070.ball_trail.stop()
        end
    end
})

__S[13]:create_slider({
    title = "Trail Count",
    flag = "ball_trail_count",
    value = 8,
    minimum_value = 1,
    maximum_value = 16,
    callback = function(r0)
        u1070.ball_trail.num_trails = r0

        if not u1070.ball_trail.active then
            return
        end

        local r1 = u1070.ball_trail.get_ball()

        if r1 then
            u1070.ball_trail.detach()
            u1070.ball_trail.attach(r1)
        end
    end
})

__S[13]:create_colorpicker({
    title = "Trail Color",
    flag = "ball_trail_color",
    value = u820.fromRGB(0, 255, 255),
    callback = function(r0)
        u1070.ball_trail.update_color(r0)
    end
})

__S[7]:create_module({
    title = "Parry Visualizer",
    description = "shows a forcefield ball on parry",
    section = "left",
    flag = "parry_visualizer",
    callback = function(r0)
        if r0 then
            u1070.parry_visualizer.start()
        else
            u1070.parry_visualizer.stop()
        end
    end
}):create_colorpicker({
    title = "Visualizer Color",
    flag = "parry_visualizer_color",
    value = u820.fromRGB(255, 255, 255),
    callback = function(r0)
        u1070.parry_visualizer.update_color(r0)
    end
})

__S[7]:create_module({
    title = "Parry Hits",
    description = "burst effect on every parry success",
    section = "left",
    flag = "parry_hits",
    callback = function(r0)
        if r0 then
            u1070.parry_hits.start()
        else
            u1070.parry_hits.stop()
        end
    end
}):create_colorpicker({
    title = "Hits Color",
    flag = "parry_hits_color",
    value = u820.fromRGB(255, 255, 255),
    callback = function(r0)
        u1070.parry_hits.update_color(r0)
    end
})

__S[13] = __S[7]:create_module({
    title = "Custom WinStreak",
    description = "Customize your client-side win streak display",
    section = "right",
    flag = "custom_winstreak",
    callback = function(r0)
        if r0 then
            u1070.winstreak.start()
        else
            u1070.winstreak.stop()
        end
    end
})

if u864._config._flags.custom_winstreak_amount == nil then
    u864._config._flags.custom_winstreak_amount = "1"
end

u1070.winstreak.streak = u864._config._flags.custom_winstreak_amount

if u864._config._flags.custom_winstreak then
    u828.spawn(u1070.winstreak.start)
end

__S[13]:create_textbox({
    title = "Streak Amount",
    flag = "custom_winstreak_amount",
    placeholder = "Enter streak value (e.g. 999)...",
    callback = function(r0)
        u1070.winstreak.streak = r0

        if u1070.winstreak.enabled then
            pcall(u1070.winstreak.update)
        end
    end
})

__S[13] = __S[7]:create_module({
    title = "Custom Win Message",
    description = "Customize announcer messages for win and kills",
    section = "right",
    flag = "custom_win_enabled",
    callback = function(r0)
        if r0 then
            u1070.custom_win.start()
        else
            u1070.custom_win.stop()
        end
    end
})

if u864._config._flags.custom_win_win_text == nil then
    __S[3] = u864._config._flags.custom_win_text
    __S[5] = u864._config._flags

    if __S[3] then
        __S[294] = __S[3] ~= ""

        if __S[3] == "" then
            __S[3] = __S[294]
        end
    else
        __S[3] = __S[3]
    end

    if not __S[3] then
        __S[3] = "KTL"
    end

    __S[5].custom_win_win_text = __S[3]
end

if u864._config._flags.custom_win_kill_text == nil then
    __S[3] = u864._config._flags.custom_win_text
    __S[5] = u864._config._flags

    if __S[3] then
        __S[294] = __S[3] ~= ""

        if __S[3] == "" then
            __S[3] = __S[294]
        end
    else
        __S[3] = __S[3]
    end

    if not __S[3] then
        __S[3] = "KTL"
    end

    __S[5].custom_win_kill_text = __S[3]
end

u1070.custom_win.win_message = u864._config._flags.custom_win_win_text
u1070.custom_win.kill_message = u864._config._flags.custom_win_kill_text

if u864._config._flags.custom_win_enabled then
    u828.spawn(u1070.custom_win.start)
end

__S[13]:create_textbox({
    title = "Win Message",
    flag = "custom_win_win_text",
    placeholder = "Enter win message...",
    callback = function(r0)
        u1070.custom_win.win_message = r0

        if u1070.custom_win.enabled then
            u1070.custom_win.update()
        end
    end
})

__S[13]:create_textbox({
    title = "Kill Message",
    flag = "custom_win_kill_text",
    placeholder = "Enter kill message...",
    callback = function(r0)
        u1070.custom_win.kill_message = r0

        if u1070.custom_win.enabled then
            u1070.custom_win.update()
        end
    end
})

__S[13] = __S[7]:create_module({
    title = "Ability ESP",
    description = "shows player equipped abilities",
    section = "left",
    flag = "ability_esp",
    callback = function(r0)
        if r0 then
            u1070.ability_esp.start()
        else
            u1070.ability_esp.stop()
        end
    end
})

__S[13]:create_dropdown({
    title = "Display Mode",
    flag = "esp_display_mode",
    options = {"Text", "Image"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        if r0 == "Image" then
            u1070.ability_esp.mode = "Image"
        else
            u1070.ability_esp.mode = "Text"
        end
    end
})

__S[13]:create_divider({showtopic = true, title = "Name"})

__S[13]:create_checkbox({
    title = "Show Name",
    flag = "esp_show_name",
    value = false,
    callback = function(r0)
        u1070.ability_esp.show_name = r0
    end
})

__S[13]:create_dropdown({
    title = "Name Type",
    flag = "esp_name_mode",
    options = {"Display Name", "Username"},
    maximum_options = 2,
    multi_dropdown = false,
    callback = function(r0)
        u1070.ability_esp.name_mode = r0
    end
})

__S[13]:create_slider({
    title = "Name Size",
    flag = "esp_name_size",
    value = 18,
    minimum_value = 8,
    maximum_value = 36,
    callback = function(r0)
        u1070.ability_esp.name_size = r0

        for r2, r3 in pairs(u1070.ability_esp.drawings) do
            if r3.nameDraw then
                r3.nameDraw.Size = r0
            end
        end
    end
})

__S[13]:create_colorpicker({
    title = "Name Color",
    flag = "esp_name_color",
    value = u820.fromRGB(255, 255, 255),
    callback = function(r0)
        u1070.ability_esp.name_color = r0

        for r2, r3 in pairs(u1070.ability_esp.drawings) do
            if r3.nameDraw then
                r3.nameDraw.Color = r0
            end
        end
    end
})

__S[13]:create_divider({showtopic = true, title = "Ability"})

__S[13]:create_slider({
    title = "Ability Size",
    flag = "esp_ability_size",
    value = 16,
    minimum_value = 8,
    maximum_value = 36,
    callback = function(r0)
        u1070.ability_esp.ability_size = r0

        for r2, r3 in pairs(u1070.ability_esp.drawings) do
            if r3.abilityDraw then
                r3.abilityDraw.Size = r0
            end
        end
    end
})

__S[13]:create_colorpicker({
    title = "Ability Color",
    flag = "esp_ability_color",
    value = u820.fromRGB(120, 200, 255),
    callback = function(r0)
        u1070.ability_esp.ability_color = r0

        for r2, r3 in pairs(u1070.ability_esp.drawings) do
            if r3.abilityDraw then
                r3.abilityDraw.Color = r0
            end
        end
    end
})

__S[7]:create_module({
    title = "Ball Velocity",
    description = "displays current and peak ball speed",
    section = "left",
    flag = "ball_velocity",
    callback = function(r0)
        if r0 then
            u1070.ball_velocity.start()
        else
            u1070.ball_velocity.stop()
        end
    end
})

__S[7]:create_module({
    title = "Ball Indicator",
    description = "shows ball direction on screen",
    section = "right",
    flag = "ball_indicator",
    callback = function(r0)
        if r0 then
            u1070.ball_indicator.start()
        else
            u1070.ball_indicator.stop()
        end
    end
})

__S[7]:create_module({
    title = "No Render",
    description = "disables client effects",
    section = "right",
    flag = "no_render",
    callback = function(r0)
        if r0 then
            u1070.no_render.start()
        else
            u1070.no_render.stop()
        end
    end
})

__S[7]:create_module({
    title = "Plushies",
    description = "animated plushies that follow you",
    section = "right",
    flag = "plushies",
    callback = function(r0)
        if r0 then
            u1070.plushies.start()
        else
            u1070.plushies.stop()
        end
    end
}):create_dropdown({
    title = "Plushie Type",
    flag = "plushie_type",
    options = {
        "Reimu",
        "Youmou",
        "Shion",
        "Yuuka",
        "Flandre",
        "Ayanami",
        "Padoru"
    },
    maximum_options = 7,
    multi_dropdown = true,
    callback = function(r0)
        u1070.plushies.active_types = {}

        for r2, r3 in ipairs(r0) do
            u1070.plushies.active_types[r3] = true
        end
    end
})

__S[8]:create_module({
    title = "Field of View",
    description = "changes camera field of view",
    section = "left",
    flag = "fov",
    notify = true,
    callback = function(r0)
        u1070.player_mods.set_fov(r0, nil)
    end
}):create_slider({
    title = "FOV",
    flag = "fov_value",
    value = 70,
    minimum_value = 40,
    maximum_value = 120,
    callback = function(r0)
        u1070.player_mods.fov = r0

        if u1070.player_mods.fov_enabled then
            u1062.FieldOfView = r0
        end
    end
})

__S[8]:create_module({
    title = "Speed",
    description = "changes walk speed",
    section = "left",
    flag = "speed",
    notify = true,
    callback = function(r0)
        u1070.player_mods.set_speed(r0, nil)
    end
}):create_slider({
    title = "Walk Speed",
    flag = "speed_value",
    value = 16,
    minimum_value = 1,
    maximum_value = 200,
    callback = function(r0)
        u1070.player_mods.speed = r0

        if not u1070.player_mods.speed_enabled then
            return
        end

        local r5 = u1061.Character
        local r2 = r5 and r5:FindFirstChildOfClass("Humanoid")

        if not r2 then
            return
        end

        r2.WalkSpeed = r0
    end
})

__S[8]:create_module({
    title = "Gravity",
    description = "changes workspace gravity",
    section = "right",
    flag = "gravity",
    notify = true,
    callback = function(r0)
        u1070.player_mods.set_gravity(r0, nil)
    end
}):create_slider({
    title = "Gravity",
    flag = "gravity_value",
    value = 196,
    minimum_value = 0,
    maximum_value = 500,
    callback = function(r0)
        u1070.player_mods.gravity = r0

        if not u1070.player_mods.gravity_enabled then
            return
        end

        u1058.Gravity = r0
    end
})

__S[8]:create_module({
    title = "Jump Power",
    description = "changes humanoid jump power",
    section = "right",
    flag = "jump_power",
    notify = true,
    callback = function(r0)
        u1070.player_mods.set_jump_power(r0, nil)
    end
}):create_slider({
    title = "Jump Power",
    flag = "jump_power_value",
    value = 50,
    minimum_value = 0,
    maximum_value = 300,
    callback = function(r0)
        u1070.player_mods.jump_power = r0

        if not u1070.player_mods.jump_power_enabled then
            return
        end

        local r2 = u1061.Character

        if r2 then
            r2 = r2:FindFirstChildOfClass("Humanoid")
        end

        if r2 then
            r2.JumpPower = r0
        end
    end
})

__S[8]:create_module({
    title = "Infinite Jump",
    description = "allows jumping in mid-air",
    section = "right",
    flag = "infinite_jump",
    notify = true,
    callback = function(r0)
        u1070.player_mods.set_infinite_jump(r0)
    end
})

__S[5] = u1070.emotes.get_emotes_list()

__S[6] = __S[8]:create_module({
    title = "Emotes",
    description = "plays character emote animations",
    section = "left",
    flag = "emotes",
    notify = true,
    callback = function(r0)
        if r0 then
            u1070.emotes.start()
        else
            u1070.emotes.cleanup()
        end
    end
})

__S[6]:create_dropdown({
    title = "Emote",
    flag = "emote_select",
    options = __S[5],
    maximum_options = 10,
    multi_dropdown = false,
    search = true,
    callback = function(r0)
        u1070.emotes.current = r0

        if u1070.emotes.enabled then
            u1070.emotes.play(r0)
        end
    end
})

__S[6]:create_checkbox({
    title = "Auto Stop",
    flag = "emote_auto_stop",
    callback = function(r0)
        u1070.emotes.auto_stop = r0
    end
})

__S[7] = __S[9]:create_module({
    title = "Sword Changer",
    description = "customizes sword appearance and effects",
    section = "left",
    flag = "sword_changer",
    callback = function(r0)
        if r0 then
            u1070.sword_changer.save_original()
            u1070.sword_changer.enabled = true
            pcall(u1070.sword_changer.update)
        else
            u1070.sword_changer.enabled = false
            u1070.sword_changer.restore_original()
        end
    end
})

__S[7]:create_textbox({
    title = "Sword Model",
    flag = "sword_model",
    placeholder = "Enter sword model name...",
    callback = function(r0)
        u1070.sword_changer.model = r0
        u1070.sword_changer.model_cache[r0] = nil
        pcall(u1070.sword_changer.update)
    end
})

__S[7]:create_textbox({
    title = "Sword Animations",
    flag = "sword_animations",
    placeholder = "Enter sword animation name...",
    callback = function(r0)
        u1070.sword_changer.animations = r0
        pcall(u1070.sword_changer.update)
    end
})

__S[7]:create_textbox({
    title = "Sword FX",
    flag = "sword_fx",
    placeholder = "Enter sword FX name...",
    callback = function(r0)
        u1070.sword_changer.fx = r0
        pcall(u1070.sword_changer.update)
    end
})

__S[10]:create_module({
    title = "Avatar Changer",
    description = "copies another player avatar",
    section = "left",
    flag = "avatar_changer",
    callback = function(r0)
        u1070.avatar_changer.enabled = r0

        if r0 then
            u1070.avatar_changer.save_original()

            if u1070.avatar_changer.target ~= "" then
                u1070.avatar_changer.apply(u1070.avatar_changer.target)
            end
        end

        if not r0 and u1070.avatar_changer.applied_id then
            u1070.avatar_changer.restore()
        end
    end
}):create_textbox({
    title = "Username",
    flag = "avatar_target",
    placeholder = "Enter username...",
    callback = function(r0)
        local r2 = u1070.avatar_changer

        if not r0 then
            r0 = ""
        end

        r2.target = r0

        if u1070.avatar_changer.enabled and u1070.avatar_changer.target ~= "" then
            u1070.avatar_changer.applied_id = nil
            u1070.avatar_changer.apply(u1070.avatar_changer.target)
        end
    end
})

__S[10]:create_module({
    title = "Korblox",
    description = "replaces right leg with korblox mesh",
    section = "right",
    flag = "korblox",
    callback = function(r0)
        u1070.avatar.set_korblox(r0)
    end
})

__S[10]:create_module({
    title = "Headless",
    description = "makes head invisible",
    section = "right",
    flag = "headless",
    callback = function(r0)
        u1070.avatar.set_headless(r0)
    end
})

__S[8] = __S[11]:create_module({
    title = "Orbit Ball",
    description = "orbits your character around the ball",
    section = "left",
    flag = "orbit_ball",
    notify = true,
    callback = function(r0)
        if r0 then
            u1070.orbit_ball.start()
        else
            u1070.orbit_ball.stop()
        end
    end
})

__S[8]:create_slider({
    title = "Speed",
    flag = "orbit_speed",
    value = 50,
    minimum_value = 1,
    maximum_value = 200,
    callback = function(r0)
        u1070.orbit_ball.speed = r0
    end
})

__S[8]:create_slider({
    title = "Distance",
    flag = "orbit_distance",
    value = 15,
    minimum_value = 5,
    maximum_value = 60,
    callback = function(r0)
        u1070.orbit_ball.distance = r0
    end
})

__S[8]:create_slider({
    title = "Height",
    flag = "orbit_height",
    value = 5,
    minimum_value = -20,
    maximum_value = 30,
    callback = function(r0)
        u1070.orbit_ball.height = r0
    end
})


local KTL_MinhdzImmortalState={Enabled=false,Initialized=false,HRP=nil,CharacterConnection=nil,Connections={}}
local function KTL_MinhdzImmortalStart()
    KTL_MinhdzImmortalState.Enabled=true
    if KTL_MinhdzImmortalState.Initialized then return end
    KTL_MinhdzImmortalState.Initialized=true
    local LocalPlayer=u1061
    local RunService=game:GetService("RunService")
    local function onCharacter(char)
        KTL_MinhdzImmortalState.HRP=char and char:WaitForChild("HumanoidRootPart",5)
    end
    KTL_MinhdzImmortalState.CharacterConnection=LocalPlayer.CharacterAdded:Connect(onCharacter)
    if LocalPlayer.Character then onCharacter(LocalPlayer.Character) end
    local DesyncTypes={}
    if hookmetamethod and newcclosure then
        local oldIndexCFrame
        oldIndexCFrame=hookmetamethod(game,"__index",newcclosure(function(self,key)
            if not KTL_MinhdzImmortalState.Enabled or checkcaller() then return oldIndexCFrame(self,key) end
            if key=="CFrame" and KTL_MinhdzImmortalState.HRP and self==KTL_MinhdzImmortalState.HRP then
                return DesyncTypes[1] or oldIndexCFrame(self,key)
            end
            return oldIndexCFrame(self,key)
        end))
    end
    KTL_MinhdzImmortalState.Connections.orbit=RunService.Heartbeat:Connect(function()
        if not KTL_MinhdzImmortalState.Enabled or not KTL_MinhdzImmortalState.HRP then return end
        local hrp=KTL_MinhdzImmortalState.HRP
        if not hrp.Parent then
            local char=LocalPlayer.Character
            hrp=char and char:FindFirstChild("HumanoidRootPart")
            KTL_MinhdzImmortalState.HRP=hrp
            if not hrp then return end
        end
        DesyncTypes[1]=hrp.CFrame
        DesyncTypes[2]=hrp.AssemblyLinearVelocity
        local rotAngle=tick()*math.pi*2*20/5
        local pos=Vector3.new(math.cos(rotAngle)*20,0,math.sin(rotAngle)*20)
        hrp.CFrame=DesyncTypes[1]+pos
        hrp.AssemblyLinearVelocity=Vector3.zero
        RunService.RenderStepped:Wait()
        if KTL_MinhdzImmortalState.Enabled and KTL_MinhdzImmortalState.HRP then
            hrp.CFrame=DesyncTypes[1]
            hrp.AssemblyLinearVelocity=DesyncTypes[2]
        end
    end)
    KTL_MinhdzImmortalState.Connections.offset=RunService.Heartbeat:Connect(function()
        if not KTL_MinhdzImmortalState.Enabled then return end
        local char=LocalPlayer.Character
        local hrp=char and char:FindFirstChild("HumanoidRootPart")
        if hrp then hrp.CFrame=hrp.CFrame+Vector3.new(0,0.01,0) end
    end)
end
local function KTL_MinhdzImmortalStop()
    KTL_MinhdzImmortalState.Enabled=false
end

__S[9] = __S[11]:create_module({
    title = "Immortality",
    description = "desyncs position while in alive",
    section = "right",
    flag = "walkable_immortal",
    notify = true,
    callback = function(r0)
        if r0 then
            KTL_MinhdzImmortalStart()
        else
            KTL_MinhdzImmortalStop()
        end
    end
})

__S[9]:create_checkbox({
    title = "Show Visualizer",
    flag = "immortal_visualizer",
    callback = function(r0)
        u1070.immortal.config.visualizer_enabled = r0

        if r0 and u1070.immortal.state.enabled then
            u1070.immortal.create_visualizer()
        elseif not r0 then
            u1070.immortal.destroy_visualizer()
        end
    end
})

__S[9]:create_colorpicker({
    title = "Visualizer Color",
    flag = "immortal_visualizer_color",
    value = u820.fromRGB(255, 0, 0),
    callback = function(r0)
        u1070.immortal.config.visualizer_color = r0
    end
})

__S[9]:create_slider({
    title = "Radius",
    flag = "immortal_radius",
    value = 25,
    minimum_value = 0,
    maximum_value = 100,
    callback = function(r0)
        u1070.immortal.config.radius = r0
    end
})

__S[9]:create_slider({
    title = "Height",
    flag = "immortal_height",
    value = 30,
    minimum_value = 0,
    maximum_value = 60,
    callback = function(r0)
        u1070.immortal.config.height = r0
    end
})



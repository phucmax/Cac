-- Decompiled / cleaned from stealanegg.lua.txt
-- Original behavior preserved; major obfuscated top-level symbols renamed.
-- Main map:
--   Lk -> antiAfkRunning
--   i -> AskFieldEggCarryRemote
--   R -> AskFieldEggSnapshotRemote
--   Q -> AskFinishHatchRemote
--   g -> AskHatchRemote
--   c -> AskLiveSnapshotRemote
--   K -> AskPlaceEggRemote
--   v -> AskPlotStateRemote
--   p -> AssetItems
--   uk -> AUTO_PLACE_BATCH_SIZE
--   E -> BASE_EDGE_X
--   A -> BASE_RETURN_SPEED
--   z4 -> bindCharacterSafety
--   oM -> buildUi
--   gk -> buyAndEquipBestTrail
--   F4 -> cachedFieldEggRecords
--   Qk -> cachedLightDarkCenter
--   Pk -> cachedLightDarkCFrame
--   Nk -> cachedLightDarkRadius
--   k4 -> checkEggAvailability
--   p4 -> chooseEggPlacementCFrame
--   ck -> clickGuiButton
--   E4 -> clickTreadmillExitButton
--   z -> CONFIG_FILE
--   y4 -> countCarriedEggs
--   c4 -> countStealAndMaybeBatchPlace
--   mk -> createNotice
--   V4 -> createSafetyFloor
--   Y4 -> currentFarmMode
--   Zk -> decodeBase64
--   S -> DEFAULT_TARGET_CFRAME
--   Dk -> detectEggZone
--   Ak -> disableAntiAfk
--   Ik -> disablePerformanceMode
--   fk -> downgradeInstanceForPerformance
--   s -> EggState
--   bk -> enableAntiAfk
--   Mk -> enablePerformanceMode
--   vk -> equipBestOwnedTrail
--   O4 -> farmSessionId
--   b -> FIELD_SLOWDOWN_X
--   P4 -> findLakeStarterEgg
--   Uk -> findLightDarkAreaContainer
--   t4 -> findPlayerPlot
--   J -> findRemote
--   jk -> findTreadmillPartInPlot
--   Z -> FLIGHT_SPEED_FILE
--   M4 -> forceLeaveTreadmill
--   q4 -> forceLeaveTreadmillAlias
--   P -> ForestStrikeRemote
--   r4 -> getBackpackEggTool
--   s4 -> getBaseDropPosition
--   o4 -> getCarriedEggReturnSpeed
--   e4 -> getEquippedEggTool
--   Vk -> getPlayerMoney
--   Jk -> getTrailCatalog
--   i4 -> getTrapHitboxes
--   I4 -> getTreadmillPart
--   Hk -> getTreadmillUpgradeCost
--   wk -> glideToCFrame
--   R4 -> glideToTargetViaWaypoint
--   j4 -> hasEggInInventory
--   J4 -> hatchReadyEggs
--   kk -> hideNotEnoughMoneyLabels
--   a -> HttpService
--   Sk -> ICON_BASE64
--   zk -> ICON_FILE
--   dk -> iconAsset
--   ak -> installMoneyAlertSuppressor
--   w4 -> isCarryingEgg
--   a4 -> isCarryingLakeEgg
--   m -> isEggTool
--   L4 -> isOnTreadmill
--   lk -> isPositionInLightDarkArea
--   G4 -> lastSnapshotFetchTime
--   ik -> lastTrailBuyAttempt
--   rk -> lastTreadmillExitAttempt
--   tk -> lastTreadmillUpgradeAttempt
--   Ck -> lastTweenScanReset
--   qk -> lastWarpScanReset
--   C4 -> leaveTreadmillCleanly
--   T -> loadConfig
--   W -> loadedConfig
--   o -> LocalPlayer
--   S4 -> lockRigidJoints
--   H -> logInfo
--   t -> logWarn
--   f4 -> mountTreadmill
--   ok -> parseCashText
--   nk -> performanceConnection
--   v4 -> placeAndHatchInventory
--   B4 -> placeInventoryEggs
--   e -> Players
--   V -> PromptService
--   k -> ProximityPromptService
--   Ek -> pulseAntiAfkInput
--   G -> RARITY_COLORS
--   X -> RARITY_ORDER
--   F -> RARITY_TIERS
--   h4 -> readFieldEggs
--   O -> readFlightSpeed
--   Kk -> readOwnedTrailsFromGui
--   yM -> recolorWindUiControls
--   ek -> refreshFieldEggSnapshot
--   B -> RemotesModule
--   j -> ReplicatedStorage
--   H4 -> requestForestStrike
--   D4 -> resetMovementState
--   kM -> restoreBar
--   Q4 -> returnToSafeLine
--   K4 -> runBatchAutoPlace
--   y -> RunService
--   l4 -> runWarpStealCycle
--   L -> SAFE_LANE_Z
--   x -> saveConfig
--   U4 -> secureEggWithGuardStrike
--   N4 -> selectBestTargetEgg
--   T4 -> setFarmMode
--   b4 -> setGodmode
--   uM -> setLanguage
--   x4 -> setTweenToggleState
--   W4 -> setWarpToggleState
--   jM -> showLoaderScreen
--   m4 -> snapshotFetchBusy
--   N -> SpeedTollOfferRemote
--   u4 -> stashEquippedTools
--   h -> state
--   rM -> styleInteractiveControl
--   Z4 -> suppressRagdoll
--   A4 -> swapHumanoidForDesync
--   X4 -> targetCooldownUntil
--   Wk -> tr
--   Rk -> TRAIL_BUY_COOLDOWN
--   Bk -> TRAIL_CATALOG
--   q -> TrailEquipRemote
--   C -> TrailPurchaseRemote
--   n -> TrailUnequipRemote
--   sk -> TREADMILL_UPGRADE_COOLDOWN
--   U -> TreadmillDoffRemote
--   yk -> treadmillExitBusy
--   l -> TreadmillMountRemote
--   D -> TreadmillUpgradeRemote
--   d4 -> triggerEggPromptsNearTarget
--   pk -> tryUpgradeTreadmill
--   g4 -> tweenHomeToBase
--   u -> TweenService
--   Gk -> UI_TEXT
--   Xk -> uiLanguage
--   Fk -> uiRefs
--   aM -> unloadScript
--   eM -> updateControlText
--   wM -> updateLanguageTexts
--   n4 -> updateTreadmillTouchSafety
--   w -> UserInputService
--   xk -> WINDUI_TABS
--   r -> Workspace
--   Y -> writeFlightSpeed
--   d -> ZONE_COLORS
--   M -> ZONE_ORDER
--   I -> ZONE_RETURN_SPEED
--   f -> ZONE_SCORE

local Players=game:GetService( "Players" )
local Workspace=game:GetService( "Workspace" )
local RunService=game:GetService( "RunService" )
local TweenService=game:GetService( "TweenService" )
local UserInputService=game:GetService( "UserInputService" )
local ReplicatedStorage=game:GetService( "ReplicatedStorage" )
local ProximityPromptService=game:GetService( "ProximityPromptService" )
local HttpService=game:GetService( "HttpService" )
local TeleportService=game:GetService( "TeleportService" )
local LocalPlayer=Players.LocalPlayer
local Window=nil
local currentLang="EN"
local executorCheckCaller=typeof(checkcaller)=="function" and checkcaller or function() return false end
local safeNewCClosure=typeof(newcclosure)=="function" and newcclosure or function(fn) return fn end
local PromptService=game:GetService( "ProximityPromptService" )pcall(function(...) PromptService.PromptButtonHoldBegan :Connect(function(e,...) pcall(function(...)
            if typeof(fireproximityprompt)== "function" then
                fireproximityprompt(e)
            end
        end
        )
    end
    )
end
)
local logInfo=function(...)
end
local logWarn=function(...)
end
local EggState=nil pcall(function(...) EggState=require((ReplicatedStorage:WaitForChild( "Client" , 5 )):WaitForChild( "EggState" , 5 ))
end
)
if not EggState then
    pcall(function(...) EggState=require(ReplicatedStorage.Client.EggState )
    end
    )
end
local AssetItems=nil pcall(function(...) AssetItems=require(((ReplicatedStorage:WaitForChild( "Shared" , 5 )):WaitForChild( "Util" , 5 )):WaitForChild( "AssetItems" , 5 ))
end
)
if not AssetItems then
    pcall(function(...) AssetItems=require(ReplicatedStorage.Shared.Util .AssetItems )
    end
    )
end
local RemotesModule=nil pcall(function(...) RemotesModule=require((ReplicatedStorage:WaitForChild( "Shared" , 5 )):WaitForChild( "Remotes" , 5 ))
end
)
if not RemotesModule then
    pcall(function(...) RemotesModule=require(ReplicatedStorage.Shared.Remotes )
    end
    )
end
local function findRemote(e,r,...)
    local y=(ReplicatedStorage:FindFirstChild( "Packages" )and ReplicatedStorage.Packages :FindFirstChild( "Networking" ))or ReplicatedStorage:FindFirstChild( "Network" )or ReplicatedStorage
    local u=y:FindFirstChild(e)or ReplicatedStorage:FindFirstChild(e)
    if u then
        return u
    end
    local w=y:FindFirstChild(e, true )or ReplicatedStorage:FindFirstChild(e, true )
    if w then
        return w
    end
    if r then
        local e=y:FindFirstChild(r)or ReplicatedStorage:FindFirstChild(r)
        if e then
            return e
        end
        local u=y:FindFirstChild(r, true )or ReplicatedStorage:FindFirstChild(r, true )
        if u then
            return u
        end
    end
    local k=string.match (e, "[^/]+$" )
    if k then
        local e=y:FindFirstChild(k, true )or ReplicatedStorage:FindFirstChild(k, true )
        if e then
            return e
        end
    end
    return nil
end

local AskPlaceEggRemote=findRemote( "RF/EggWorld/AskPlaceEgg" , "AskPlaceEgg" ) 
local AskLiveSnapshotRemote=findRemote( "RF/EggWorld/AskLiveSnapshot" , "AskLiveSnapshot" ) 
local AskPlotStateRemote=findRemote( "RF/Homestead/AskState" , "RF/Plots/AskState" )or findRemote( "AskState" )
local AskFieldEggCarryRemote=findRemote( "RF/EggWorld/AskFieldEggCarry" , "AskFieldEggCarry" ) 
local AskFieldEggSnapshotRemote=findRemote( "RF/EggWorld/AskFieldEggSnapshot" , "AskFieldEggSnapshot" )or findRemote( "Eggs: RequestAreaEggSnapshot" , "RequestAreaEggSnapshot" )
local AskHatchRemote=findRemote( "RF/EggWorld/AskHatch" , "AskHatch" )or findRemote( "Eggs: RequestHatchEgg" )
local AskFinishHatchRemote=findRemote( "RF/EggWorld/AskFinishHatch" , "AskFinishHatch" )or findRemote( "Eggs: RequestCompleteHatchEgg" )
local ForestStrikeRemote=findRemote( "RE/GuardPatrol/ForestStrike" , "ForestStrike" )or(RemotesModule and(RemotesModule.GuardPatrol and RemotesModule.GuardPatrol.ForestStrike ))
local SpeedTollOfferRemote=findRemote( "SpeedTollOffer" , "RE/GuardPatrol/SpeedTollOffer" )or(RemotesModule and(RemotesModule.GuardPatrol and RemotesModule.GuardPatrol.SpeedTollOffer ))
local TreadmillDoffRemote=findRemote( "RF/Treadmill/AskDoff" , "AskDoff" )
local TreadmillMountRemote=findRemote( "RF/Treadmill/AskDon" , "AskDon" )or findRemote( "RF/Treadmill/AskMount" , "AskMount" )
local TreadmillUpgradeRemote=findRemote( "RF/Treadmill/AskTierRaise" , "Treadmills: RequestUpgrade" , "AskTierRaise" )
local TrailPurchaseRemote=findRemote( "RF/Trailwear/AskPurchase" , "Trailwear: RequestPurchase" , "AskPurchase" )
local TrailEquipRemote=findRemote( "RF/Trailwear/AskChoose" , "Trailwear: RequestEquip" , "AskChoose" )
local TrailUnequipRemote=findRemote( "RF/Trailwear/AskDoff" , "Trailwear: RequestUnequip" , "AskDoff" )logInfo(string.format ( "[RemoteCheck] Carry: %s | Snapshot: %s | Place: %s | Hatch: %s | FinishHatch: %s | Strike: %s | Toll: %s | Doff: %s" ,tostring(AskFieldEggCarryRemote~=nil),tostring(AskFieldEggSnapshotRemote~=nil),tostring(AskPlaceEggRemote~=nil),tostring(AskHatchRemote~=nil),tostring(AskFinishHatchRemote~=nil),tostring(ForestStrikeRemote~=nil),tostring(SpeedTollOfferRemote~=nil),tostring(TreadmillDoffRemote~=nil)))

local ZONE_SCORE={[ "Light Dark" ]= 1300 ,[ "LightDark" ]= 1300 ;
[ "Titan Temple" ]= 1100 ,[ "Cherry Blossom" ]= 1000 ,[ "Cosmic" ]= 900 ;
[ "Prehistoric" ]= 800 ;
[ "Abyss Ocean" ]= 700 ,[ "Volcano" ]= 600 ;
[ "Snow" ]= 500 ,[ "Jungle" ]= 400 ;
[ "Desert" ]= 300 ,[ "Lake" ]= 200 ;
[ "Forest" ]= 100 }
local ZONE_ORDER={ "Light Dark" ;
"Titan Temple" ;
"Cherry Blossom" , "Cosmic" ;
"Prehistoric" , "Abyss Ocean" ;
"Volcano" ;
"Snow" , "Jungle" , "Desert" , "Lake" ;
"Forest" }
local ZONE_RETURN_SPEED={[ "Light Dark" ]= 420 ,[ "LightDark" ]= 420 ;
[ "Titan Temple" ]= 380 ,[ "Cherry Blossom" ]= 330 ,[ "Cosmic" ]= 280 ;
[ "Prehistoric" ]= 240 ,[ "Abyss Ocean" ]= 200 ;
[ "Volcano" ]= 180 ;
[ "Snow" ]= 160 ,[ "Jungle" ]= 140 ;
[ "Desert" ]= 130 ,[ "Lake" ]= 125 ,[ "Forest" ]= 125 }
local SAFE_LANE_Z= -360
local BASE_EDGE_X= 525
local FIELD_SLOWDOWN_X= 620
local BASE_RETURN_SPEED= 130
local DEFAULT_TARGET_CFRAME=CFrame.new ( 4773.7587890625 , 70.392112731934 , -315.73501586914 )

local FLIGHT_SPEED_FILE= "DiceHub_FlightSpeed.txt"
local CONFIG_FILE= "DiceHub_EggSelectConfig.json"
local ZONE_COLORS={[ "Light Dark" ]=Color3.fromRGB ( 168 , 85 , 247 ),[ "Titan Temple" ]=Color3.fromRGB ( 245 , 158 , 11 );
[ "Cherry Blossom" ]=Color3.fromRGB ( 236 , 72 , 153 );
[ "Cosmic" ]=Color3.fromRGB ( 6 , 182 , 212 ),[ "Prehistoric" ]=Color3.fromRGB ( 16 , 185 , 129 ),[ "Abyss Ocean" ]=Color3.fromRGB ( 59 , 130 , 246 );
[ "Volcano" ]=Color3.fromRGB ( 239 , 68 , 68 ),[ "Snow" ]=Color3.fromRGB ( 147 , 197 , 253 ),[ "Jungle" ]=Color3.fromRGB ( 34 , 197 , 94 ),[ "Desert" ]=Color3.fromRGB ( 234 , 179 , 8 ),[ "Lake" ]=Color3.fromRGB ( 20 , 184 , 166 ),[ "Forest" ]=Color3.fromRGB ( 22 , 163 , 74 )}

local RARITY_ORDER={ "Divine" , "Eternal" , "Secret" ;
"Cosmic" , "Mythic" , "Legendary" ;
"Epic" ;
"Rare" ;
"Uncommon" ;
"Common" }
local RARITY_COLORS={[ "Divine" ]=Color3.fromRGB ( 244 , 63 , 94 );
[ "Eternal" ]=Color3.fromRGB ( 217 , 70 , 239 ),[ "Secret" ]=Color3.fromRGB ( 249 , 115 , 22 ),[ "Cosmic" ]=Color3.fromRGB ( 6 , 182 , 212 ),[ "Mythic" ]=Color3.fromRGB ( 139 , 92 , 246 ),[ "Legendary" ]=Color3.fromRGB ( 251 , 191 , 36 );
[ "Epic" ]=Color3.fromRGB ( 168 , 85 , 247 );
[ "Rare" ]=Color3.fromRGB ( 59 , 130 , 246 );
[ "Uncommon" ]=Color3.fromRGB ( 34 , 197 , 94 ),[ "Common" ]=Color3.fromRGB ( 148 , 163 , 184 )}
local RARITY_TIERS={[ "Divine" ]= 6 ;
[ "Eternal" ]= 5 ;
[ "Secret" ]= 4 ,[ "Cosmic" ]= 3 ;
[ "Mythic" ]= 2 ;
[ "Legendary" ]= 1 ,[ "Epic" ]= 0.5 ,[ "Rare" ]= 0.3 ,[ "Uncommon" ]= 0.1 ;
[ "Common" ]= 0 }
local state
local function readFlightSpeed(...)
    local e= 600 pcall(function(...)
        local r= false
        if isfile then
            r=isfile(FLIGHT_SPEED_FILE)
        elseif readfile then
            local e,y=pcall(readfile,FLIGHT_SPEED_FILE)r=e and(y~=nil)
        end
        if r and readfile then
            local r=readfile(FLIGHT_SPEED_FILE)
            local u=tonumber(r)
            if u and(u>= 100 and u<= 1000 )then
                e=math.floor (u)
            end
        end
    end
    )
    return e
end
local function writeFlightSpeed(e,...) pcall(function(...)
        if writefile then
            local y=math.clamp (math.floor (tonumber(e)or 600 ), 100 , 1000 )writefile(FLIGHT_SPEED_FILE,tostring(y))
        end
    end
    )
end
local function loadConfig(...)
    local e=nil pcall(function(...)
        local r= false
        if isfile then
            r=isfile(CONFIG_FILE)
        elseif readfile then
            local e,y=pcall(readfile,CONFIG_FILE)r=e and(y~=nil)
        end
        if r and(readfile and HttpService)then
            local r=readfile(CONFIG_FILE)
            if r and r~= "" then
                local u=HttpService:JSONDecode(r)
                if type(u)== "table" then
                    e=u
                end
            end
        end
    end
    )
    local r={[ "Light Dark" ]= true ,[ "Titan Temple" ]= true ,[ "Cherry Blossom" ]= true ;
    [ "Cosmic" ]= false ;
    [ "Prehistoric" ]= false ,[ "Abyss Ocean" ]= false ;
    [ "Volcano" ]= false ,[ "Snow" ]= false ;
    [ "Jungle" ]= false ,[ "Desert" ]= false ;
    [ "Lake" ]= false ,[ "Forest" ]= false }
    local y={[ "Divine" ]= true ,[ "Eternal" ]= true ,[ "Secret" ]= true ,[ "Cosmic" ]= true ,[ "Mythic" ]= true ;
    [ "Legendary" ]= false ,[ "Epic" ]= false ,[ "Rare" ]= false ;
    [ "Uncommon" ]= false ;
    [ "Common" ]= false }
    if type(e)~= "table" then
        e={[ "selectedZones" ]=r;
        [ "selectedRarities" ]=y,[ "alwaysCollectSecretPlus" ]= true ,[ "minRarityTier" ]= 2 ;
        [ "autoTreadmill" ]= true ;
        [ "autoUpgradeTreadmill" ]= true ,[ "autoBuyTrails" ]= true ;
        [ "hideNotEnoughMoney" ]= true ;
        [ "performanceMode" ]= false ,[ "disable3D" ]= false ,[ "antiAFK" ]= true ,[ "language" ]= "EN" }
    else
        if type(e.selectedZones )~= "table" then
            e.selectedZones =r
        end
        if type(e.selectedRarities )~= "table" then
            e.selectedRarities =y
        else
            for r,w in ipairs(RARITY_ORDER)do
                if e.selectedRarities [w]==nil then
                    e.selectedRarities [w]=(y[w]== true )
                end
            end
        end
        if e.alwaysCollectSecretPlus ==nil then
            e.alwaysCollectSecretPlus = true
        end
        if e.minRarityTier ==nil then
            e.minRarityTier = 2
        end
        if e.autoTreadmill ==nil then
            e.autoTreadmill = true
        end
        if e.autoUpgradeTreadmill ==nil then
            e.autoUpgradeTreadmill = true
        end
        if e.autoBuyTrails ==nil then
            e.autoBuyTrails = true
        end
        if e.hideNotEnoughMoney ==nil then
            e.hideNotEnoughMoney = true
        end
        if e.performanceMode ==nil then
            e.performanceMode = false
        end
        if e.disable3D ==nil then
            e.disable3D = false
        end
        if e.antiAFK ==nil then
            e.antiAFK = true
        end
        if e.language and((e.language == "EN" or e.language == "TH" ))then
            currentLang=e.language
        end
    end
    return e
end
local function saveConfig(...) pcall(function(...)
        if writefile and(HttpService and state)then
            local r={[ "selectedZones" ]=state.selectedZones or{};
            [ "selectedRarities" ]=state.selectedRarities or{};
            [ "alwaysCollectSecretPlus" ]=(state.alwaysCollectSecretPlus ~= false ),[ "minRarityTier" ]=state.minRarityTier or 2 ,[ "autoTreadmill" ]=(state.autoTreadmill == true );
            [ "autoUpgradeTreadmill" ]=(state.autoUpgradeTreadmill == true ),[ "autoBuyTrails" ]=(state.autoBuyTrails == true );
            [ "hideNotEnoughMoney" ]=(state.hideNotEnoughMoney == true );
            [ "performanceMode" ]=(state.performanceMode == true );
            [ "disable3D" ]=(state.disable3D == true );
            [ "antiAFK" ]=(state.antiAFK == true );
            [ "language" ]=currentLang or "EN" }
            local y=HttpService:JSONEncode(r)writefile(CONFIG_FILE,y)
        end
    end
    )
end
local loadedConfig=loadConfig()state={[ "godmode" ]= true ,[ "autoGlide" ]= true ,[ "autoHatch" ]= false ;
[ "autoPlaceEvery5" ]= false ;
[ "batchStealCount" ]= 0 ,[ "isBatchPlacing" ]= false ,[ "isHatching" ]= false ;
[ "autoFarmLoop" ]= false ,[ "pureTweenFarm" ]= false ;
[ "glidingToTarget" ]= false ;
[ "securingEgg" ]= false ,[ "glideSpeed" ]=readFlightSpeed();
[ "selectedZones" ]=loadedConfig.selectedZones ;
[ "selectedRarities" ]=loadedConfig.selectedRarities ;
[ "alwaysCollectSecretPlus" ]=loadedConfig.alwaysCollectSecretPlus ,[ "minRarityTier" ]=loadedConfig.minRarityTier ,[ "autoTreadmill" ]=false ;
[ "autoUpgradeTreadmill" ]=false ,[ "autoBuyTrails" ]=false ,[ "hideNotEnoughMoney" ]=false ;
[ "performanceMode" ]=(loadedConfig.performanceMode == true ),[ "disable3D" ]=(loadedConfig.disable3D == true ),[ "antiAFK" ]=false ,[ "onTreadmill" ]= false ,[ "lastTreadmillMount" ]= 0 ,[ "laneZ" ]= -360 ,[ "swapped" ]= false ;
[ "teleporting" ]= false ,[ "isReturning" ]= false ;
[ "delivering" ]= false ,[ "holdingEggForGuard" ]= false ,[ "currentTargetModel" ]=nil,[ "targetPosition" ]=nil;
[ "nextStealZone" ]=nil,[ "stateTime" ]=os.clock (),[ "statusText" ]= "Ready" ,[ "bestEggInfo" ]= "Scanning..." ;
[ "gui" ]=nil;
[ "alive" ]= true ,[ "plot" ]=nil;
[ "pen" ]=nil,[ "origin" ]=nil;
[ "tread" ]=nil}
local isEggTool
local getEquippedEggTool
local getBackpackEggTool
local countCarriedEggs
local stashEquippedTools
local isCarryingEgg
local hasEggInInventory
local checkEggAvailability
local isCarryingLakeEgg
local getCarriedEggReturnSpeed
local createSafetyFloor
local requestForestStrike
local findPlayerPlot
local getBaseDropPosition
local chooseEggPlacementCFrame
local placeInventoryEggs
local hatchReadyEggs
local runBatchAutoPlace
local countStealAndMaybeBatchPlace
local placeAndHatchInventory
local getTrapHitboxes
local glideToTargetViaWaypoint
local tweenHomeToBase
local returnToSafeLine
local recoverDroppedEggDuringReturn
local findLakeStarterEgg
local selectBestTargetEgg
local secureEggWithGuardStrike
local runWarpStealCycle
local resetMovementState
local leaveTreadmillCleanly
local forceLeaveTreadmillAlias
local updateTreadmillTouchSafety
local mountTreadmill
local forceLeaveTreadmill
local getTreadmillPart
local isOnTreadmill
local clickTreadmillExitButton
local setGodmode
local swapHumanoidForDesync
local lockRigidJoints
local suppressRagdoll
local bindCharacterSafety
local triggerEggPromptsNearTarget
local targetCooldownUntil={}
local lastSnapshotFetchTime= 0
local cachedFieldEggRecords=nil
local readFieldEggs
local farmSessionId= 0
local currentFarmMode= "NONE"
local setFarmMode
local setTweenToggleState=nil
local setWarpToggleState=nil pcall(function(...)
    local e=game:GetService( "Lighting" );
    (e:GetPropertyChangedSignal( "ClockTime" )):Connect(function(...) targetCooldownUntil={}lastSnapshotFetchTime= 0
    end
    )
end
)pcall(function(...)
    local function e(e,...)
        if e:IsA( "RemoteEvent" )then
            local y=string.lower (e.Name )
            if string.find (y, "reset" )or string.find (y, "night" )or string.find (y, "spawn" )or string.find (y, "countdown" )then
                pcall(function(...) e.OnClientEvent :Connect(function(...) targetCooldownUntil={}lastSnapshotFetchTime= 0
                    end
                    )
                end
                )
            end
        end
    end
    for y,u in ipairs(ReplicatedStorage:GetDescendants())do
        e(u)
    end
    ReplicatedStorage.DescendantAdded :Connect(e)
end
)isEggTool=function(e,...)
    if not e or not e:IsA( "Tool" )then
        return false
    end
    local r=string.lower (e.Name )
    if string.find (r, "sword" )or string.find (r, "radar" )or string.find (r, "basket" )or string.find (r, "punch" )then
        return false
    end
    if e:GetAttribute( "EggUid" )or e:GetAttribute( "UID" )or string.find (r, "egg" )or e:GetAttribute( "Category" )or e:GetAttribute( "ItemType" )== "Egg" then
        return true
    end
    return false
end
getEquippedEggTool=function(...)
    local e=LocalPlayer.Character
    if e then
        for e,y in ipairs(e:GetChildren())do
            if isEggTool(y)then
                local e=y:GetAttribute( "UID" )or y:GetAttribute( "EggUid" )
                return y,e or y.Name
            end
        end
    end
    return nil,nil
end
getBackpackEggTool=function(...)
    local e=LocalPlayer:FindFirstChild( "Backpack" )
    if e then
        for e,y in ipairs(e:GetChildren())do
            if isEggTool(y)then
                local e=y:GetAttribute( "UID" )or y:GetAttribute( "EggUid" )
                return y,e or y.Name
            end
        end
    end
    return nil,nil
end
countCarriedEggs=function(...)
    local e= 0
    local r=LocalPlayer:FindFirstChild( "Backpack" )
    if r then
        for r,y in ipairs(r:GetChildren())do
            if isEggTool(y)then
                e=e+ 1
            end
        end
    end
    local y=LocalPlayer.Character
    if y then
        for r,y in ipairs(y:GetChildren())do
            if isEggTool(y)then
                e=e+ 1
            end
        end
    end
    return e
end
stashEquippedTools=function(e,...)
    if not e and not((state.pureTweenFarm or state.autoFarmLoop or state.teleporting ))then
        return
    end
    local r=LocalPlayer.Character
    local y=r and r:FindFirstChildOfClass( "Humanoid" )
    local u=LocalPlayer:FindFirstChild( "Backpack" )
    if y then
        pcall(function(...) y:UnequipTools()
        end
        )
    end
    if r and u then
        for e,r in ipairs(r:GetChildren())do
            if r:IsA( "Tool" )then
                pcall(function(...) r.Parent =u
                end
                )
            end
        end
    end
end
isCarryingEgg=function(e,...)
    if((state.pureTweenFarm or state.autoFarmLoop ))and not state.holdingEggForGuard then
        local e=getEquippedEggTool()
        if e then
            pcall(stashEquippedTools)
        end
        return false
    end
    local r,y=getEquippedEggTool()
    if r then
        if e then
            if y==e or not y then
                return true
            end
        else
            return true
        end
    end
    local u=LocalPlayer.Character
    local w=u and u:FindFirstChild( "HumanoidRootPart" )
    if w and w.Position.X <=(BASE_EDGE_X+ 15 )then
        return false
    end
    if EggState and EggState.ReadFieldEggs then
        local r,y=pcall(EggState.ReadFieldEggs )
        if r and(y and y.Records )then
            for r,y in ipairs(y.Records )do
                if((y.State == "Carried" or y.State == 2 ))and((y.CarrierUserId ==LocalPlayer.UserId or y.Carrier ==LocalPlayer.UserId ))then
                    if e then
                        if y.Uid ==e then
                            return true
                        end
                    else
                        return true
                    end
                end
            end
        end
    end
    return false
end
hasEggInInventory=function(e,...)
    local r,y=getEquippedEggTool()
    if r then
        if not e or y==e or not y then
            return true
        end
    end
    local u=LocalPlayer:FindFirstChild( "Backpack" )
    if u then
        for r,y in ipairs(u:GetChildren())do
            if isEggTool(y)then
                local r=y:GetAttribute( "UID" )or y:GetAttribute( "EggUid" )
                if not e or r==e or y.Name ==tostring(e)then
                    return true
                end
            end
        end
    end
    if e and(EggState and EggState.ReadFieldEggs )then
        local r,y=pcall(EggState.ReadFieldEggs )
        if r and(y and y.Records )then
            for r,y in ipairs(y.Records )do
                if y.Uid ==e then
                    if(y.State == "Carried" or y.State == 2 )then
                        local e=y.CarrierUserId or y.Carrier
                        if e==LocalPlayer.UserId then
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
local snapshotFetchBusy= false
local function refreshFieldEggSnapshot(...)
    if snapshotFetchBusy then
        return
    end
    local e=AskFieldEggSnapshotRemote or ReplicatedStorage:FindFirstChild( "RF/EggWorld/AskFieldEggSnapshot" , true )or ReplicatedStorage:FindFirstChild( "AskFieldEggSnapshot" , true )or ReplicatedStorage:FindFirstChild( "Eggs: RequestAreaEggSnapshot" , true )
    if not e or not e:IsA( "RemoteFunction" )then
        return
    end
    snapshotFetchBusy= true task.spawn (function(...)
        local r,y=pcall(function(...)
            return e:InvokeServer()
        end
        )
        if r and type(y)== "table" then
            local e={}
            local r=y.Records or y
            if type(r)== "table" then
                for r,y in pairs(r)do
                    if type(y)== "table" then
                        if not y.Uid and type(r)== "string" then
                            y.Uid =r
                        end
                        table.insert (e,y)
                    end
                end
            end
            if#e> 0 then
                cachedFieldEggRecords=e lastSnapshotFetchTime=os.clock ()
            end
        end
        snapshotFetchBusy= false
    end
    )
end
task.spawn (function(...)
    while true do
        task.wait ( 5 )pcall(refreshFieldEggSnapshot)
    end
end
)function readFieldEggs(e,...)
    local y=os.clock ()
    if e or(y-lastSnapshotFetchTime>= 5 )or not cachedFieldEggRecords then
        refreshFieldEggSnapshot()
    end
    local u=((cachedFieldEggRecords and#cachedFieldEggRecords> 0 ))and cachedFieldEggRecords or nil
    local w=nil
    if EggState and EggState.ReadFieldEggs then
        local e,r=pcall(EggState.ReadFieldEggs )
        if e and type(r)== "table" then
            local e={}
            local y=r.Records or r
            if type(y)== "table" then
                for r,y in pairs(y)do
                    if type(y)== "table" then
                        if not y.Uid and type(r)== "string" then
                            y.Uid =r
                        end
                        table.insert (e,y)
                    end
                end
            end
            if#e> 0 then
                w=e
            end
        end
    end
    local j={}
    local k={}
    if u then
        for e,r in ipairs(u)do
            if r.Uid then
                k[r.Uid ]= true table.insert (j,r)
            end
        end
    end
    if w then
        for e,r in ipairs(w)do
            if r.Uid and not k[r.Uid ]then
                k[r.Uid ]= true table.insert (j,r)
            end
        end
    end
    local a=Workspace:FindFirstChild( "AreaEggSlotsClient" )
    if a then
        for e,r in ipairs(a:GetChildren())do
            local y=r.Name
            if y and y~= "" then
                local e=r:GetPivot()
                local u=e.Position
                if u.X >= 530 and not string.find (tostring(y), "FirstArea" )then
                    if not k[y]then
                        k[y]= true
                        local u=r:GetAttribute( "Category" )or r:GetAttribute( "AssetCategory" )or r.Name
                        local w=r:GetAttribute( "AreaId" )or r:GetAttribute( "Area" )
                        local a=r:GetAttribute( "Rarity" )or r:GetAttribute( "RarityTier" )
                        local V=r:GetAttribute( "RarityRank" )or r:GetAttribute( "Rank" )
                        local H=r:GetAttribute( "Income" )or r:GetAttribute( "EarningRate" )
                        local t=r:GetAttribute( "Scale" )or r:GetAttribute( "AssetScale" )or 1
                        local s=r:GetAttribute( "Mutations" )or r:GetAttribute( "Mutation" )table.insert (j,{[ "Uid" ]=y,[ "AssetCategory" ]=u,[ "AreaId" ]=w;
                        [ "Rarity" ]=a,[ "Rank" ]=V,[ "Income" ]=H,[ "BoundsCFrame" ]=e;
                        [ "BottomCFrame" ]=e,[ "CFrame" ]=e;
                        [ "State" ]= "Slot" ;
                        [ "AssetScale" ]=t,[ "Mutations" ]=s,[ "PhysicalModel" ]=r})
                    else
                        for u,w in ipairs(j)do
                            if w.Uid ==y then
                                w.PhysicalModel =r
                                if not w.BoundsCFrame then
                                    w.BoundsCFrame =e
                                end
                                if not w.AreaId or w.AreaId == "" or w.AreaId == "Unknown" then
                                    w.AreaId =r:GetAttribute( "AreaId" )or r:GetAttribute( "Area" )
                                end
                                break
                            end
                        end
                    end
                end
            end
        end
    end
    return j
end
checkEggAvailability=function(e,...)
    if not e then
        return false , "NoUid"
    end
    local y=readFieldEggs( false )
    if y and#y> 0 then
        for r,y in ipairs(y)do
            if y.Uid ==e then
                if(y.State == "Carried" or y.State == 2 )then
                    local e=y.CarrierUserId or y.Carrier
                    if e and e==LocalPlayer.UserId then
                        return true , "CarriedBySelf"
                    else
                        return false , "CarriedByOther"
                    end
                end
                if(y.State == "Slot" or y.State == "Dropped" or y.State == "GuardCarried" or y.State == 1 )then
                    return true , "Available"
                end
                local e=y.CarrierUserId or y.Carrier
                if e then
                    if e==LocalPlayer.UserId then
                        return true , "CarriedBySelf"
                    else
                        return false , "CarriedByOther"
                    end
                end
                return true , "Available"
            end
        end
    end
    local u=Workspace:FindFirstChild( "AreaEggSlotsClient" )
    if u then
        for r,y in ipairs(u:GetChildren())do
            if y.Name ==tostring(e)or y:GetAttribute( "UID" )==e or y:GetAttribute( "Uid" )==e then
                return true , "Available"
            end
        end
    end
    return true , "Unchecked"
end
isCarryingLakeEgg=function(...)
    local e,r=getEquippedEggTool()
    if not r then
        local e,y=getBackpackEggTool()r=y
    end
    if not r then
        return false
    end
    if EggState and EggState.ReadFieldEggs then
        local e,u=pcall(EggState.ReadFieldEggs )
        if e and(u and u.Records )then
            for e,u in ipairs(u.Records )do
                if u.Uid ==r then
                    local e=tostring(u.AreaId or "" )
                    if e== "Lake" or string.find (string.lower (e), "lake" )~=nil then
                        return true
                    end
                end
            end
        end
    end
    if string.find (string.lower (tostring(r)), "lake" )~=nil then
        return true
    end
    return false
end
getCarriedEggReturnSpeed=function(...)
    local e,r=getEquippedEggTool()
    if not r then
        local e,y=getBackpackEggTool()r=y
    end
    if not r then
        return state.glideSpeed or 350
    end
    if EggState and EggState.ReadFieldEggs then
        local e,u=pcall(EggState.ReadFieldEggs )
        if e and(u and u.Records )then
            for e,u in ipairs(u.Records )do
                if u.Uid ==r and u.AreaId then
                    return ZONE_RETURN_SPEED[u.AreaId ]or state.glideSpeed or 350
                end
            end
        end
    end
    return state.glideSpeed or 350
end
createSafetyFloor=function(e,y,...) y=y or 8
    local u=Instance.new ( "Part" )u.Name = "SafetyFloorPad_AntiVoid" u.Size =Vector3.new ( 28 , 1.5 , 28 )u.Position =e-Vector3.new ( 0 , 3.2 , 0 )u.Anchored = true u.Transparency = 1 u.CanCollide = true u.Parent =Workspace task.delay (y,function(...) pcall(function(...) u:Destroy()
        end
        )
    end
    )
    return u
end
requestForestStrike=function(e,...)
    if ForestStrikeRemote and e then
        pcall(function(...)
            local r=LocalPlayer.Character
            local y=r and r:FindFirstChild( "HumanoidRootPart" )
            local u=y and(y.CFrame *CFrame.new ( 0 , 0 , -3 ))or CFrame.new ()
            if ForestStrikeRemote:IsA( "RemoteFunction" )then
                ForestStrikeRemote:InvokeServer({[ "EggUid" ]=e,[ "GuardCFrame" ]=u})
            else
                ForestStrikeRemote:FireServer({[ "EggUid" ]=e;
                [ "GuardCFrame" ]=u})
            end
        end
        )
    end
end
if typeof(hookmetamethod)== "function" and not _G._DesyncAntiRagdollHooked then
    _G._DesyncAntiRagdollHooked = true
    local e e=hookmetamethod(game, "__newindex" ,safeNewCClosure(function(r,y,u,...)
        if not executorCheckCaller()and typeof(r)== "Instance" then
            if r:IsA( "Motor6D" )and(y== "Enabled" and u== false )then
                return nil
            end
            if r:IsA( "Humanoid" )then
                if y== "PlatformStand" and u== true then
                    return nil
                end
                if y== "Sit" and(u== true and((state.pureTweenFarm or state.autoFarmLoop or state.isReturning or state.glidingToTarget )))then
                    return nil
                end
            end
        end
        return e(r,y,u)
    end
    ))
end
lockRigidJoints=function(e,...) e=e or LocalPlayer.Character
    if not e then
        return
    end
    local r=e:FindFirstChild( "HumanoidRootPart" )
    local y=e:FindFirstChild( "Torso" )or e:FindFirstChild( "UpperTorso" )or r
    if not y then
        return
    end
    for e,r in ipairs(e:GetDescendants())do
        if r:IsA( "BallSocketConstraint" )or r:IsA( "HingeConstraint" )or r:IsA( "NoCollisionConstraint" )then
            pcall(function(...) r:Destroy()
            end
            )
        end
    end
    for e,r in ipairs(e:GetDescendants())do
        if r:IsA( "Motor6D" )and(r.Part0 and r.Part1 )then
            r.Enabled = true
            local e= "RigidJointWeld_" ..r.Name
            local y=r.Part1 :FindFirstChild(e)
            if not y then
                local y=Instance.new ( "WeldConstraint" )y.Name =e y.Part0 =r.Part0 y.Part1 =r.Part1 y.Parent =r.Part1
            end
        end
    end
end
suppressRagdoll=function(e,...)
    if state and state.onTreadmill then
        return
    end
    e=e or LocalPlayer.Character
    if not e then
        return
    end
    local r=e:FindFirstChildOfClass( "Humanoid" )
    if r then
        r:SetStateEnabled(Enum.HumanoidStateType.Ragdoll , false )r:SetStateEnabled(Enum.HumanoidStateType.FallingDown , false )r:SetStateEnabled(Enum.HumanoidStateType.Physics , false )r:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding , false )r:SetStateEnabled(Enum.HumanoidStateType.Seated , false )
        if r.PlatformStand then
            r.PlatformStand = false
        end
        if r.Sit then
            r.Sit = false
        end
    end
    for e,r in ipairs(e:GetDescendants())do
        if r:IsA( "LocalScript" )and((string.find (string.lower (r.Name ), "ragdoll" )or string.find (string.lower (r.Name ), "fall" )))then
            r.Disabled = true
        end
    end
    lockRigidJoints(e)
end
bindCharacterSafety=function(e,...)
    if not e then
        return
    end
    suppressRagdoll(e)
    for e,y in ipairs(e:GetDescendants())do
        if y:IsA( "Motor6D" )then
            (y:GetPropertyChangedSignal( "Enabled" )):Connect(function(...)
                if not y.Enabled then
                    y.Enabled = true
                end
            end
            )
        end
    end
    e.DescendantAdded :Connect(function(y,...)
        if y:IsA( "BallSocketConstraint" )or y:IsA( "HingeConstraint" )or y:IsA( "NoCollisionConstraint" )then
            task.defer (function(...) pcall(function(...) y:Destroy()
                end
                )suppressRagdoll(e)
            end
            )
        elseif y:IsA( "LocalScript" )and((string.find (string.lower (y.Name ), "ragdoll" )or string.find (string.lower (y.Name ), "fall" )))then
            y.Disabled = true
        end
    end
    )e.ChildAdded :Connect(function(e,...)
        if e:IsA( "Tool" )and(((state.pureTweenFarm or state.autoFarmLoop ))and not state.holdingEggForGuard )then
            task.defer (function(...) stashEquippedTools()
            end
            )
        end
    end
    )
end
leaveTreadmillCleanly=function(...)
    if state then
        state.onTreadmill = false
    end
    local e=LocalPlayer.Character
    local r=e and e:FindFirstChildOfClass( "Humanoid" )
    local y=e and e:FindFirstChild( "HumanoidRootPart" )
    if TreadmillDoffRemote then
        task.spawn (function(...) pcall(function(...) TreadmillDoffRemote:InvokeServer()
            end
            )
        end
        )
    end
    if r then
        pcall(function(...)
            for r,y in ipairs(r:GetPlayingAnimationTracks())do
                local u=y.Animation
                local w=u and u.AnimationId or ""
                if string.find (w, "10921259953" )or string.find (string.lower (y.Name ), "treadmill" )or string.find (string.lower (y.Name ), "run" )then
                    y:Stop( 0 )
                end
            end
            r.PlatformStand = false r.Sit = false r:SetStateEnabled(Enum.HumanoidStateType.Running , true )r:SetStateEnabled(Enum.HumanoidStateType.Jumping , true )r:ChangeState(Enum.HumanoidStateType.Running )
        end
        )
    end
    local u=LocalPlayer:FindFirstChild( "PlayerGui" )
    if u then
        local e=u:FindFirstChild( "SpeedGainAnimation" )
        if e then
            pcall(function(...) e:Destroy()
            end
            )
        end
    end
    if y then
        y.AssemblyLinearVelocity =Vector3.zero y.AssemblyAngularVelocity =Vector3.zero
    end
    suppressRagdoll(e)
end
local lastTreadmillExitAttempt= 0
local treadmillExitBusy= false clickTreadmillExitButton=function(...)
    local e=LocalPlayer:FindFirstChild( "PlayerGui" )
    if not e then
        return false
    end
    local r= false pcall(function(...)
        for e,u in ipairs(e:GetChildren())do
            if u:IsA( "ScreenGui" )and u.Enabled then
                for e,u in ipairs(u:GetDescendants())do
                    if((u:IsA( "TextButton" )or u:IsA( "ImageButton" )))and u.Visible then
                        local e=(u:IsA( "TextButton" )and u.Text )or u.Name
                        local w=string.lower (e or "" )
                        if string.find (w, "get out" )or string.find (w, "treadmill" )or string.find (w, "doff" )or string.find (w, "leave" )or string.find (w, "exit" )then
                            if typeof(firesignal)== "function" and u.Activated then
                                pcall(firesignal,u.Activated )
                            elseif typeof(firesignal)== "function" and u.MouseButton1Click then
                                pcall(firesignal,u.MouseButton1Click )
                            elseif typeof(getconnections)== "function" then
                                local e=getconnections(u.MouseButton1Click )or getconnections(u.Activated )or{}
                                for e,r in ipairs(e)do
                                    pcall(function(...) r:Fire()
                                    end
                                    )
                                    break
                                end
                            end
                            r= true
                            break
                        end
                    end
                end
                if r then
                    break
                end
            end
        end
    end
    )
    return r
end
isOnTreadmill=function(...)
    local e=LocalPlayer.Character
    local r=e and e:FindFirstChild( "HumanoidRootPart" )
    if not r then
        return false
    end
    local y=(typeof(getTreadmillPart)== "function" )and getTreadmillPart()or nil
    if y then
        local e=y.Position +Vector3.new ( 0 , 1.8 , 0 )
        local u=((r.Position -e)).Magnitude
        if u> 6 then
            if state then
                state.onTreadmill = false
            end
            return false
        end
    else
        if r.Position.X > 535 then
            if state then
                state.onTreadmill = false
            end
            return false
        end
    end
    if state and state.onTreadmill then
        return true
    end
    local u=e and e:FindFirstChildOfClass( "Humanoid" )
    if u then
        for e,r in ipairs(u:GetPlayingAnimationTracks())do
            local y=r.Animation
            local u=y and y.AnimationId or ""
            local w=string.lower (r.Name or "" )
            if string.find (u, "10921259953" )or string.find (w, "treadmill" )or string.find (w, "run" )then
                return true
            end
        end
    end
    local w=LocalPlayer:FindFirstChild( "PlayerGui" )
    if w and w:FindFirstChild( "SpeedGainAnimation" )then
        return true
    end
    return false
end
forceLeaveTreadmill=function(...)
    if treadmillExitBusy then
        return
    end
    if os.clock ()-lastTreadmillExitAttempt< 0.8 then
        if state then
            state.onTreadmill = false
        end
        return
    end
    treadmillExitBusy= true lastTreadmillExitAttempt=os.clock ()
    if state then
        state.onTreadmill = false
    end
    clickTreadmillExitButton()
    if TreadmillDoffRemote then
        pcall(function(...) TreadmillDoffRemote:InvokeServer()
        end
        )
    end
    local e=LocalPlayer.Character
    local r=e and e:FindFirstChildOfClass( "Humanoid" )
    local y=e and e:FindFirstChild( "HumanoidRootPart" )
    if r then
        pcall(function(...)
            for r,y in ipairs(r:GetPlayingAnimationTracks())do
                local u=y.Animation
                local w=u and u.AnimationId or ""
                local j=string.lower (y.Name or "" )
                if string.find (w, "10921259953" )or string.find (j, "treadmill" )or string.find (j, "run" )then
                    y:Stop( 0 )
                end
            end
            r.PlatformStand = false r.Sit = false r:SetStateEnabled(Enum.HumanoidStateType.Running , true )r:SetStateEnabled(Enum.HumanoidStateType.Jumping , true )r:ChangeState(Enum.HumanoidStateType.Running )
        end
        )
    end
    local u=LocalPlayer:FindFirstChild( "PlayerGui" )
    if u then
        local e=u:FindFirstChild( "SpeedGainAnimation" )
        if e then
            pcall(function(...) e:Destroy()
            end
            )
        end
    end
    if y then
        y.AssemblyLinearVelocity =Vector3.zero y.AssemblyAngularVelocity =Vector3.zero
    end
    suppressRagdoll(e)task.wait ( 0.15 )treadmillExitBusy= false
end
forceLeaveTreadmillAlias=forceLeaveTreadmill updateTreadmillTouchSafety=function(...) pcall(function(...)
        local e=Workspace:FindFirstChild( "Plots" )
        if e then
            local r=state and state.plot
            if not r and findPlayerPlot then
                r=select( 1 ,findPlayerPlot())
            end
            for e,u in ipairs(e:GetChildren())do
                local w=(r~=nil and u==r)
                local j=u:FindFirstChild( "TreadmillBottom" )
                if j and j:IsA( "BasePart" )then
                    if w and(state and state.autoTreadmill )then
                        j.CanTouch = true j.CanCollide = true
                    else
                        j.CanTouch = false j.CanCollide = false
                    end
                end
                local k=u:FindFirstChild( "TreadmillUpgrade" )
                if k then
                    for e,r in ipairs(k:GetDescendants())do
                        if r:IsA( "BasePart" )then
                            if w and(state and state.autoTreadmill )then
                                r.CanTouch = true
                            else
                                r.CanTouch = false r.CanCollide = false
                            end
                        end
                    end
                end
            end
        end
    end
    )
end
updateTreadmillTouchSafety()Workspace.DescendantAdded :Connect(function(e,...) pcall(function(...)
        local r=(e.Name == "TreadmillBottom" and e:IsA( "BasePart" ))
        local y=(e.Name == "TreadmillUpgrade" and e:IsA( "Model" ))
        if r or y then
            local y=state and state.plot
            if not y and findPlayerPlot then
                y=select( 1 ,findPlayerPlot())
            end
            local w=y and e:IsDescendantOf(y)
            if w and(state and state.autoTreadmill )then
                if r then
                    e.CanTouch = true e.CanCollide = true
                else
                    for e,r in ipairs(e:GetDescendants())do
                        if r:IsA( "BasePart" )then
                            r.CanTouch = true
                        end
                    end
                end
            else
                if r then
                    e.CanTouch = false e.CanCollide = false
                else
                    for e,r in ipairs(e:GetDescendants())do
                        if r:IsA( "BasePart" )then
                            r.CanTouch = false r.CanCollide = false
                        end
                    end
                end
            end
        end
    end
    )
end
)resetMovementState=function(...) state.onTreadmill = false state.teleporting = false state.glidingToTarget = false state.securingEgg = false state.isReturning = false state.delivering = false state.holdingEggForGuard = false state.currentTargetModel =nil state.targetPosition =nil state.stateTime =os.clock ()
    local e=LocalPlayer.Character
    local r=e and e:FindFirstChild( "HumanoidRootPart" )
    if r then
        pcall(function(...) r.Anchored = false r.AssemblyLinearVelocity =Vector3.zero r.AssemblyAngularVelocity =Vector3.zero
        end
        )
    end
    pcall(function(...)
        if leaveTreadmillCleanly then
            leaveTreadmillCleanly()
        end
    end
    )pcall(function(...)
        if suppressRagdoll and e then
            suppressRagdoll(e)
        end
    end
    )pcall(function(...)
        if stashEquippedTools and((state.pureTweenFarm or state.autoFarmLoop ))then
            stashEquippedTools()
        end
    end
    )
end
triggerEggPromptsNearTarget=function(e,y,...)
    if e then
        for e,r in ipairs(e:GetDescendants())do
            if r:IsA( "ProximityPrompt" )then
                pcall(function(...) r.RequiresLineOfSight = false r.HoldDuration = 0
                    if typeof(fireproximityprompt)== "function" then
                        fireproximityprompt(r, 0 )fireproximityprompt(r)
                    end
                end
                )
            end
        end
    end
    local u=Workspace:FindFirstChild( "AreaEggSlotsClient" )
    if u and y then
        for e,r in ipairs(u:GetChildren())do
            local u=r:FindFirstChildWhichIsA( "BasePart" )or r.PrimaryPart
            if u and((u.Position -y)).Magnitude <= 18 then
                for e,r in ipairs(r:GetDescendants())do
                    if r:IsA( "ProximityPrompt" )then
                        pcall(function(...) r.RequiresLineOfSight = false r.HoldDuration = 0
                            if typeof(fireproximityprompt)== "function" then
                                fireproximityprompt(r, 0 )fireproximityprompt(r)
                            end
                        end
                        )
                    end
                end
            end
        end
    end
end
setGodmode=function(e,...) state.godmode =e
    local r=LocalPlayer.Character
    if not r then
        return
    end
    local y=r:FindFirstChildOfClass( "Humanoid" )
    if y then
        y:SetStateEnabled(Enum.HumanoidStateType.Dead ,not e)
        if e and y.Health < 100 then
            y.Health = 100
        end
    end
    for r,y in ipairs(r:GetDescendants())do
        if y:IsA( "BasePart" )then
            if e then
                y.CanTouch = false y.CanCollide = false
            end
        end
    end
    suppressRagdoll(r)
end
local function enableDesyncGodmode()
    setGodmode(true)
end
local function disableDesyncGodmode()
    setGodmode(false)
end

swapHumanoidForDesync=function(...)
    local e=LocalPlayer.Character
    local y=e and e:FindFirstChildOfClass( "Humanoid" )
    if not e or not y then
        return false
    end
    pcall(function(...) y.BreakJointsOnDeath = false
        local w=y:Clone()w.Parent =e y:Destroy()
        local j=w:FindFirstChildOfClass( "Animator" )
        if not j then
            j=Instance.new ( "Animator" )j.Parent =w
        end
        Workspace.CurrentCamera.CameraSubject =w
        local k=e:FindFirstChild( "Animate" )
        if k and k:IsA( "LocalScript" )then
            k.Disabled = true task.defer (function(...) task.wait ( 0.05 )k.Disabled = false
            end
            )
        end
        w:SetStateEnabled(Enum.HumanoidStateType.Jumping , true )w:SetStateEnabled(Enum.HumanoidStateType.Freefall , true )w:SetStateEnabled(Enum.HumanoidStateType.Running , true )w:SetStateEnabled(Enum.HumanoidStateType.Climbing , true )w.JumpPower =math.max ( 50 ,w.JumpPower )w.JumpHeight =math.max ( 7.2 ,w.JumpHeight )w:ChangeState(Enum.HumanoidStateType.Running )
    end
    )state.swapped = true
    if state.godmode then
        setGodmode( true )
    end
    bindCharacterSafety(e)
    return true
end
findPlayerPlot=function(...)
    if state.plot and(state.plot.Parent and(state.pen and(state.origin and state.plotVerified )))then
        return state.plot ,state.pen ,state.origin
    end
    local e=Workspace:FindFirstChild( "Plots" )
    if not e then
        return nil,nil,nil
    end
    local y=LocalPlayer.UserId
    local u=LocalPlayer.Name
    local w=LocalPlayer.DisplayName
    local j=nil
    local k= false
    if AskPlotStateRemote then
        local r,w=pcall(function(...)
            return AskPlotStateRemote:InvokeServer()
        end
        )
        if r and(type(w)== "table" and type(w.OwnersBySlot )== "table" )then
            for r,w in pairs(w.OwnersBySlot )do
                if w==y or tostring(w)==tostring(y)or w==u then
                    j=e:FindFirstChild(tostring(r))
                    if j then
                        k= true
                        break
                    end
                end
            end
        end
    end
    if not j and AskLiveSnapshotRemote then
        local r,u=pcall(function(...)
            return AskLiveSnapshotRemote:InvokeServer()
        end
        )
        if r and type(u)== "table" then
            for r,u in pairs(u)do
                if type(u)== "table" and((u.OwnerUserId ==y or tostring(u.OwnerUserId )==tostring(y)))then
                    local y=u.Slot or r j=e:FindFirstChild(tostring(y))or e:FindFirstChild(tostring(r))
                    if j then
                        k= true
                        break
                    end
                end
            end
        end
    end
    if not j then
        for e,r in ipairs(e:GetChildren())do
            local a=r:GetAttribute( "Owner" )or r:GetAttribute( "OwnerUserId" )or r:GetAttribute( "UserId" )or r:GetAttribute( "OwnerId" )or r:GetAttribute( "Player" )
            if a and((a==y or tostring(a)==tostring(y)or a==u or tostring(a)==u or a==w))then
                j=r k= true
                break
            end
            for e,a in ipairs({ "Owner" , "OwnerUserId" , "OwnerId" ;
                "UserId" ;
                "Player" ;
                "PlayerName" })do
                local o=r:FindFirstChild(a)
                if o and((o.Value ==y or tostring(o.Value )==tostring(y)or o.Value ==u or o.Value ==w))then
                    j=r k= true
                    break
                end
            end
            if j then
                break
            end
        end
    end
    if not j then
        for e,r in ipairs(e:GetChildren())do
            for e,y in ipairs(r:GetDescendants())do
                if y:IsA( "TextLabel" )and y.Text ~= "" then
                    local e=string.lower (y.Text )
                    if string.find (e,string.lower (u), 1 , true )or(w and string.find (e,string.lower (w), 1 , true ))then
                        j=r k= true
                        break
                    end
                end
            end
            if j then
                break
            end
        end
    end
    if not j then
        local r=LocalPlayer.Character
        local y=r and r:FindFirstChild( "HumanoidRootPart" )
        if y and y.Position.X <=(BASE_EDGE_X+ 30 )then
            local r=nil
            local u= 999999
            for e,w in ipairs(e:GetChildren())do
                local j=w:FindFirstChild( "CenterPoint" )or w.PrimaryPart or w:FindFirstChildWhichIsA( "BasePart" )
                if j then
                    local e=((y.Position -j.Position )).Magnitude
                    if e<u then
                        u=e r=w
                    end
                end
            end
            if r and u< 160 then
                j=r
            end
        end
    end
    if not j then
        j=e:FindFirstChild( "2" )or e:FindFirstChild( "1" )or(e:GetChildren())[ 1 ]
    end
    if not j then
        return nil,nil,nil
    end
    state.plot =j state.plotVerified =k state.origin =j:FindFirstChild( "CenterPoint" )
    local a=j:FindFirstChild( "ToUpdate" )state.pen =(a and a:FindFirstChild( "PetArea" ))or j:FindFirstChild( "PetArea" )state.tread =j:FindFirstChild( "TreadmillBottom" )
    if not state.pen and a then
        for e,r in ipairs(a:GetChildren())do
            if r:IsA( "BasePart" )and string.find (string.lower (r.Name ), "pet" )then
                state.pen =r
                break
            end
        end
    end
    if not state.origin then
        state.origin =j:FindFirstChild( "CenterPoint" )or state.pen or j.PrimaryPart
    end
    if not state.pen then
        state.pen =state.origin
    end
    return state.plot ,state.pen ,state.origin
end
getBaseDropPosition=function(...)
    local e,r,y=findPlayerPlot()
    if r then
        return r.Position +Vector3.new ( 0 , 3.5 , 0 )
    end
    if y then
        return y.Position +Vector3.new ( 0 , 3.5 , 0 )
    end
    return Vector3.new ( 464.7 , 71.7 , -304 )
end
chooseEggPlacementCFrame=function(e,...)
    local r,y,u=findPlayerPlot()
    if not y then
        return nil
    end
    local w=y.Size
    local j=math.max ( 4 ,w.X / 2 - 5 )
    local k=math.max ( 4 ,w.Z / 2 - 5 )
    for r= 1 , 60 , 1 do
        local u=math.random (-math.floor (j),math.floor (j))
        local o=math.random (-math.floor (k),math.floor (k))
        local V=y.CFrame *CFrame.new (u,w.Y / 2 + 1 ,o)
        local H= true
        for e,r in ipairs(e)do
            if((r-V.Position )).Magnitude < 5.5 then
                H= false
                break
            end
        end
        if H then
            return V
        end
    end
    return y.CFrame *CFrame.new (math.random ( -8 , 8 ),w.Y / 2 + 1 ,math.random ( -8 , 8 ))
end
placeInventoryEggs=function(...)
    local e,r,y=findPlayerPlot()
    if not y or not AskPlaceEggRemote then
        return 0
    end
    local u= 0
    local w={}
    if AskLiveSnapshotRemote then
        local e,r=pcall(function(...)
            return AskLiveSnapshotRemote:InvokeServer()
        end
        )
        if e and type(r)== "table" then
            local e={}
            for r,y in pairs(r)do
                if type(y)== "table" and y.OwnerUserId ==LocalPlayer.UserId then
                    for r,y in pairs(y.Records or{})do
                        e[r]=y
                    end
                end
            end
            for e,r in pairs(e)do
                if r.Placement and r.Placement.LocalCFrame then
                    w[#w+ 1 ]=((y.CFrame *r.Placement.LocalCFrame )).Position
                else
                    local r=chooseEggPlacementCFrame(w)
                    if r then
                        local j=y.CFrame :ToObjectSpace(r)
                        local k,a=pcall(function(...)
                            return AskPlaceEggRemote:InvokeServer({[ "Uid" ]=e;
                            [ "LocalCFrame" ]=j})
                        end
                        )
                        if k and a then
                            u=u+ 1 w[#w+ 1 ]=r.Position
                        end
                    end
                end
            end
        end
    end
    local j={}
    local k=LocalPlayer.Character
    if k then
        for e,r in ipairs(k:GetChildren())do
            if isEggTool(r)then
                table.insert (j,r)
            end
        end
    end
    local a=LocalPlayer:FindFirstChild( "Backpack" )
    if a then
        for e,r in ipairs(a:GetChildren())do
            if isEggTool(r)then
                table.insert (j,r)
            end
        end
    end
    for e,r in ipairs(j)do
        if not state.alive then
            break
        end
        local j=r:GetAttribute( "UID" )or r:GetAttribute( "EggUid" )or r.Name
        local k=chooseEggPlacementCFrame(w)
        if k then
            local e=y.CFrame :ToObjectSpace(k)
            local r,a=pcall(function(...)
                return AskPlaceEggRemote:InvokeServer({[ "Uid" ]=j,[ "LocalCFrame" ]=e})
            end
            )
            if r and a~= false then
                u=u+ 1 w[#w+ 1 ]=k.Position logInfo(string.format ( "[PlaceEgg] Placed egg %s from inventory" ,tostring(j)))
            end
            task.wait ( 0.04 )
        end
    end
    return u
end
hatchReadyEggs=function(e,...)
    if(not e and not state.autoHatch )or not AskHatchRemote or not AskFinishHatchRemote or not AskLiveSnapshotRemote then
        return 0
    end
    if state.isHatching then
        return 0
    end
    state.isHatching = true
    local y,u=pcall(function(...)
        return AskLiveSnapshotRemote:InvokeServer()
    end
    )
    if not y or type(u)~= "table" then
        return 0
    end
    local w={}
    for e,r in pairs(u)do
        if type(r)== "table" and r.OwnerUserId ==LocalPlayer.UserId then
            for e,r in pairs(r.Records or{})do
                w[e]=r
            end
        end
    end
    local j={}
    local k=Workspace:GetServerTimeNow()
    for e,r in pairs(w)do
        if not state.alive then
            break
        end
        if r.Placement then
            local y=nil
            if EggState then
                local r=EggState.IsReadyToHatch or EggState.IsLocalEggReady
                if r then
                    local u,w=pcall(r,e)
                    if u and type(w)== "boolean" then
                        y=w
                    end
                end
            end
            if y==nil then
                local e=r.Placement.PlacedAt or r.Placement.Time or 0
                local u= 30
                if AssetItems and(AssetItems.Assets and AssetItems.Assets [r.AssetCategory ])then
                    local e=AssetItems.Assets [r.AssetCategory ]u=(e and(e.Egg and e.Egg.GrowthTime ))or 30
                end
                local w=u/math.max ( 0.01 ,r.GrowthSpeedMultiplier or 1 )y=(k-e)>=w
            end
            if y then
                table.insert (j,{[ "uid" ]=e;
                [ "category" ]=r.AssetCategory or "Egg" })
            end
        end
    end
    if#j== 0 then
        state.isHatching = false
        return 0
    end
    logInfo(string.format ( "[AutoHatch] Found %d eggs ready to hatch! Starting hatch sequence..." ,#j))state.statusText =string.format ( "[Hatch] Hatching %d ready eggs..." ,#j)
    local a= 0
    for e,r in ipairs(j)do
        task.spawn (function(...)
            local e,y=pcall(function(...)
                if AskHatchRemote:IsA( "RemoteFunction" )then
                    return AskHatchRemote:InvokeServer(r.uid )
                else
                    AskHatchRemote:FireServer(r.uid )
                    return true
                end
            end
            )
            if e and y~= false then
                task.wait ( 0.9 )
                local e,y=pcall(function(...)
                    if AskFinishHatchRemote:IsA( "RemoteFunction" )then
                        return AskFinishHatchRemote:InvokeServer(r.uid )
                    else
                        AskFinishHatchRemote:FireServer(r.uid )
                        return true
                    end
                end
                )
                if e and y~= false then
                    a=a+ 1 state.hatched =((state.hatched or 0 ))+ 1 logInfo(string.format ( "[+] [AutoHatch] Hatched %s (UID: %s) -> Total Hatched: %d" ,r.category ,tostring(r.uid ),state.hatched ))
                end
            end
        end
        )task.wait ( 0.04 )
    end
    task.wait ( 0.95 )state.isHatching = false logInfo(string.format ( "[AutoHatch] Finished! Hatched %d eggs." ,a))
    return a
end
getTrapHitboxes=function(...)
    local e={}
    local y=Workspace:FindFirstChild( "__DEBRIS" )
    if y then
        for r,y in ipairs(y:GetChildren())do
            local u=y:FindFirstChild( "Hitbox" )
            if u and u:IsA( "BasePart" )then
                table.insert (e,u)
            elseif y:IsA( "BasePart" )and string.find (y.Name :lower(), "hitbox" )then
                table.insert (e,y)
            end
        end
    end
    local u=Workspace:FindFirstChild( "BossArenaTeleport" )
    if u then
        local r=u:FindFirstChild( "Hitbox" )or u:FindFirstChildWhichIsA( "BasePart" )or(u:IsA( "BasePart" )and u)
        if r and r:IsA( "BasePart" )then
            table.insert (e,r)
        end
    end
    return e
end
tweenHomeToBase=function(e,r,u,...)
    local w=LocalPlayer.Character
    local j=w and w:FindFirstChild( "HumanoidRootPart" )
    local k=w and w:FindFirstChildOfClass( "Humanoid" )
    if not j then
        return false
    end
    if k then
        k.AutoRotate = false
    end
    local a=getBaseDropPosition()e=math.max ( 100 ,e or state.glideSpeed or 600 )
    local V=state.laneZ or SAFE_LANE_Z state.isReturning = true state.stateTime =os.clock ()createSafetyFloor(a, 20 )j.AssemblyLinearVelocity =Vector3.zero j.AssemblyAngularVelocity =Vector3.zero
    local H=getCarriedEggReturnSpeed()
    local t=math.max (e,H)
    local s=os.clock ()+ 25
    while state.alive and(state.isReturning and os.clock ()<s)do
        if r and farmSessionId~=r then
            if k then
                k.AutoRotate = true
            end
            state.isReturning = false
            return false
        end
        if not u and(not state.pureTweenFarm and not state.autoFarmLoop )then
            if k then
                k.AutoRotate = true
            end
            state.isReturning = false
            return false
        end
        local e=j.Position
        local w=((a-e)).Magnitude
        if(e.X <=(a.X + 3 )and math.abs (e.Z -a.Z )<= 8 )or w<= 6 then
            break
        end
        local o=RunService.Heartbeat :Wait()e=j.Position
        local H=t
        if e.X <=FIELD_SLOWDOWN_X and e.X >BASE_EDGE_X then
            local r=math.clamp (((e.X -BASE_EDGE_X))/((FIELD_SLOWDOWN_X-BASE_EDGE_X)), 0 , 1 )H=BASE_RETURN_SPEED+(((t-BASE_RETURN_SPEED))*r)
        elseif e.X <=BASE_EDGE_X then
            H=BASE_RETURN_SPEED
        end
        local s=a.Z
        if e.X > 540 then
            s=V
        end
        local B=math.sign (a.X -e.X )
        local J=B*math.min (math.abs (a.X -e.X ),H*o)
        local K=e.X +J
        local c=math.sign (a.Y -e.Y )
        local v=c*math.min (math.abs (a.Y -e.Y ),(H*o)* 0.5 )
        local i=e.Y +v
        local R=s-e.Z
        local g=math.sign (R)*math.min (math.abs (R),H*o)
        local Q=e.Z +g
        local P=getTrapHitboxes()
        local N= false
        if e.X >BASE_EDGE_X then
            for e,r in ipairs(P)do
                local y=r.Position
                local u=((Vector3.new (K,i,Q)-y)).Magnitude
                local w=math.abs (K-y.X )
                local j=math.abs (Q-y.Z )
                if u< 22 or(w< 18 and j< 14 )then
                    N= true
                    local e=y.Y + 16
                    if i<e then
                        i=math.min (i+((H*o)* 1.5 ),e)
                    end
                    break
                end
            end
        end
        local U=Vector3.new (K,i,Q)
        local l=((U-e)).Magnitude > 0.05 and((U-e)).Unit or j.CFrame.LookVector j.CFrame =CFrame.lookAt (U,U+l)j.AssemblyLinearVelocity =Vector3.zero j.AssemblyAngularVelocity =Vector3.zero
        if N then
            state.statusText =string.format ( "Tweening Home (Z: %.0f) [DODGING TRAP!]" ,Q)
        else
            state.statusText =string.format ( "Tweening Home (%.0f studs | Z: %.0f | Spd: %.0f)" ,w,Q,H)
        end
    end
    j.CFrame =CFrame.new (a)j.AssemblyLinearVelocity =Vector3.zero j.AssemblyAngularVelocity =Vector3.zero
    if k then
        k.AutoRotate = true
    end
    stashEquippedTools()state.isReturning = false state.delivering = false state.statusText = "Arrived at Base PetArea!"
    return true
end
placeAndHatchInventory=function(e,r,y,...)
    local u=LocalPlayer.Character
    local w=u and u:FindFirstChild( "HumanoidRootPart" )
    local j=u and u:FindFirstChildOfClass( "Humanoid" )
    if not w or not j then
        return
    end
    local k=getBaseDropPosition()
    local a=((w.Position -k)).Magnitude
    if a> 8 then
        state.statusText = "[Place] Tweening back to base plot..." tweenHomeToBase(e or state.glideSpeed or 600 ,r, true )
    end
    createSafetyFloor(k, 15 )w.CFrame =CFrame.new (k)w.AssemblyLinearVelocity =Vector3.zero state.statusText = "[Place] Placing All Eggs to Stand..."
    local V=os.clock ()+ 3
    while countCarriedEggs()> 0 and(os.clock ()<V and state.alive )do
        placeInventoryEggs()task.wait ( 0.06 )
    end
    state.statusText = "[Place] Hatching ready eggs..." hatchReadyEggs( true )stashEquippedTools()state.isReturning = false state.delivering = false state.currentTargetModel =nil state.targetPosition =nil
    local H=countCarriedEggs()state.statusText =string.format ( "Placed & Hatched (Left: %d)! Hands Free." ,H)
end
local AUTO_PLACE_BATCH_SIZE= 5 runBatchAutoPlace=function(e,...)
    if state.isBatchPlacing then
        return
    end
    state.isBatchPlacing = true logInfo(string.format ( "[AutoPlace] %d steals done! Batch placing (%s mode)..." ,AUTO_PLACE_BATCH_SIZE,tostring(e)))
    local r=farmSessionId state.pureTweenFarm =(e== "TWEEN" )state.autoFarmLoop =(e== "WARP" )
    local y=LocalPlayer.Character
    local u=y and y:FindFirstChild( "HumanoidRootPart" )
    local w=y and y:FindFirstChildOfClass( "Humanoid" )
    local j=getBaseDropPosition()
    local k=u and((u.Position -j)).Magnitude or 999
    if k> 8 then
        state.statusText = "[AutoPlace] Tweening home to base plot..." tweenHomeToBase(state.glideSpeed or 600 ,r, true )
    end
    if u then
        createSafetyFloor(j, 20 )u.CFrame =CFrame.new (j)u.AssemblyLinearVelocity =Vector3.zero u.AssemblyAngularVelocity =Vector3.zero
        if w then
            w.AutoRotate = true
        end
    end
    task.spawn (function(...) pcall(placeInventoryEggs)pcall(hatchReadyEggs, true )
    end
    )stashEquippedTools()state.isReturning = false state.delivering = false state.glidingToTarget = false state.securingEgg = false state.teleporting = false state.currentTargetModel =nil state.targetPosition =nil
    for e= 5 , 1 , -1 do
        if not state.alive then
            break
        end
        state.statusText =string.format ( "[AutoPlace] At Base: Resuming in %ds..." ,e)task.wait ( 1 )
    end
    state.isBatchPlacing = false
    if state.alive and farmSessionId==r then
        logInfo(string.format ( "[AutoPlace] Done! Continuing %s farm." ,e))state.statusText =string.format ( "[AutoPlace] Resuming %s farm..." ,e)
        if e== "TWEEN" then
            state.pureTweenFarm = true state.autoFarmLoop = false
        elseif e== "WARP" then
            state.autoFarmLoop = true state.pureTweenFarm = false
        end
        currentFarmMode=e
    end
end
countStealAndMaybeBatchPlace=function(e,...)
    if not state.autoPlaceEvery5 then
        return false
    end
    state.batchStealCount =((state.batchStealCount or 0 ))+ 1 logInfo(string.format ( "[AutoPlace] Steal trip %d / %d completed successfully." ,state.batchStealCount ,AUTO_PLACE_BATCH_SIZE))
    if state.batchStealCount >=AUTO_PLACE_BATCH_SIZE then
        state.batchStealCount = 0 task.spawn (function(...) runBatchAutoPlace(e)
        end
        )
        return true
    end
    return false
end
local function glideToCFrame(e,r,u,w,...)
    local j=LocalPlayer.Character
    local k=j and j:FindFirstChild( "HumanoidRootPart" )
    local a=j and j:FindFirstChildOfClass( "Humanoid" )
    if not k then
        return false
    end
    if a then
        a.AutoRotate = false
    end
    r=math.max ( 60 ,r or state.glideSpeed or 350 )
    local V=e.Position createSafetyFloor(V, 14 )pcall(function(...) LocalPlayer:RequestStreamAroundAsync(V)
    end
    )k.AssemblyLinearVelocity =Vector3.zero k.AssemblyAngularVelocity =Vector3.zero
    local H=state.laneZ or SAFE_LANE_Z state.glidingToTarget = true state.stateTime =os.clock ()
    local t= 0
    local s=os.clock ()+ 15
    while state.alive and(state.glidingToTarget and os.clock ()<s)do
        if w and farmSessionId~=w then
            if a then
                a.AutoRotate = true
            end
            state.glidingToTarget = false
            return false
        end
        if not state.pureTweenFarm and(not state.autoFarmLoop and not state.teleporting )then
            if a then
                a.AutoRotate = true
            end
            state.glidingToTarget = false
            return false
        end
        local e=k.Position
        local j=((V-e)).Magnitude
        local o=((Vector2.new (e.X ,e.Z )-Vector2.new (V.X ,V.Z ))).Magnitude
        local s=math.abs (e.Y -V.Y )
        if j<= 6 or(o<= 3.5 and s<= 6 )then
            break
        end
        local B=RunService.Heartbeat :Wait()e=k.Position j=((V-e)).Magnitude o=((Vector2.new (e.X ,e.Z )-Vector2.new (V.X ,V.Z ))).Magnitude
        local J=math.abs (e.X -V.X )
        if u and(os.clock ()-t> 0.5 )then
            t=os.clock ()
            local e,r=checkEggAvailability(u)
            if not e and r== "CarriedByOther" then
                if a then
                    a.AutoRotate = true
                end
                state.glidingToTarget = false
                return false
            end
        end
        local K=V.Z
        if J> 40 then
            K=H
        end
        local c=math.sign (V.X -e.X )
        local v=c*math.min (math.abs (V.X -e.X ),r*B)
        local i=e.X +v
        local R=(o<= 25 )and 1.2 or 0.5
        local g=math.sign (V.Y -e.Y )
        local Q=g*math.min (math.abs (V.Y -e.Y ),(r*B)*R)
        local P=e.Y +Q
        local N=K-e.Z
        local U=math.sign (N)*math.min (math.abs (N),r*B)
        local l=e.Z +U
        local D= false
        if o> 25 then
            local e=getTrapHitboxes()
            for e,y in ipairs(e)do
                local u=y.Position
                local w=((Vector3.new (i,P,l)-u)).Magnitude
                local j=math.abs (i-u.X )
                local k=math.abs (l-u.Z )
                if w< 22 or(j< 18 and k< 14 )then
                    D= true
                    local e=u.Y + 16
                    if P<e then
                        P=math.min (P+((r*B)* 1.5 ),e)
                    end
                    break
                end
            end
        end
        local C=Vector3.new (i,P,l)
        local q=((C-e)).Magnitude > 0.05 and((C-e)).Unit or k.CFrame.LookVector k.CFrame =CFrame.lookAt (C,C+q)k.AssemblyLinearVelocity =Vector3.zero k.AssemblyAngularVelocity =Vector3.zero
        if D then
            state.statusText =string.format ( "Gliding Out (Z: %.0f) [DODGING TRAP!]" ,l)
        else
            state.statusText =string.format ( "Gliding -> Egg (%.0f studs | H: %.0f)" ,j,o)
        end
    end
    k.CFrame =e*CFrame.new ( 0 , 0.4 , 0 )k.AssemblyLinearVelocity =Vector3.zero k.AssemblyAngularVelocity =Vector3.zero
    if a then
        a.AutoRotate = true
    end
    state.glidingToTarget = false
    return true
end
glideToTargetViaWaypoint=function(e,r,y,u,...)
    local w=LocalPlayer.Character
    local j=w and w:FindFirstChild( "HumanoidRootPart" )
    if j then
        local w=j.Position.X
        local a=e.Position.X
        if w<= 535 and a> 510 then
            local e=CFrame.new ( 500 , 70 , -364 )
            local a=((j.Position -e.Position )).Magnitude
            if a> 5 then
                state.statusText = "[AutoSteal] Exiting Base -> Waypoint (500, 70, -364)..." logInfo(string.format ( "[AutoSteal] Leaving base (X=%.1f): Gliding to waypoint (500, 70, -364) first (dist=%.1f studs)..." ,w,a))
                local j=glideToCFrame(e,r,y,u)
                if not j then
                    return false
                end
                task.wait ( 0.04 )
            end
        end
    end
    return glideToCFrame(e,r,y,u)
end
returnToSafeLine=function(e,r,eggUid,returnMode,...)
    local u=LocalPlayer.Character
    local w=u and u:FindFirstChild( "HumanoidRootPart" )
    local j=u and u:FindFirstChildOfClass( "Humanoid" )
    if not w then
        return false
    end
    if j then
        j.AutoRotate = false
    end
    local k=state.laneZ or SAFE_LANE_Z
    local a=Vector3.new (BASE_EDGE_X- 10 , 70 ,k)e=math.max ( 100 ,e or state.glideSpeed or 350 )state.isReturning = true state.stateTime =os.clock ()createSafetyFloor(Vector3.new (BASE_EDGE_X, 70 ,k), 20 )pcall(stashEquippedTools)w.AssemblyLinearVelocity =Vector3.zero w.AssemblyAngularVelocity =Vector3.zero
    local V=getCarriedEggReturnSpeed()
    local H=math.max (e,V)
    local s=os.clock ()+ 15
    local lastReturnEggCheck = 0
    while state.alive and(state.isReturning and os.clock ()<s)do
        if r and farmSessionId~=r then
            logWarn( "[Return] Aborted by session switch!" )
            if j then
                j.AutoRotate = true
            end
            state.isReturning = false
            return false
        end
        if not state.pureTweenFarm and not state.autoFarmLoop then
            logWarn( "[Return] Aborted (all farms disabled)" )
            if j then
                j.AutoRotate = true
            end
            state.isReturning = false
            return false
        end
        -- Continuously verify the stolen UID while returning. If it dropped,
        -- pause the return, recover it, then resume from the current position.
        if r and eggUid and (os.clock() - lastReturnEggCheck) >= 0.12 then
            lastReturnEggCheck = os.clock()
            if not hasEggInInventory(eggUid) then
                local recovered = recoverDroppedEggDuringReturn(eggUid, returnMode, r)
                if not recovered then
                    if j then
                        j.AutoRotate = true
                    end
                    state.isReturning = false
                    return false
                end
            end
        end

        local e=w.Position
        local o=((a-e)).Magnitude
        if e.X <=(BASE_EDGE_X+ 10 )or o<= 6 then
            stashEquippedTools()
            break
        end
        if u then
            for e,r in ipairs(u:GetChildren())do
                if r:IsA( "Tool" )then
                    pcall(stashEquippedTools)
                    break
                end
            end
        end
        local V=RunService.Heartbeat :Wait()e=w.Position
        local s=H
        if e.X <=FIELD_SLOWDOWN_X and e.X >BASE_EDGE_X then
            local r=math.clamp (((e.X -BASE_EDGE_X))/((FIELD_SLOWDOWN_X-BASE_EDGE_X)), 0 , 1 )s=BASE_RETURN_SPEED+(((H-BASE_RETURN_SPEED))*r)
        elseif e.X <=BASE_EDGE_X then
            s=BASE_RETURN_SPEED
        end
        local B=math.sign (a.X -e.X )
        local J=B*math.min (math.abs (a.X -e.X ),s*V)
        local K=e.X +J
        local c=math.sign (a.Y -e.Y )
        local v=c*math.min (math.abs (a.Y -e.Y ),(s*V)* 0.5 )
        local i=e.Y +v
        local R=k-e.Z
        local g=math.sign (R)*math.min (math.abs (R),s*V)
        local Q=e.Z +g
        local P=getTrapHitboxes()
        local N= false
        for e,r in ipairs(P)do
            local y=r.Position
            local u=((Vector3.new (K,i,Q)-y)).Magnitude
            local w=math.abs (K-y.X )
            local j=math.abs (Q-y.Z )
            if u< 22 or(w< 18 and j< 14 )then
                N= true
                local e=y.Y + 16
                if i<e then
                    i=math.min (i+((s*V)* 1.5 ),e)
                end
                break
            end
        end
        local U=Vector3.new (K,i,Q)
        local l=((U-e)).Magnitude > 0.05 and((U-e)).Unit or w.CFrame.LookVector w.CFrame =CFrame.lookAt (U,U+l)w.AssemblyLinearVelocity =Vector3.zero w.AssemblyAngularVelocity =Vector3.zero
        if N then
            state.statusText =string.format ( "Tweening Safe Line (Z: %.0f) [DODGING!]" ,Q)
        else
            state.statusText =string.format ( "Tweening to Safe Line (%.0f studs | X: %.0f)" ,o,e.X )
        end
    end
    w.CFrame =CFrame.new (BASE_EDGE_X,math.max ( 68 ,w.Position.Y ),k)w.AssemblyLinearVelocity =Vector3.zero w.AssemblyAngularVelocity =Vector3.zero
    if j then
        j.AutoRotate = true
    end
    stashEquippedTools()state.isReturning = false state.delivering = false
    if state then
        state.onTreadmill = false
    end
    state.statusText = "Arrived at Safe Line (X=525)! Hands Free."
    return true
end
local function findTreadmillPartInPlot(e,...)
    if not e then
        return nil
    end
    local r=e:FindFirstChild( "TreadmillBottom" )
    if r and r:IsA( "BasePart" )then
        return r
    end
    r=e:FindFirstChild( "TreadmillBottom" , true )
    if r and r:IsA( "BasePart" )then
        return r
    end
    local y=e:FindFirstChild( "TreadmillUpgrade" , true )
    if y then
        for e,r in ipairs({ "TreadmillBottom" , "Belt" , "RunArea" ;
            "Run" ;
            "Platform" ;
            "Pad" , "Floor" ;
            "Base" })do
            local w=y:FindFirstChild(r, true )
            if w and w:IsA( "BasePart" )then
                return w
            end
        end
        local e=nil
        local r= 999999
        for y,w in ipairs(y:GetDescendants())do
            if w:IsA( "BasePart" )and(w.Size.X >= 1.2 and w.Size.Z >= 1.2 )then
                if w.Position.Y <r then
                    r=w.Position.Y e=w
                end
            end
        end
        if e then
            return e
        end
        if y.PrimaryPart then
            return y.PrimaryPart
        end
        local w=y:FindFirstChildWhichIsA( "BasePart" , true )
        if w then
            return w
        end
    end
    for e,r in ipairs(e:GetDescendants())do
        if r:IsA( "BasePart" )and string.find (string.lower (r.Name ), "treadmill" )then
            return r
        end
    end
    return nil
end
getTreadmillPart=function(...)
    local e=findPlayerPlot()
    if state.tread and state.tread.Parent then
        return state.tread
    end
    local y=nil
    if e then
        y=findTreadmillPartInPlot(e)
    end
    if not y then
        local w=Workspace:FindFirstChild( "Plots" )
        if w then
            local r=string.lower (LocalPlayer.Name )
            local j=LocalPlayer.DisplayName and string.lower (LocalPlayer.DisplayName )
            for e,w in ipairs(w:GetChildren())do
                local k=findTreadmillPartInPlot(w)
                if k then
                    local e= false
                    for y,w in ipairs(w:GetDescendants())do
                        if w:IsA( "TextLabel" )and w.Text ~= "" then
                            local y=string.lower (w.Text )
                            if string.find (y,r, 1 , true )or(j and string.find (y,j, 1 , true ))then
                                e= true
                                break
                            end
                        end
                    end
                    if e then
                        state.plot =w state.plotVerified = true y=k
                        break
                    end
                end
            end
            if not y and e then
                y=findTreadmillPartInPlot(e)
            end
        end
    end
    state.tread =y
    return y
end
mountTreadmill=function(e,...)
    local r=LocalPlayer.Character
    local u=r and r:FindFirstChild( "HumanoidRootPart" )
    local w=r and r:FindFirstChildOfClass( "Humanoid" )
    if not u or not w then
        return false
    end
    if w.PlatformStand then
        w.PlatformStand = false
    end
    if w.Sit then
        w.Sit = false
    end
    w:ChangeState(Enum.HumanoidStateType.Running )
    local j=findPlayerPlot()
    local k=getTreadmillPart()
    if not k then
        logWarn( "[AutoTreadmill] Treadmill part not found! Retrying next loop..." )
        return false
    end
    pcall(function(...)
        for r,y in ipairs(r:GetChildren())do
            if y:IsA( "BasePart" )and y.Name ~= "HumanoidRootPart" then
                y.CanCollide = false
            end
        end
    end
    )pcall(function(...) k.CanTouch = true k.CanCollide = true
        local e=j and j:FindFirstChild( "TreadmillUpgrade" , true )
        if e then
            for e,y in ipairs(e:GetDescendants())do
                if y:IsA( "BasePart" )then
                    y.CanTouch = true y.CanCollide = true
                end
            end
        end
        if k.Parent and k.Parent :IsA( "Model" )then
            for e,y in ipairs(k.Parent :GetDescendants())do
                if y:IsA( "BasePart" )then
                    y.CanTouch = true y.CanCollide = true
                end
            end
        end
    end
    )
    local a=k.Position +Vector3.new ( 0 , 1.8 , 0 )
    if u.Position.X > 535 then
        state.statusText = "[AutoTreadmill] Returning along highway to base..." returnToSafeLine(state.glideSpeed ,e)
        if e and farmSessionId~=e then
            return false
        end
        if u.Position.X > 535 then
            if u.Position.X <= 560 then
                u.CFrame =CFrame.new (BASE_EDGE_X, 70 ,state.laneZ or SAFE_LANE_Z)
            else
                return false
            end
        end
    end
    if e and farmSessionId~=e then
        return false
    end
    local V=((Vector2.new (u.Position.X ,u.Position.Z )-Vector2.new (a.X ,a.Z ))).Magnitude
    if V> 4 then
        state.statusText = "[AutoTreadmill] Elevated flyover to base plot..."
        local r=math.max ( 250 ,state.glideSpeed or 400 )
        local j=os.clock ()
        while state.alive and(((Vector2.new (u.Position.X ,u.Position.Z )-Vector2.new (a.X ,a.Z ))).Magnitude > 4 and(os.clock ()-j< 4 ))do
            if e and farmSessionId~=e then
                return false
            end
            local j=RunService.Heartbeat :Wait()
            local k=u.Position
            local o=Vector3.new (a.X , 70 ,a.Z )
            local V=(o-k)
            local H=V.Unit *math.min (V.Magnitude ,r*j)
            local t=k+H u.CFrame =CFrame.lookAt (t,t+((V.Magnitude > 0.05 and V.Unit or u.CFrame.LookVector )))u.AssemblyLinearVelocity =Vector3.zero u.AssemblyAngularVelocity =Vector3.zero
            if w then
                if w.PlatformStand then
                    w.PlatformStand = false
                end
                if w.Sit then
                    w.Sit = false
                end
                w:ChangeState(Enum.HumanoidStateType.Running )
            end
        end
    end
    if e and farmSessionId~=e then
        return false
    end
    local H=os.clock ()
    while state.alive and(math.abs (u.Position.Y -a.Y )> 2 and(os.clock ()-H< 1.5 ))do
        if e and farmSessionId~=e then
            return false
        end
        local r=RunService.Heartbeat :Wait()
        local w=u.Position
        local j=a
        local k=(j-w)
        local o=k.Unit *math.min (k.Magnitude , 150 *r)
        local V=w+o u.CFrame =CFrame.new (V)u.AssemblyLinearVelocity =Vector3.zero u.AssemblyAngularVelocity =Vector3.zero
    end
    u.CFrame =CFrame.new (a)u.AssemblyLinearVelocity =Vector3.zero u.AssemblyAngularVelocity =Vector3.zero
    local s=((u.Position -a)).Magnitude
    if s<= 6 then
        pcall(function(...)
            if typeof(firetouchinterest)== "function" then
                firetouchinterest(u,k, 0 )task.wait ( 0.02 )firetouchinterest(u,k, 1 )
            end
        end
        )pcall(function(...)
            for r,y in ipairs(k:GetDescendants())do
                if y:IsA( "ProximityPrompt" )and y.Enabled then
                    if typeof(fireproximityprompt)== "function" then
                        fireproximityprompt(y)
                    end
                end
            end
            if k.Parent then
                for r,y in ipairs(k.Parent :GetDescendants())do
                    if y:IsA( "ProximityPrompt" )and y.Enabled then
                        if typeof(fireproximityprompt)== "function" then
                            fireproximityprompt(y)
                        end
                    end
                end
            end
        end
        )
        if TreadmillMountRemote then
            pcall(function(...) TreadmillMountRemote:InvokeServer()
            end
            )
        end
        state.onTreadmill = true state.lastTreadmillMount =os.clock ()state.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
        return true
    else
        state.onTreadmill = false logWarn(string.format ( "[AutoTreadmill] Not yet at treadmill pad (dist=%.1f studs). Will retry!" ,s))
        return false
    end
end
local function hideNotEnoughMoneyLabels(...)
    if not state or not state.hideNotEnoughMoney then
        return
    end
    local e=LocalPlayer:FindFirstChild( "PlayerGui" )
    if not e then
        return
    end
    pcall(function(...)
        for e,y in ipairs(e:GetDescendants())do
            if y:IsA( "TextLabel" )and y.Visible then
                local e=(tostring(y.Text or "" )):lower()
                if e:find( "not enough money" )or e:find( "not enough cash" )or(e:find( "not enough" )and((e:find( "money" )or e:find( "cash" )or e:find( "coin" )or e:find( "fund" ))))then
                    y.Visible = false y.TextTransparency = 1 y.TextStrokeTransparency = 1
                    local e=y.Parent
                    if e and(((e:IsA( "Frame" )or e:IsA( "CanvasGroup" )))and#e:GetChildren()<= 3 )then
                        e.Visible = false
                    end
                end
            end
        end
    end
    )
end
local function installMoneyAlertSuppressor(...)
    local e=LocalPlayer:FindFirstChild( "PlayerGui" )
    if not e then
        return
    end
    local function r(e,...)
        if e:IsA( "TextLabel" )then
            local function y(...)
                if not state or not state.hideNotEnoughMoney then
                    return
                end
                local y=(tostring(e.Text or "" )):lower()
                if y:find( "not enough money" )or y:find( "not enough cash" )or(y:find( "not enough" )and((y:find( "money" )or y:find( "cash" )or y:find( "coin" )or y:find( "fund" ))))then
                    e.Visible = false e.TextTransparency = 1 e.TextStrokeTransparency = 1
                    local r=e.Parent
                    if r and(((r:IsA( "Frame" )or r:IsA( "CanvasGroup" )))and#r:GetChildren()<= 3 )then
                        r.Visible = false
                    end
                end
            end
            y();
            (e:GetPropertyChangedSignal( "Text" )):Connect(y);
            (e:GetPropertyChangedSignal( "Visible" )):Connect(function(...)
                if e.Visible then
                    y()
                end
            end
            )
        end
    end
    pcall(function(...)
        for e,y in ipairs(e:GetDescendants())do
            task.spawn (r,y)
        end
        e.DescendantAdded :Connect(r)
    end
    )task.spawn (function(...)
        while state and state.alive do
            if state.hideNotEnoughMoney then
                hideNotEnoughMoneyLabels()
            end
            task.wait ( 0.25 )
        end
    end
    )
end
task.spawn (installMoneyAlertSuppressor)
local function parseCashText(e,...)
    if not e then
        return 0
    end
    local r=(((tostring(e)):gsub( "[$,]" , "" )):gsub( "%s+" , "" )):lower()
    local y=r:match( "[%d%.]+" )
    if not y then
        return 0
    end
    local u=tonumber(y)
    if not u then
        return 0
    end
    if r:find( "sp" )then
        return u* 999999999999999983222784
    elseif r:find( "sx" )then
        return u* 1000000000000000000000
    elseif r:find( "qi" )then
        return u* 1000000000000000000
    elseif r:find( "qa" )or r:find( "q" )then
        return u* 1000000000000000
    elseif r:find( "t" )then
        return u* 1000000000000
    elseif r:find( "b" )then
        return u* 1000000000
    elseif r:find( "m" )then
        return u* 1000000
    elseif r:find( "k" )then
        return u* 1000
    end
    return u
end
local function getPlayerMoney(...)
    local e=LocalPlayer:FindFirstChild( "leaderstats" )
    if e then
        for r,u in ipairs({ "Money" , "Cash" , "Coins" ;
            "Currency" })do
            local w=e:FindFirstChild(u)
            if w then
                local e=tonumber(w.Value )or parseCashText(w.Value )
                if e and e> 0 then
                    return e
                end
            end
        end
    end
    local r=LocalPlayer:FindFirstChild( "PlayerGui" )
    if r then
        local e=r:FindFirstChild( "HUD" )or r:FindFirstChild( "GameHUD" )or r:FindFirstChild( "MainHUD" )or r:FindFirstChild( "Main" )
        if e then
            for e,r in ipairs(e:GetDescendants())do
                if r:IsA( "TextLabel" )and r.Visible then
                    local e=r.Name :lower()
                    if e== "money" or e== "cash" or e== "coins" or e== "currency" or e== "value" then
                        local e=parseCashText(r.Text )
                        if e and e> 0 then
                            return e
                        end
                    end
                end
            end
        end
    end
    return 0
end
local function getTreadmillUpgradeCost(...)
    local e=state.plot or(findPlayerPlot and findPlayerPlot())
    if not e then
        return nil
    end
    local r=e:FindFirstChild( "TreadmillUpgrade" , true )
    if not r then
        return nil
    end
    local y=nil
    for e,r in ipairs(r:GetDescendants())do
        if r:IsA( "TextLabel" )or r:IsA( "TextButton" )then
            local e=tostring(r.Text or "" )
            local w=e:match( "%$([%d%.,]+%s*[kKmMbBtTqQ]?[aA]?)" )
            if w then
                local e=parseCashText(w)
                if e and e> 0 then
                    if not y or e>y then
                        y=e
                    end
                end
            end
        end
    end
    return y
end
local lastTreadmillUpgradeAttempt= 0
local TREADMILL_UPGRADE_COOLDOWN= 10
local function tryUpgradeTreadmill(...)
    if not state.autoUpgradeTreadmill then
        return
    end
    if os.clock ()-lastTreadmillUpgradeAttempt<TREADMILL_UPGRADE_COOLDOWN then
        return
    end
    local e=state.plot or(findPlayerPlot and findPlayerPlot())
    if not e then
        return
    end
    local r=e:FindFirstChild( "TreadmillUpgrade" , true )
    if not r then
        return
    end
    local y=getPlayerMoney()
    local u=getTreadmillUpgradeCost()
    if u and(u> 0 and y<u)then
        return
    end
    lastTreadmillUpgradeAttempt=os.clock ()
    if TreadmillUpgradeRemote then
        pcall(function(...) TreadmillUpgradeRemote:InvokeServer()
        end
        )
    end
    local w=LocalPlayer.Character
    local j=w and w:FindFirstChild( "HumanoidRootPart" )pcall(function(...)
        for r,y in ipairs(r:GetDescendants())do
            if y:IsA( "ProximityPrompt" )and y.Enabled then
                if typeof(fireproximityprompt)== "function" then
                    fireproximityprompt(y, 0 )fireproximityprompt(y)
                end
            end
            if y:IsA( "GuiButton" )and y.Visible then
                local r=(y:IsA( "TextButton" )and y.Text )or y.Name
                local u=string.lower (r)
                if not string.find (u, "robux" )and(not string.find (u, "r%$" )and((string.find (u, "%$" )or string.find (u, "upgrade" )or string.find (u, "cash" )or(y.BackgroundColor3 and y.BackgroundColor3.G >y.BackgroundColor3.R ))))then
                    if typeof(firesignal)== "function" and y.Activated then
                        firesignal(y.Activated )
                    elseif typeof(firesignal)== "function" and y.MouseButton1Click then
                        firesignal(y.MouseButton1Click )
                    end
                end
            end
            if y:IsA( "BasePart" )and(y.Name :find( "Pad" )and j)then
                if((j.Position -y.Position )).Magnitude < 10 then
                    if typeof(firetouchinterest)== "function" then
                        firetouchinterest(j,y, 0 )task.wait ( 0.02 )firetouchinterest(j,y, 1 )
                    end
                end
            end
        end
    end
    )
end
local TRAIL_CATALOG={{[ "id" ]= "GreyTrail" ,[ "base" ]= "Grey" ,[ "name" ]= "Grey Trail" ;
[ "price" ]= 100 ;
[ "mult" ]= 1.5 },{[ "id" ]= "GreenTrail" ;
[ "base" ]= "Green" ,[ "name" ]= "Green Trail" ;
[ "price" ]= 5000 ;
[ "mult" ]= 2 },{[ "id" ]= "BlueTrail" ,[ "base" ]= "Blue" ;
[ "name" ]= "Blue Trail" ;
[ "price" ]= 75000 ;
[ "mult" ]= 2.5 };
{[ "id" ]= "PurpleTrail" ,[ "base" ]= "Purple" ;
[ "name" ]= "Purple Trail" ;
[ "price" ]= 1500000 ;
[ "mult" ]= 3 },{[ "id" ]= "GoldenTrail" ,[ "base" ]= "Golden" ;
[ "name" ]= "Golden Trail" ;
[ "price" ]= 1500000 ;
[ "mult" ]= 3.5 };
{[ "id" ]= "RedTrail" ;
[ "base" ]= "Red" ,[ "name" ]= "Red Trail" ;
[ "price" ]= 750000000 ,[ "mult" ]= 4 },{[ "id" ]= "GalaxyTrail" ,[ "base" ]= "Galaxy" ,[ "name" ]= "Galaxy Trail" ;
[ "price" ]= 20000000000 ,[ "mult" ]= 5 },{[ "id" ]= "SecretTrail" ;
[ "base" ]= "Secret" ;
[ "name" ]= "Secret Trail" ,[ "price" ]= 500000000000 ,[ "mult" ]= 6 };
{[ "id" ]= "EternalTrail" ;
[ "base" ]= "Eternal" ,[ "name" ]= "Eternal Trail" ,[ "price" ]= 12500000000000 ;
[ "mult" ]= 10 };
{[ "id" ]= "DivineTrail" ,[ "base" ]= "Divine" ;
[ "name" ]= "Divine Trail" ,[ "price" ]= 300000000000000 ;
[ "mult" ]= 14 };
{[ "id" ]= "MoonbloomTrail" ,[ "base" ]= "Moonbloom" ;
[ "name" ]= "Moonbloom Trail" ,[ "price" ]= 5000000000000000 ,[ "mult" ]= 20 }}
local function getTrailCatalog(...)
    return TRAIL_CATALOG
end
local function readOwnedTrailsFromGui(...)
    local e={}
    local r=LocalPlayer:FindFirstChild( "PlayerGui" )
    local y=r and((r:FindFirstChild( "TrailShop" )or r:FindFirstChild( "TrailShop" , true )))
    local u=y and y:FindFirstChild( "ScrollingFrame" , true )
    if u then
        pcall(function(...)
            for y,u in ipairs(u:GetChildren())do
                if u:IsA( "GuiObject" )and(not u:IsA( "UIListLayout" )and not u:IsA( "UIPadding" ))then
                    local y=u.Name
                    for u,w in ipairs(u:GetDescendants())do
                        if w:IsA( "GuiButton" )or w:IsA( "TextButton" )then
                            local u=(w:IsA( "TextButton" )and w.Text :lower())or w.Name :lower()
                            if u:find( "unequip" )or(u:find( "equip" )and not u:find( "unequip" ))then
                                e[y]= true e[y:lower()]= true
                                local u=y:gsub( "Trail" , "" )e[u]= true e[u:lower()]= true
                            end
                        end
                    end
                end
            end
        end
        )
    end
    return e
end
local function clickGuiButton(e,...)
    if not e then
        return false
    end
    pcall(function(...)
        if typeof(firebutton1click)== "function" then
            firebutton1click(e)
        elseif typeof(firesignal)== "function" and e.Activated then
            firesignal(e.Activated )
        elseif typeof(firesignal)== "function" and e.MouseButton1Click then
            firesignal(e.MouseButton1Click )
        end
    end
    )
    return true
end
local function equipBestOwnedTrail(...)
    local e=getTrailCatalog()
    local r=readOwnedTrailsFromGui()
    local y=LocalPlayer:FindFirstChild( "PlayerGui" )
    local u=y and((y:FindFirstChild( "TrailShop" )or y:FindFirstChild( "TrailShop" , true )))
    local w=u and u:FindFirstChild( "ScrollingFrame" , true )
    if w then
        for r=#e, 1 , -1 do
            local y=e[r]
            local u=w:FindFirstChild(y.id )or w:FindFirstChild(y.base )or w:FindFirstChild(y.name )
            if not u then
                for e,r in ipairs(w:GetChildren())do
                    if r:IsA( "GuiObject" )and((r.Name :lower()==y.id :lower()or r.Name :lower()==y.base :lower()or r.Name :lower()==y.name :lower()))then
                        u=r
                        break
                    end
                end
            end
            if u then
                local e= false
                local r=nil
                for y,u in ipairs(u:GetDescendants())do
                    if u:IsA( "GuiButton" )or u:IsA( "TextButton" )then
                        local y=(u:IsA( "TextButton" )and u.Text :lower())or u.Name :lower()
                        if y:find( "unequip" )then
                            e= true
                            break
                        elseif y:find( "equip" )and not y:find( "unequip" )then
                            r=u
                        end
                    end
                end
                if e then
                    return true
                end
                if r then
                    clickGuiButton(r)
                    if TrailEquipRemote then
                        pcall(function(...) TrailEquipRemote:InvokeServer(y.id )
                        end
                        )
                    end
                    task.wait ( 0.2 )
                    return true
                end
            end
        end
    end
    if TrailEquipRemote then
        for y=#e, 1 , -1 do
            local u=e[y]
            local w=r[u.id ]or r[u.id :lower()]or r[u.base ]or r[u.base :lower()]or r[u.name ]or r[u.name :lower()]
            if w then
                pcall(function(...) TrailEquipRemote:InvokeServer(u.id )
                end
                )
                return true
            end
        end
    end
    return false
end
local lastTrailBuyAttempt= 0
local TRAIL_BUY_COOLDOWN= 8
local function buyAndEquipBestTrail(...)
    if not state.autoBuyTrails then
        return
    end
    equipBestOwnedTrail()
    if os.clock ()-lastTrailBuyAttempt<TRAIL_BUY_COOLDOWN then
        return
    end
    local e=getPlayerMoney()
    if e<= 0 then
        return
    end
    local r=getTrailCatalog()
    local y=readOwnedTrailsFromGui()
    local u=LocalPlayer:FindFirstChild( "PlayerGui" )
    local w=u and((u:FindFirstChild( "TrailShop" )or u:FindFirstChild( "TrailShop" , true )))
    local j=w and w:FindFirstChild( "ScrollingFrame" , true )
    for u=#r, 1 , -1 do
        local w=r[u]
        local a=y[w.id ]or y[w.id :lower()]or y[w.base ]or y[w.base :lower()]or y[w.name ]or y[w.name :lower()]
        if not a and(w.price > 0 and e>=w.price )then
            lastTrailBuyAttempt=os.clock ()
            local e= false
            if j then
                local r=j:FindFirstChild(w.id )or j:FindFirstChild(w.base )or j:FindFirstChild(w.name )
                if not r then
                    for e,y in ipairs(j:GetChildren())do
                        if y:IsA( "GuiObject" )and((y.Name :lower()==w.id :lower()or y.Name :lower()==w.base :lower()or y.Name :lower()==w.name :lower()))then
                            r=y
                            break
                        end
                    end
                end
                if r then
                    for r,y in ipairs(r:GetDescendants())do
                        if y:IsA( "GuiButton" )or y:IsA( "TextButton" )then
                            local r=(y:IsA( "TextButton" )and y.Text :lower())or y.Name :lower()
                            if not r:find( "robux" )and(not r:find( "r%$" )and(not r:find( "unequip" )and not r:find( "equip" )))then
                                if r:find( "%$" )or r:find( "buy" )then
                                    clickGuiButton(y)e= true
                                    break
                                end
                            end
                        end
                    end
                end
            end
            if TrailPurchaseRemote then
                pcall(function(...) TrailPurchaseRemote:InvokeServer(w.id )
                end
                )e= true
            end
            if e then
                task.wait ( 0.3 )equipBestOwnedTrail()
                break
            end
        end
    end
end
findLakeStarterEgg=function(...)
    local e=LocalPlayer.Character
    local y=e and e:FindFirstChild( "HumanoidRootPart" )
    if not y then
        return nil
    end
    local u={}
    local w=Workspace:FindFirstChild( "AreaEggSlotsClient" )
    local j=readFieldEggs( false )
    if j and#j> 0 then
        for e,r in ipairs(j)do
            local w=(r.State == "Slot" or r.State == "Dropped" or r.State == 1 )
            local j=(r.AreaId == "Lake" )or(string.find (string.lower (tostring(r.AreaId )), "lake" )~=nil)or(string.find (string.lower (tostring(r.Uid )), "lake" )~=nil)
            local k=targetCooldownUntil[r.Uid ]and(os.clock ()<targetCooldownUntil[r.Uid ])
            if w and(j and(r.BoundsCFrame and not k))then
                local e=r.BoundsCFrame.Position
                local w=((y.Position -e)).Magnitude table.insert (u,{[ "Uid" ]=r.Uid ;
                [ "Model" ]=nil;
                [ "Hitbox" ]=nil;
                [ "CFrame" ]=r.BoundsCFrame ,[ "Position" ]=e,[ "Distance" ]=w;
                [ "Area" ]= "Lake" })
            end
        end
    end
    if#u== 0 and(j and#j> 0 )then
        for e,r in ipairs(j)do
            local w=(r.State == "Slot" or r.State == "Dropped" or r.State == 1 )
            local j=r.BoundsCFrame and r.BoundsCFrame.Position
            local k=j and((j.X >= 545 and j.X < 850 ))
            local o=targetCooldownUntil[r.Uid ]and(os.clock ()<targetCooldownUntil[r.Uid ])
            if w and(k and not o)then
                table.insert (u,{[ "Uid" ]=r.Uid ,[ "Model" ]=nil;
                [ "Hitbox" ]=nil;
                [ "CFrame" ]=r.BoundsCFrame ;
                [ "Position" ]=j;
                [ "Distance" ]=((y.Position -j)).Magnitude ;
                [ "Area" ]=r.AreaId or "Field" })
            end
        end
    end
    if#u== 0 then
        return nil
    end
    table.sort (u,function(e,r,...)
        return e.Distance <r.Distance
    end
    )
    local k=u[ 1 ]
    if k and w then
        for e,r in ipairs(w:GetChildren())do
            local y=r:FindFirstChildWhichIsA( "BasePart" )or r.PrimaryPart
            if y and((y.Position -k.Position )).Magnitude <= 8 then
                k.Model =r
                break
            end
        end
    end
    return k
end
local cachedLightDarkCenter=nil
local cachedLightDarkCFrame=nil
local cachedLightDarkRadius= 350
local function findLightDarkAreaContainer(...)
    local e=Workspace:FindFirstChild( "__OBJECTS" )or Workspace:FindFirstChild( "Objects" )
    local y=e and((e:FindFirstChild( "Areas" )or e:FindFirstChild( "Area" )))
    local u=y and((y:FindFirstChild( "GuardAreas" )or y:FindFirstChild( "Guards" )))
    if u then
        local e=u:FindFirstChild( "Light Dark" )or u:FindFirstChild( "LightDark" )or u:FindFirstChild( "Light_Dark" )or u:FindFirstChild( "Light-Dark" )
        if e then
            return e
        end
        for e,r in ipairs(u:GetChildren())do
            local y=string.lower (r.Name )
            if string.find (y, "light" )and string.find (y, "dark" )then
                return r
            end
        end
    end
    if y then
        local e=y:FindFirstChild( "Light Dark" )or y:FindFirstChild( "LightDark" )or y:FindFirstChild( "Light_Dark" )
        if e then
            return e
        end
        for e,r in ipairs(y:GetChildren())do
            local y=string.lower (r.Name )
            if string.find (y, "light" )and string.find (y, "dark" )then
                return r
            end
        end
    end
    for e,r in ipairs(Workspace:GetChildren())do
        local y=r.Name
        if y== "__OBJECTS" or y== "Objects" or y== "Areas" or y== "Map" then
            for e,r in ipairs(r:GetDescendants())do
                local y=string.lower (r.Name )
                if(y== "light dark" or y== "lightdark" or(string.find (y, "light" )and string.find (y, "dark" )))then
                    if r:IsA( "BasePart" )or r:IsA( "Model" )or r:IsA( "Folder" )then
                        return r
                    end
                end
            end
        end
    end
    return nil
end
local function isPositionInLightDarkArea(e,...)
    if not e then
        return false
    end
    if cachedLightDarkCenter then
        local r=((Vector3.new (e.X , 0 ,e.Z )-Vector3.new (cachedLightDarkCenter.X , 0 ,cachedLightDarkCenter.Z ))).Magnitude
        if r<=cachedLightDarkRadius then
            return true
        end
    end
    local r=findLightDarkAreaContainer()
    if not r then
        if e.X >= 5200 then
            return true
        end
        return false
    end
    local y= false pcall(function(...)
        local u,w=nil,nil
        if r:IsA( "BasePart" )then
            u=r.CFrame w=r.Size
        elseif r:IsA( "Model" )then
            u,w=r:GetBoundingBox()
        else
            local e,y=nil,nil
            for r,u in ipairs(r:GetChildren())do
                if u:IsA( "BasePart" )then
                    local r=u.CFrame
                    local w=u.Size / 2
                    local k=r.Position -w
                    local a=r.Position +w
                    if not e then
                        e=k y=a
                    else
                        e=Vector3.new (math.min (e.X ,k.X ),math.min (e.Y ,k.Y ),math.min (e.Z ,k.Z ))y=Vector3.new (math.max (y.X ,a.X ),math.max (y.Y ,a.Y ),math.max (y.Z ,a.Z ))
                    end
                end
            end
            if e and y then
                u=CFrame.new (((e+y))/ 2 )w=y-e
            end
        end
        if u and w then
            cachedLightDarkCenter=u.Position cachedLightDarkCFrame=u cachedLightDarkRadius=math.max ( 350 ,math.max (w.X ,w.Z )/ 2 + 150 )
            local r=((Vector3.new (e.X , 0 ,e.Z )-Vector3.new (u.Position.X , 0 ,u.Position.Z ))).Magnitude
            if r<=cachedLightDarkRadius then
                y= true
                return
            end
            local k=u:PointToObjectSpace(e)
            local a=w/ 2
            if math.abs (k.X )<=(a.X + 200 )and math.abs (k.Z )<=(a.Z + 200 )then
                y= true
                return
            end
        end
        for r,u in ipairs(r:GetDescendants())do
            if u:IsA( "BasePart" )then
                if((e-u.Position )).Magnitude <= 250 then
                    y= true
                    if not cachedLightDarkCenter then
                        cachedLightDarkCenter=u.Position
                    end
                    return
                end
            end
        end
    end
    )
    return y
end
local function detectEggZone(e,r,y,...)
    local u=r and r.X or 0
    local w=string.lower (tostring(e or "" ))
    local j=string.lower (tostring(y or "" ))
    if j~= "" and j~= "egg" then
        if string.find (j, "spideron" )or string.find (j, "crustacia" )or string.find (j, "bladehide" )or string.find (j, "mantaris" )or string.find (j, "rhinotaur" )or string.find (j, "mutantshark" )or string.find (j, "mutant shark" )or string.find (j, "gorillaking" )or string.find (j, "gorilla king" )or string.find (j, "nightflame" )then
            return "Titan Temple"
        end
        if string.find (j, "crane" )or string.find (j, "salamander" )or string.find (j, "redpanda" )or string.find (j, "red panda" )or string.find (j, "snowyowl" )or string.find (j, "snowy owl" )or string.find (j, "koiegg" )or string.find (j, "koi egg" )or string.find (j, "stagegg" )or string.find (j, "stag egg" )or string.find (j, "onitiger" )or string.find (j, "oni tiger" )or string.find (j, "kitsune" )then
            return "Cherry Blossom"
        end
        if string.find (j, "centapede" )or string.find (j, "cosmicgecko" )or string.find (j, "cosmic gecko" )or string.find (j, "cosmicgorilla" )or string.find (j, "cosmic gorilla" )or string.find (j, "saturno" )or string.find (j, "saturnita" )or string.find (j, "vacca" )or string.find (j, "cosmic skeleton" )or string.find (j, "skeletonboss" )or string.find (j, "skeleton boss" )or string.find (j, "cosmicdragon" )or string.find (j, "cosmic dragon" )or string.find (j, "lunardragon" )or string.find (j, "lunar dragon" )or string.find (j, "unicornegg" )or string.find (j, "unicorn egg" )then
            return "Cosmic"
        end
        if string.find (j, "dodo" )or string.find (j, "pterodactyl" )or string.find (j, "ankylosaurus" )or string.find (j, "triceratops" )or string.find (j, "bronto" )or string.find (j, "trex" )or string.find (j, "t-rex" )or string.find (j, "tralaledon" )or string.find (j, "mosasaurus" )then
            return "Prehistoric"
        end
        if string.find (j, "parrotfish" )or string.find (j, "swordfish" )or string.find (j, "whaleshark" )or string.find (j, "whale shark" )or string.find (j, "belugawhale" )or string.find (j, "beluga whale" )or string.find (j, "kraken" )or string.find (j, "elmaja" )or string.find (j, "el maja" )then
            return "Abyss Ocean"
        end
        if string.find (j, "lava gecko" )or string.find (j, "lava frog" )or string.find (j, "flaming bull" )or string.find (j, "lava iguana" )or string.find (j, "chillin chilli" )or string.find (j, "cerberus" )or string.find (j, "phoenix" )or string.find (j, "lava dragon" )then
            return "Volcano"
        end
        if string.find (j, "penguin" )or string.find (j, "walrus" )or string.find (j, "polar bear" )or string.find (j, "polarbear" )or string.find (j, "sabertooth" )or string.find (j, "mammoth" )or string.find (j, "yeti" )or string.find (j, "ice dragon" )or string.find (j, "icedragon" )then
            return "Snow"
        end
        if string.find (j, "sand spider" )or string.find (j, "sandspider" )or string.find (j, "royal sphinx" )or string.find (j, "sphinx" )or string.find (j, "tob tobi" )or string.find (j, "tobtobi" )or string.find (j, "jerboa" )or string.find (j, "fennec" )or string.find (j, "camel" )then
            return "Desert"
        end
        if string.find (j, "chimpanzee" )or string.find (j, "toucan" )or string.find (j, "crocodile" )or string.find (j, "orangutini" )or string.find (j, "ananassini" )or string.find (j, "king snake" )or string.find (j, "kingsnake" )then
            return "Jungle"
        end
        if string.find (j, "duckling" )or string.find (j, "catfish" )or string.find (j, "turtle" )or string.find (j, "trulimero" )or string.find (j, "trulicina" )or string.find (j, "swan" )or string.find (j, "axolotl" )or string.find (j, "leviathan" )then
            return "Lake"
        end
        if string.find (j, "burrowing owl" )or string.find (j, "burrowingowl" )or string.find (j, "brr brr" )or string.find (j, "patapim" )or string.find (j, "chicken" )or string.find (j, "dog" )or string.find (j, "bird" )or string.find (j, "raccoon" )or string.find (j, "fox" )then
            return "Forest"
        end
        if string.find (j, "shark" )then
            return "Abyss Ocean"
        end
        if string.find (j, "snake" )then
            return "Desert"
        end
        if string.find (j, "spider" )then
            return "Jungle"
        end
        if string.find (j, "gorilla" )then
            return "Jungle"
        end
        if string.find (j, "tiger" )then
            return "Jungle"
        end
        if string.find (j, "frog" )then
            return "Lake"
        end
        if string.find (j, "bear" )then
            return "Forest"
        end
    end
    if(string.find (w, "light" )and string.find (w, "dark" ))or w== "lightdark" then
        return "Light Dark"
    elseif string.find (w, "titan" )then
        return "Titan Temple"
    elseif string.find (w, "cherry" )then
        return "Cherry Blossom"
    elseif string.find (w, "cosmic" )then
        return "Cosmic"
    elseif string.find (w, "prehistoric" )or string.find (w, "dino" )then
        return "Prehistoric"
    elseif string.find (w, "abyss" )or string.find (w, "ocean" )then
        return "Abyss Ocean"
    elseif string.find (w, "volcano" )or string.find (w, "lava" )then
        return "Volcano"
    elseif string.find (w, "snow" )or string.find (w, "ice" )or string.find (w, "winter" )then
        return "Snow"
    elseif string.find (w, "jungle" )then
        return "Jungle"
    elseif string.find (w, "desert" )or string.find (w, "sand" )then
        return "Desert"
    elseif string.find (w, "lake" )or string.find (w, "water" )then
        return "Lake"
    elseif string.find (w, "forest" )then
        return "Forest"
    end
    if u> 0 then
        if u>= 5200 then
            return "Light Dark"
        elseif u>= 4750 then
            return "Titan Temple"
        elseif u>= 4000 then
            return "Cherry Blossom"
        elseif u>= 3350 then
            return "Cosmic"
        elseif u>= 2780 then
            return "Prehistoric"
        elseif u>= 2250 then
            return "Abyss Ocean"
        elseif u>= 1850 then
            return "Volcano"
        elseif u>= 1450 then
            return "Snow"
        elseif u>= 1150 then
            return "Jungle"
        elseif u>= 920 then
            return "Desert"
        elseif u>= 720 then
            return "Lake"
        else
            return "Forest"
        end
    end
    return "Forest"
end
selectBestTargetEgg=function(...)
    local e=readFieldEggs( false )
    if not e or#e== 0 then
        e=readFieldEggs( true )
    end
    if not e or#e== 0 then
        return nil
    end
    local y=LocalPlayer.Character
    local u=y and y:FindFirstChild( "HumanoidRootPart" )
    local w=u and u.Position or Vector3.new ( 525 , 70 , -360 )
    local function j(e,...) e=tonumber(e)or 0
        if e>= 1000000000000 then
            return string.format ( "%.1fT" ,e/ 1000000000000 )
        end
        if e>= 1000000000 then
            return string.format ( "%.1fB" ,e/ 1000000000 )
        end
        if e>= 1000000 then
            return string.format ( "%.1fM" ,e/ 1000000 )
        end
        if e>= 1000 then
            return string.format ( "%.1fK" ,e/ 1000 )
        end
        return string.format ( "%.0f" ,e)
    end
    local function k(e,r,y,u,...)
        if e and e.PhysicalModel then
            local u=e.PhysicalModel
            local w=u:GetAttribute( "Rarity" )or u:GetAttribute( "RarityTier" )or u:GetAttribute( "Tier" )
            if w and(tostring(w)~= "" and tostring(w)~= "Unknown" )then
                y=tostring(w)
            end
            if not r or r== "Egg" or r== "" then
                r=u:GetAttribute( "Category" )or u:GetAttribute( "AssetCategory" )or u.Name
            end
        end
        local w=string.lower (tostring(e.Rarity or "" ))
        local j=string.lower (tostring(y or "" ))
        for e,r in ipairs({w,j})do
            if r~= "" and(r~= "unknown" and r~= "nil" )then
                if string.find (r, "divine" )then
                    return 6 , "Divine"
                end
                if string.find (r, "eternal" )then
                    return 5 , "Eternal"
                end
                if string.find (r, "secret" )then
                    return 4 , "Secret"
                end
                if string.find (r, "cosmic" )then
                    return 3 , "Cosmic"
                end
                if string.find (r, "mythic" )then
                    return 2 , "Mythic"
                end
                if string.find (r, "legendary" )then
                    return 1 , "Legendary"
                end
                if string.find (r, "epic" )then
                    return 0.5 , "Epic"
                end
                if string.find (r, "rare" )then
                    return 0.3 , "Rare"
                end
                if string.find (r, "uncommon" )then
                    return 0.1 , "Uncommon"
                end
                if string.find (r, "common" )then
                    return 0 , "Common"
                end
            end
        end
        if u and u>= 10 then
            return 6 , "Divine"
        elseif u and u>= 9 then
            return 5 , "Eternal"
        elseif u and u>= 8 then
            return 4 , "Secret"
        elseif u and u>= 7 then
            return 3 , "Cosmic"
        elseif u and u>= 6 then
            return 2 , "Mythic"
        elseif u and u>= 5 then
            return 1 , "Legendary"
        elseif u and u>= 4 then
            return 0.5 , "Epic"
        elseif u and u>= 3 then
            return 0.3 , "Rare"
        elseif u and u>= 2 then
            return 0.1 , "Uncommon"
        elseif u and u>= 1 then
            return 0 , "Common"
        end
        local k=string.lower (string.format ( "%s %s %s %s %s" ,tostring(r or "" ),tostring(e.Uid or "" ),tostring(e.Name or "" ),tostring(e.DisplayName or "" ),tostring(e.EggName or "" )))
        if string.find (k, "nightflame" )or string.find (k, "unicornegg" )or string.find (k, "unicorn egg" )or string.find (k, "shatteredcolossus" )or string.find (k, "kitsune" )or string.find (k, "elmaja" )or string.find (k, "el maja" )then
            return 6 , "Divine"
        end
        if string.find (k, "gorillaking" )or string.find (k, "gorilla king" )or string.find (k, "lunardragon" )or string.find (k, "lunar dragon" )or string.find (k, "onitiger" )or string.find (k, "oni tiger" )or string.find (k, "mosasaurus" )then
            return 5 , "Eternal"
        end
        if string.find (k, "mutantshark" )or string.find (k, "mutant shark" )or string.find (k, "skeletonboss" )or string.find (k, "skeleton boss" )or string.find (k, "stagegg" )or string.find (k, "stag egg" )or string.find (k, "cosmicdragon" )or string.find (k, "cosmic dragon" )or string.find (k, "trex" )or string.find (k, "t-rex" )or string.find (k, "tralaledon" )or string.find (k, "kraken" )then
            return 4 , "Secret"
        end
        if string.find (k, "saturnita" )or string.find (k, "saturno" )or string.find (k, "mantaris" )or string.find (k, "rhinotaur" )or string.find (k, "snowyowl" )or string.find (k, "snowy owl" )or string.find (k, "koiegg" )or string.find (k, "koi egg" )or string.find (k, "triceratops" )or string.find (k, "bronto" )or string.find (k, "whaleshark" )or string.find (k, "whale shark" )or string.find (k, "belugawhale" )or string.find (k, "beluga whale" )then
            return 3 , "Cosmic"
        end
        if string.find (k, "bladehide" )or string.find (k, "redpanda" )or string.find (k, "red panda" )or string.find (k, "cosmicgorilla" )or string.find (k, "cosmic gorilla" )or string.find (k, "ankylosaurus" )or string.find (k, "orca" )then
            return 2 , "Mythic"
        end
        if string.find (k, "spideron" )or string.find (k, "crustacia" )or string.find (k, "salamander" )or string.find (k, "cosmicgecko" )or string.find (k, "cosmic gecko" )or string.find (k, "pterodactyl" )or string.find (k, "sharkegg" )or string.find (k, "shark egg" )then
            return 1 , "Legendary"
        end
        if string.find (k, "crane" )or string.find (k, "centapede" )or string.find (k, "swordfish" )then
            return 0.5 , "Epic"
        end
        if string.find (k, "dodo" )or string.find (k, "parrotfish" )then
            return 0.3 , "Rare"
        end
        local a=tonumber(e.EarningRate or e.Income or 0 )
        if a and a>= 150000000 then
            return 4 , "Secret"
        end
        local o=(y and(y~= "Unknown" and y))or "Common"
        local V=RARITY_TIERS[o]or 0
        return V,o
    end
    local function a(r,y,...)
        local u={}
        for e,r in ipairs(e)do
            local j=(r.State == "Slot" or r.State == "Dropped" or r.State == "GuardCarried" or r.State == 1 )
            local a=(r.BoundsCFrame and r.BoundsCFrame.Position .X < 530 )or string.find (tostring(r.Uid ), "FirstArea" )
            local o=targetCooldownUntil[r.Uid ]and(os.clock ()<targetCooldownUntil[r.Uid ])
            if j and(not a and(((y or not o))and r.BoundsCFrame ))then
                local e=r.AssetCategory or "Egg"
                local y= 0
                local j= 0
                local a= 0
                local o= "Unknown"
                if AssetItems then
                    pcall(function(...)
                        if AssetItems.RarityRankForCategory then
                            y=AssetItems.RarityRankForCategory (e)or 0
                        end
                        if AssetItems.ProfileIncomePerSecond then
                            j=AssetItems.ProfileIncomePerSecond (e)or 0
                        end
                        if AssetItems.SalePrice then
                            a=AssetItems.SalePrice (e)or 0
                        end
                        if AssetItems.Assets and AssetItems.Assets [e]then
                            local y=AssetItems.Assets [e]o=y.Rarity or(y.Egg and y.Egg.Rarity )or "Unknown"
                            if not j or j== 0 then
                                j=y.EarningRate or(y.Egg and y.Egg.EarningRate )or 0
                            end
                        end
                    end
                    )
                end
                local V=r.BoundsCFrame.Position .X
                local H=r.BoundsCFrame.Position
                local t=r.AreaId
                if((not t or t== "" or t== "Unknown" ))and r.PhysicalModel then
                    t=r.PhysicalModel :GetAttribute( "AreaId" )or r.PhysicalModel :GetAttribute( "Area" )
                end
                local B=string.format ( "%s %s %s %s" ,tostring(e or "" ),tostring(r.Uid or "" ),tostring(r.Name or "" ),(r.PhysicalModel and r.PhysicalModel.Name )or "" )
                local J=detectEggZone(t,H,B)
                local K,c=k(r,e,o,y)
                local v=(K>= 4 or c== "Secret" or c== "Eternal" or c== "Divine" )
                local i=(state.selectedZones and state.selectedZones [J]== true )
                local R=(state.selectedRarities and state.selectedRarities [c]== true )
                local forcedZone = state.nextStealZone
                local g = false

                -- After every successful steal the next target is forced into
                -- the second-lowest zone (Lake with the current zone table).
                -- The rarity filter still applies; Secret+ remains eligible.
                if forcedZone and J == forcedZone then
                    g = (R or v)
                elseif v then
                    g = true
                elseif i and R then
                    g = true
                end
                if g then
                    local k=tonumber(r.AssetScale or r.Scale )or 1
                    local a= 1
                    local mutationCount = 0
                    if r.Mutations and type(r.Mutations )== "table" then
                        for e,r in pairs(r.Mutations )do
                            mutationCount = mutationCount + 1
                            local y=(type(r)== "table" and tonumber(r.Multiplier or r.Value ))or tonumber(r)or 1.5
                            a=a*y
                        end
                    elseif r.Mutation then
                        mutationCount = 1
                        a= 1.5
                    end
                    local o=(j*k)*a
                    local V=ZONE_SCORE[J]or 50
                    if o<= 0 then
                        o=(((V^ 2 )*k)*a)* 10
                    end
                    local H=((w-r.BoundsCFrame.Position )).Magnitude table.insert (u,{[ "Uid" ]=r.Uid ,[ "Category" ]=tostring(e),[ "Area" ]=tostring(J),[ "ZoneWeight" ]=V,[ "Rarity" ]=tostring(c);
                    [ "RarityTier" ]=K;
                    [ "Rank" ]=y;
                    [ "Income" ]=j,[ "RealIncome" ]=o;
                    [ "Scale" ]=k,[ "MutMultiplier" ]=a,[ "MutationCount" ]=mutationCount,
                    [ "CFrame" ]=r.BoundsCFrame ;
                    [ "Position" ]=r.BoundsCFrame.Position ,[ "Distance" ]=H,[ "Model" ]=r.PhysicalModel })
                end
            end
        end
        if#u== 0 then
            return nil
        end
        local function a(e,...)
            local mutationCount = tonumber(e.MutationCount) or 0
            local mutationPower = tonumber(e.MutMultiplier) or 1
            local rarity = tonumber(e.RarityTier) or 0
            local income = tonumber(e.RealIncome) or 0
            local scale = tonumber(e.Scale) or 1
            local zone = tonumber(e.ZoneWeight) or 50

            -- Effects first, then effect strength, then rarity/value/size.
            return
                (mutationCount * 1000000000000) +
                (mutationPower * 1000000000) +
                (rarity * 1000000) +
                math.min(income, 999999) +
                (scale * 1000) +
                zone
        end

        table.sort (u,function(e,r,...)
            local y=a(e)
            local u=a(r)
            if math.abs(y-u) > 0.001 then
                return y>u
            end
            if (e.MutationCount or 0) ~= (r.MutationCount or 0) then
                return (e.MutationCount or 0) > (r.MutationCount or 0)
            end
            if (e.MutMultiplier or 1) ~= (r.MutMultiplier or 1) then
                return (e.MutMultiplier or 1) > (r.MutMultiplier or 1)
            end
            if e.RarityTier ~= r.RarityTier then
                return (e.RarityTier or 0) > (r.RarityTier or 0)
            end
            if math.abs((e.RealIncome or 0) -(r.RealIncome or 0)) > 1 then
                return (e.RealIncome or 0) >(r.RealIncome or 0)
            end
            if math.abs((e.Scale or 1) -(r.Scale or 1)) > 0.05 then
                return (e.Scale or 1) >(r.Scale or 1)
            end
            return (e.Distance or math.huge) < (r.Distance or math.huge)
        end
        )
        local o=u[ 1 ]
        if state.nextStealZone and o and o.Area == state.nextStealZone then
            state.nextStealZone = nil
        end
        local V={}
        for e= 1 ,math.min ( 3 ,#u), 1 do
            local r=u[e]table.insert (V,string.format ( "#%d %s[%s|%s] Score:%d $%s/s (%.1fx) dist=%dm" ,e,tostring(r.Category ),tostring(r.Rarity ),tostring(r.Area ),a(r),j(r.RealIncome ),tonumber(r.Scale )or 1 ,math.floor (tonumber(r.Distance )or 0 )))
        end
        if#V> 0 then
            logInfo( "[AutoSteal v42.44] " ..table.concat (V, " | " ))
        end
        return o
    end
    local V=a( false , false )
    if not V then
        targetCooldownUntil={}V=a( false , true )
    end
    if not V then
        e=readFieldEggs( true )V=a( false , true )
    end
    if V and Workspace:FindFirstChild( "AreaEggSlotsClient" )then
        for e,r in ipairs(Workspace.AreaEggSlotsClient :GetChildren())do
            local y=r:FindFirstChildWhichIsA( "BasePart" )or r.PrimaryPart
            if y and((y.Position -V.Position )).Magnitude <= 12 then
                V.Model =r
                break
            end
        end
    end
    return V
end
secureEggWithGuardStrike=function(e,u,w,j,...)
    local k=LocalPlayer.Character
    local a=k and k:FindFirstChild( "HumanoidRootPart" )
    local V=k and k:FindFirstChildOfClass( "Humanoid" )
    if not a or not V then
        return false
    end
    state.securingEgg = true state.isReturning = false state.stateTime =os.clock ()state.holdingEggForGuard = true
    local s=u.Position createSafetyFloor(s, 14 )state.currentTargetModel =w state.targetPosition =s a.AssemblyLinearVelocity =Vector3.zero a.AssemblyAngularVelocity =Vector3.zero suppressRagdoll(k)pcall(function(...) LocalPlayer:RequestStreamAroundAsync(s)
    end
    )
    if not w and Workspace:FindFirstChild( "AreaEggSlotsClient" )then
        for e,r in ipairs(Workspace.AreaEggSlotsClient :GetChildren())do
            local y=r:FindFirstChildWhichIsA( "BasePart" )or r.PrimaryPart
            if y and((y.Position -s)).Magnitude <= 16 then
                w=r state.currentTargetModel =r
                break
            end
        end
    end
    if w then
        pcall(function(...)
            for r,y in ipairs(w:GetDescendants())do
                if y:IsA( "BasePart" )and(y.Transparency > 0.8 and(y.Name ~= "Hitbox" and(y.Name ~= "Root" and not y.Name :find( "Pad" ))))then
                    y.Transparency = 0
                end
            end
        end
        )
    end
    state.statusText = "[1/4] Lifting Egg to Trigger Guard..." logInfo(string.format ( "[GuardStrike] Step 1: Lifting target egg (%s)..." ,tostring(e)))
    local p=os.clock ()+ 3.5
    local B= 0
    while not isCarryingEgg()and(os.clock ()<p and(state.alive and state.securingEgg ))do
        if j and farmSessionId~=j then
            logWarn( "[GuardStrike] Cancelled by session switch in Step 1" )
            break
        end
        if not state.pureTweenFarm and(not state.autoFarmLoop and not state.teleporting )then
            break
        end
        if e and(os.clock ()-B> 0.4 )then
            B=os.clock ()
            local r,y=checkEggAvailability(e)
            if not r and y== "CarriedByOther" then
                logWarn(string.format ( "[GuardStrike] Target egg %s was snatched by another player! Aborting pickup..." ,tostring(e)))
                break
            end
        end
        k:PivotTo(u*CFrame.new ( 0 , 0.4 , 0 ))triggerEggPromptsNearTarget(w,s)
        if e and AskFieldEggCarryRemote then
            task.spawn (function(...) pcall(function(...)
                    if AskFieldEggCarryRemote:IsA( "RemoteFunction" )then
                        AskFieldEggCarryRemote:InvokeServer({[ "Uid" ]=e})AskFieldEggCarryRemote:InvokeServer(e)
                    else
                        AskFieldEggCarryRemote:FireServer({[ "Uid" ]=e})AskFieldEggCarryRemote:FireServer(e)
                    end
                end
                )
            end
            )
        end
        RunService.Heartbeat :Wait()
    end
    if not isCarryingEgg()then
        logWarn( "[GuardStrike] Initial egg pickup timed out or egg was stolen" )
        if e then
            targetCooldownUntil[e]=os.clock ()+ 2
        end
        state.currentTargetModel =nil state.targetPosition =nil state.securingEgg = false state.holdingEggForGuard = false
        return false
    end
    state.statusText = "[2/4] Waiting for Guard Strike..." logInfo( "[GuardStrike] Step 2: Egg lifted! Triggering guard strike..." )
    local J=os.clock ()
    local K=J+ 4.5
    local c= false
    while isCarryingEgg()and(os.clock ()<K and(state.alive and state.securingEgg ))do
        if j and farmSessionId~=j then
            logWarn( "[GuardStrike] Cancelled by session switch in Step 2" )
            break
        end
        if not state.pureTweenFarm and(not state.autoFarmLoop and not state.teleporting )then
            break
        end
        k:PivotTo(u*CFrame.new ( 0 , 0.4 , 0 ))createSafetyFloor(s, 14 )
        if ForestStrikeRemote and not c then
            task.spawn (function(...) pcall(function(...)
                    if ForestStrikeRemote:IsA( "RemoteFunction" )then
                        ForestStrikeRemote:InvokeServer()
                    else
                        ForestStrikeRemote:FireServer()
                    end
                end
                )
            end
            )c= true
        end
        RunService.Heartbeat :Wait()
    end
    state.statusText = "[3/4] Re-grabbing Egg..." logInfo( "[GuardStrike] Step 3: Guard struck! Re-grabbing egg..." )
    local v=os.clock ()+ 3
    while not isCarryingEgg()and(os.clock ()<v and(state.alive and state.securingEgg ))do
        if j and farmSessionId~=j then
            logWarn( "[GuardStrike] Cancelled by session switch in Step 3" )
            break
        end
        if not state.pureTweenFarm and(not state.autoFarmLoop and not state.teleporting )then
            break
        end
        k:PivotTo(u*CFrame.new ( 0 , 0.4 , 0 ))triggerEggPromptsNearTarget(w,s)
        if e and AskFieldEggCarryRemote then
            task.spawn (function(...) pcall(function(...)
                    if AskFieldEggCarryRemote:IsA( "RemoteFunction" )then
                        AskFieldEggCarryRemote:InvokeServer({[ "Uid" ]=e})AskFieldEggCarryRemote:InvokeServer(e)
                    else
                        AskFieldEggCarryRemote:FireServer({[ "Uid" ]=e})AskFieldEggCarryRemote:FireServer(e)
                    end
                end
                )
            end
            )
        end
        RunService.Heartbeat :Wait()
    end
    local R=hasEggInInventory(e)
    if not R then
        task.wait ( 0.12 )R=hasEggInInventory(e)
    end
    state.currentTargetModel =nil state.targetPosition =nil state.securingEgg = false state.holdingEggForGuard = false
    if j and farmSessionId~=j then
        return false
    end
    if R then
        pcall(stashEquippedTools)logInfo( "[GuardStrike] Egg successfully secured after guard strike! Stashed in backpack." )state.statusText = "Egg Secured! Tweening along Z=-360..."
    else
        logWarn( "[-] Failed to re-grab egg after guard strike (stolen or despawned)" )state.statusText = "[-] Failed to re-grab egg"
        if e then
            targetCooldownUntil[e]=os.clock ()+ 2
        end
    end
    return R
end
runWarpStealCycle=function(e,u,...)
    if state.teleporting or state.glidingToTarget or state.delivering or state.securingEgg then
        return false
    end
    state.teleporting = true state.isReturning = false state.stateTime =os.clock ()
    local w=LocalPlayer.Character
    local j=w and w:FindFirstChild( "HumanoidRootPart" )
    local k=w and w:FindFirstChildOfClass( "Humanoid" )
    if not j or not k then
        resetMovementState()
        return false
    end
    if k then
        k:UnequipTools()
    end
    state.statusText = "[1/7] Pre-Flight Desync..."
    if not state.swapped then
        swapHumanoidForDesync()
    end
    if not state.godmode then
        setGodmode( true )
    end
    suppressRagdoll(w)
    if not e then
        e=selectBestTargetEgg()
    end
    local a=e and e.CFrame or DEFAULT_TARGET_CFRAME
    local V=e and e.Uid
    local H=a.Position
    if V then
        local e,r=checkEggAvailability(V)
        if not e and r~= "CarriedBySelf" then
            logWarn(string.format ( "[Snipe] Target egg %s is already taken (%s)! Selecting next target..." ,tostring(V),tostring(r)))state.statusText = "Target taken by another player!" targetCooldownUntil[V]=os.clock ()+ 5 resetMovementState()
            return false
        end
    end
    local s=select( 2 ,getEquippedEggTool())
    if not s then
        local e=findLakeStarterEgg()
        if not e then
            logWarn( "[-] Lake egg not found" )state.statusText = "[-] No Lake egg found" resetMovementState()
            return false
        end
        state.currentTargetModel =e.Model state.targetPosition =e.Position
        local r=((j.Position -e.Position )).Magnitude
        local w=e.CFrame *CFrame.new ( 0 , 0.4 , 0 )pcall(function(...) LocalPlayer:RequestStreamAroundAsync(e.Position )
        end
        )createSafetyFloor(e.Position , 8 )
        if r> 60 then
            state.statusText =string.format ( "[2/7] Gliding to Lake Egg (%.0f studs)..." ,r)state.glidingToTarget = true
            local y=glideToTargetViaWaypoint(w,state.glideSpeed ,e.Uid ,u)state.glidingToTarget = false
            if not y then
                logWarn( "[-] Lake starter egg was taken during flight" )targetCooldownUntil[e.Uid ]=os.clock ()+ 5 resetMovementState()
                return false
            end
        else
            state.statusText = "[2/7] Aligning with Lake Egg..." j.CFrame =w j.AssemblyLinearVelocity =Vector3.zero task.wait ( 0.04 )
        end
        j.Anchored = true task.wait ( 0.06 )j.Anchored = false state.holdingEggForGuard = true
        local k=os.clock ()+ 3
        while not isCarryingEgg()and(os.clock ()<k and(state.alive and state.teleporting ))do
            if u and farmSessionId~=u then
                logWarn( "[Snipe] Cancelled by session switch during Lake egg pickup" )resetMovementState()
                return false
            end
            if not state.autoFarmLoop and not state.teleporting then
                resetMovementState()
                return false
            end
            triggerEggPromptsNearTarget(e.Model ,e.Position )
            if e.Uid and AskFieldEggCarryRemote then
                task.spawn (function(...) pcall(function(...)
                        if AskFieldEggCarryRemote:IsA( "RemoteFunction" )then
                            AskFieldEggCarryRemote:InvokeServer({[ "Uid" ]=e.Uid })
                        else
                            AskFieldEggCarryRemote:FireServer({[ "Uid" ]=e.Uid })
                        end
                    end
                    )
                end
                )
            end
            RunService.Heartbeat :Wait()
        end
        s=select( 2 ,getEquippedEggTool())
        if not isCarryingEgg()then
            logWarn( "[-] Lake egg pickup failed" )state.statusText = "[-] Lake pickup failed" resetMovementState()
            return false
        end
    end
    state.statusText = "[3/7] Pre-streaming Target..." pcall(function(...) LocalPlayer:RequestStreamAroundAsync(H)
    end
    )createSafetyFloor(H, 12 )state.statusText = "[4/7] Waiting for physical bounce..." j.Anchored = false k:ChangeState(Enum.HumanoidStateType.Running )
    local p=(k.WalkSpeed > 0 )and k.WalkSpeed or 16 k.WalkSpeed = 0 k:Move(Vector3.zero , false )j.AssemblyLinearVelocity =Vector3.zero j.AssemblyAngularVelocity =Vector3.zero task.wait ( 0.04 )
    local B=j.Position
    local J=B.Y
    local K=select( 2 ,getEquippedEggTool())or s
    local c= false
    local v=nil
    if SpeedTollOfferRemote and SpeedTollOfferRemote:IsA( "RemoteEvent" )then
        v=SpeedTollOfferRemote.OnClientEvent :Connect(function(...) c= true
            if v then
                v:Disconnect()
            end
        end
        )
    end
    state.holdingEggForGuard = true requestForestStrike(K)
    local R=os.clock ()
    local g= false
    local Q=os.clock ()+ 2.5
    local P= false
    while os.clock ()<Q and(state.alive and state.teleporting )do
        if u and farmSessionId~=u then
            logWarn( "[Snipe] Cancelled by session switch during strike bounce" )
            if v then
                v:Disconnect()
            end
            k.WalkSpeed =p resetMovementState()
            return false
        end
        local e=os.clock ()-R
        local r=j.AssemblyLinearVelocity
        local w=j.Position
        local a=w.Y -J
        local o=((w-B)).Magnitude
        if e>= 0.08 then
            local e=c or(r.Y >= 10 )or(a>= 1.5 and r.Magnitude >= 16 )or(o>= 2 )or(r.Magnitude >= 20 )
            if e then
                g= true
                break
            end
        end
        if e>= 0.5 and not P then
            P= true requestForestStrike(K)
        end
        RunService.Heartbeat :Wait()
    end
    if v then
        v:Disconnect()
    end
    k.WalkSpeed =p state.holdingEggForGuard = false
    if not g then
        logWarn( "[-] No bounce detected, aborting" )state.statusText = "[-] Aborted (No bounce detected)" resetMovementState()pcall(stashEquippedTools)
        return false
    end
    task.wait ( 0.05 )
    if V then
        local e,r=checkEggAvailability(V)
        if not e and r== "CarriedByOther" then
            logWarn(string.format ( "[Snipe] Target egg %s was snatched while bouncing (%s)! Aborting warp..." ,tostring(V),tostring(r)))state.statusText = "Target taken! Aborting warp..." targetCooldownUntil[V]=os.clock ()+ 5 resetMovementState()
            return false
        end
    end
    state.currentTargetModel =e and e.Model state.targetPosition =H state.statusText = "[5/7] Warping to Target Egg..." createSafetyFloor(H, 8 )w:PivotTo(a*CFrame.new ( 0 , 0.4 , 0 ))j.Anchored = true
    for e,r in ipairs(w:GetDescendants())do
        if r:IsA( "BasePart" )then
            r.AssemblyLinearVelocity =Vector3.zero r.AssemblyAngularVelocity =Vector3.zero
        end
    end
    state.statusText = "[6/7] Picking up Target Egg..."
    local U=LocalPlayer:FindFirstChild( "Backpack" )
    for e,y in ipairs(w:GetChildren())do
        if y:IsA( "Tool" )then
            pcall(function(...)
                if U then
                    y.Parent =U
                else
                    y.Parent =Workspace
                end
            end
            )
        end
    end
    task.wait ( 0.06 )j.Anchored = false k:ChangeState(Enum.HumanoidStateType.Running )
    local l=secureEggWithGuardStrike(V,a,e and e.Model ,u)j.Anchored = false k:ChangeState(Enum.HumanoidStateType.Running )
    for e,r in ipairs(w:GetDescendants())do
        if r:IsA( "BasePart" )then
            r.AssemblyLinearVelocity =Vector3.zero r.AssemblyAngularVelocity =Vector3.zero
        end
    end
    if not l then
        logWarn( "[-] Guard Strike criteria not met" )state.statusText = "[-] Guard Strike criteria failed" resetMovementState()
        return false
    else
        state.statusText = "[7/7] Target Secured! Stashing into Backpack..." state.teleporting = false pcall(stashEquippedTools)
        return true
    end
end

-- Return-path recovery: if the stolen egg drops while travelling home,
-- locate the same UID, wait two seconds at its drop point, pick it up again,
-- then resume the original return path.
recoverDroppedEggDuringReturn=function(uid, mode, sessionId)
    if not uid then
        return true
    end

    local function enabled()
        if not state.alive then return false end
        if sessionId and farmSessionId ~= sessionId then return false end
        if mode == "TWEEN" then
            return state.pureTweenFarm and currentFarmMode == "TWEEN"
        elseif mode == "WARP" then
            return state.autoFarmLoop and currentFarmMode == "WARP"
        end
        return false
    end

    local function owned()
        if hasEggInInventory(uid) then
            return true
        end

        local records = readFieldEggs(true)
        for _, record in ipairs(records or {}) do
            if record.Uid == uid then
                local carrier = record.CarrierUserId or record.Carrier
                if (record.State == "Carried" or record.State == 2)
                    and carrier == LocalPlayer.UserId then
                    return true
                end
            end
        end
        return false
    end

    if owned() then
        return true
    end

    local dropped
    for _, record in ipairs(readFieldEggs(true) or {}) do
        if record.Uid == uid
            and (record.State == "Dropped"
                or record.State == "Slot"
                or record.State == 1)
            and record.BoundsCFrame
        then
            dropped = record
            break
        end
    end

    if not dropped or not enabled() then
        return false
    end

    local dropCF = dropped.BoundsCFrame * CFrame.new(0, 0.4, 0)
    local dropPos = dropped.BoundsCFrame.Position
    state.statusText = "Trứng rơi — quay lại lấy sau 2s..."
    state.currentTargetModel = dropped.PhysicalModel
    state.targetPosition = dropPos
    state.isReturning = false

    -- Let the dropped egg settle before re-picking.
    task.wait(2)

    if not enabled() then
        return false
    end

    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(dropPos)
    end)
    createSafetyFloor(dropPos, 8)

    local character = LocalPlayer.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not root then
        return false
    end

    if mode == "WARP" then
        root:PivotTo(dropCF)
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
    else
        local oldGlide = state.glidingToTarget
        state.glidingToTarget = true
        local reached = glideToTargetViaWaypoint(dropCF, state.glideSpeed, uid, sessionId)
        state.glidingToTarget = oldGlide
        if not reached or not enabled() then
            return false
        end
    end

    triggerEggPromptsNearTarget(dropped.PhysicalModel, dropPos)

    local deadline = os.clock() + 3
    while os.clock() < deadline and enabled() and not owned() do
        if AskFieldEggCarryRemote then
            pcall(function()
                if AskFieldEggCarryRemote:IsA("RemoteFunction") then
                    AskFieldEggCarryRemote:InvokeServer({["Uid"] = uid})
                else
                    AskFieldEggCarryRemote:FireServer({["Uid"] = uid})
                end
            end)
        end

        triggerEggPromptsNearTarget(dropped.PhysicalModel, dropPos)
        RunService.Heartbeat:Wait()
    end

    if not enabled() or not owned() then
        return false
    end

    -- Re-secure using the same engine already present in this file.
    state.holdingEggForGuard = true
    local secured = secureEggWithGuardStrike(uid, dropCF, dropped.PhysicalModel, sessionId)
    state.holdingEggForGuard = false

    if not secured and not owned() then
        return false
    end

    pcall(stashEquippedTools)
    state.statusText = "Đã lấy lại trứng — tiếp tục về..."
    return true
end

setFarmMode=function(e,...)
    if currentFarmMode==e then
        return
    end
    farmSessionId=farmSessionId+ 1
    local r=farmSessionId currentFarmMode= "SWITCHING" state.pureTweenFarm = false state.autoFarmLoop = false pcall(resetMovementState)pcall(stashEquippedTools)
    if e== "TWEEN" then
        if setWarpToggleState then
            setWarpToggleState( false , true )
        end
        if setTweenToggleState then
            setTweenToggleState( true , true )
        end
    elseif e== "WARP" then
        if setTweenToggleState then
            setTweenToggleState( false , true )
        end
        if setWarpToggleState then
            setWarpToggleState( true , true )
        end
    else
        if setTweenToggleState then
            setTweenToggleState( false , true )
        end
        if setWarpToggleState then
            setWarpToggleState( false , true )
        end
    end
    task.delay ( 0.06 ,function(...)
        if farmSessionId==r then
            currentFarmMode=e
            if e== "TWEEN" then
                state.pureTweenFarm = true state.autoFarmLoop = false pcall(stashEquippedTools)logInfo( "[FarmController] Pure Auto Steal (Tween) ACTIVATED exclusively." )
            elseif e== "WARP" then
                state.autoFarmLoop = true state.pureTweenFarm = false pcall(stashEquippedTools)logInfo( "[FarmController] Snipe Auto Loop (Warp) ACTIVATED exclusively." )
            else
                state.pureTweenFarm = false state.autoFarmLoop = false
                if not state.isBatchPlacing then
                    state.batchStealCount = 0
                end
                logInfo( "[FarmController] All farms DEACTIVATED. Bot idle." )
            end
        end
    end
    )
end
local lastTweenScanReset=os.clock ()task.spawn (function(...)
    while state.alive do
        local r,y=pcall(function(...)
            if state.pureTweenFarm and(not state.autoFarmLoop and(currentFarmMode== "TWEEN" and(not state.isBatchPlacing and(not state.teleporting and(not state.glidingToTarget and(not state.securingEgg and(not state.delivering and not state.isReturning )))))))then
                local r=LocalPlayer.Character
                local y=r and r:FindFirstChild( "HumanoidRootPart" )
                local u=r and r:FindFirstChildOfClass( "Humanoid" )
                if y and u then
                    pcall(stashEquippedTools)
                    local u=isCarryingEgg()
                    if not u then
                        local u=farmSessionId
                        local w=selectBestTargetEgg()
                        if w and(state.pureTweenFarm and(currentFarmMode== "TWEEN" and farmSessionId==u))then
                            if state.onTreadmill or isOnTreadmill()then
                                state.statusText = "[AutoSteal] Target found! Getting off treadmill..." forceLeaveTreadmill()task.wait ( 0.08 )
                            end
                            local j,k=checkEggAvailability(w.Uid )
                            if not j and k~= "CarriedBySelf" then
                                logInfo(string.format ( "[AutoSteal] Egg %s already taken (%s). Switching to next target..." ,tostring(w.Uid ),tostring(k)))targetCooldownUntil[w.Uid ]=os.clock ()+ 5 task.wait ( 0.12 )
                                return
                            end
                            state.currentTargetModel =w.Model state.targetPosition =w.Position state.glidingToTarget = true state.stateTime =os.clock ()
                            local a=((w.Scale and w.Scale > 1.05 ))and string.format ( " | %.1fx" ,w.Scale )or "" state.statusText =string.format ( "[AutoSteal] Flying to %s (%s%s)..." ,tostring(w.Category or "Egg" ),tostring(w.Area or "Field" ),a)logInfo(string.format ( "[AutoSteal] Flying to %s | Zone: %s%s | Rank: %d (Corridor Z=-360)" ,tostring(w.Category or "Egg" ),tostring(w.Area or "Field" ),a,tonumber(w.Rank )or 1 ))
                            if not state.swapped then
                                swapHumanoidForDesync()
                            end
                            if not state.godmode then
                                setGodmode( true )
                            end
                            suppressRagdoll(r)pcall(function(...) LocalPlayer:RequestStreamAroundAsync(w.Position )
                            end
                            )
                            local V=w.CFrame *CFrame.new ( 0 , 0.4 , 0 )
                            local s=glideToTargetViaWaypoint(V,state.glideSpeed ,w.Uid ,u)state.glidingToTarget = false
                            if farmSessionId~=u or not state.pureTweenFarm or currentFarmMode~= "TWEEN" then
                                return
                            end
                            if not s then
                                logWarn( "[AutoSteal] Egg was taken during flight. Switching to next target..." )targetCooldownUntil[w.Uid ]=os.clock ()+ 5 resetMovementState()
                                return
                            end
                            if state.pureTweenFarm and(currentFarmMode== "TWEEN" and((y.Position -w.Position )).Magnitude <= 22 )then
                                local r=secureEggWithGuardStrike(w.Uid ,V,w.Model ,u)
                                if not r and isCarryingEgg()then
                                    r= true
                                end
                                if farmSessionId~=u or not state.pureTweenFarm or currentFarmMode~= "TWEEN" then
                                    return
                                end
                                if r then
                                    state.nextStealZone = "Lake"
                                    pcall(stashEquippedTools)
                                    if state.autoGlide then
                                        state.statusText = "[AutoSteal] Secured! Tweening to Safe Line X=525..." logInfo( "[AutoSteal] Egg secured after Guard Strike! Returning smoothly to Safe Line X=525 along Z=-360..." )returnToSafeLine(state.glideSpeed ,u,w.Uid,"TWEEN")pcall(stashEquippedTools)
                                        local r=countCarriedEggs()state.statusText =string.format ( "Stashed in Bag (%d Eggs). Next steal..." ,r)logInfo(string.format ( "[AutoSteal] Egg stashed in bag (%d total eggs). Hands-Free ready for next steal..." ,r))
                                    else
                                        state.statusText = "[AutoSteal] Secured! (Auto Return is OFF)" logInfo( "[AutoSteal] Egg secured! Staying at target (Auto Return is OFF)." )
                                    end
                                    pcall(stashEquippedTools)state.isReturning = false state.delivering = false state.glidingToTarget = false state.securingEgg = false state.currentTargetModel =nil state.targetPosition =nil
                                    if countStealAndMaybeBatchPlace( "TWEEN" )then
                                        return
                                    end
                                else
                                    if farmSessionId==u and(state.pureTweenFarm and currentFarmMode== "TWEEN" )then
                                        logWarn( "[AutoSteal] Guard Strike or Re-grab failed. Retrying with next egg..." )targetCooldownUntil[w.Uid ]=os.clock ()+ 5 resetMovementState()
                                    end
                                end
                            else
                                state.currentTargetModel =nil state.targetPosition =nil state.glidingToTarget = false
                            end
                        else
                            if os.clock ()-lastTweenScanReset> 5 then
                                targetCooldownUntil={}lastTweenScanReset=os.clock ()
                            end
                            if state.autoTreadmill and(not state.isBatchPlacing and not state.isHatching )then
                                if not state.onTreadmill and not isOnTreadmill()then
                                    state.statusText = "[AutoTreadmill] No targets. Mounting treadmill..." mountTreadmill(u)
                                else
                                    state.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
                                end
                            else
                                state.statusText = "[AutoSteal] Scanning for targets..."
                            end
                        end
                    end
                end
            end
        end
        )
        if not r then
            logWarn( "[AutoSteal Loop Recovered]:" ,tostring(y))pcall(resetMovementState)
        end
        task.wait ( 0.08 )
    end
end
)
local lastWarpScanReset=os.clock ()task.spawn (function(...)
    while state.alive do
        local r,y=pcall(function(...)
            if state.autoFarmLoop and(not state.pureTweenFarm and(currentFarmMode== "WARP" and(not state.isBatchPlacing and(not state.teleporting and(not state.glidingToTarget and(not state.securingEgg and(not state.delivering and not state.isReturning )))))))then
                local r=LocalPlayer.Character
                local y=r and r:FindFirstChild( "HumanoidRootPart" )
                local u=r and r:FindFirstChildOfClass( "Humanoid" )
                if y and u then
                    pcall(stashEquippedTools)
                    local r=isCarryingEgg()
                    if not r then
                        local r=farmSessionId
                        local y=selectBestTargetEgg()
                        if y and(state.autoFarmLoop and(currentFarmMode== "WARP" and farmSessionId==r))then
                            if state.onTreadmill or isOnTreadmill()then
                                state.statusText = "[SnipeLoop] Target found! Getting off treadmill..." forceLeaveTreadmill()task.wait ( 0.08 )
                            end
                            local u=((y.Scale and y.Scale > 1.05 ))and string.format ( " | %.1fx" ,y.Scale )or "" logInfo(string.format ( "[SnipeLoop] Starting Warp Snipe: %s | Zone: %s%s (Rank %d)" ,tostring(y.Category or "Egg" ),tostring(y.Area or "Field" ),u,tonumber(y.Rank )or 1 ))state.statusText =string.format ( "[SnipeLoop] Warping for %s%s..." ,tostring(y.Category or "Egg" ),u)
                            local w=runWarpStealCycle(y,r)
                            if farmSessionId~=r or not state.autoFarmLoop or currentFarmMode~= "WARP" then
                                return
                            end
                            if w then
                                state.nextStealZone = "Lake"
                                pcall(stashEquippedTools)
                                if state.autoGlide then
                                    state.statusText = "[SnipeLoop] Target secured! Tweening to Safe Line X=525..." returnToSafeLine(state.glideSpeed ,r,y.Uid,"WARP")pcall(stashEquippedTools)
                                    local y=countCarriedEggs()state.statusText =string.format ( "Stashed in Bag (%d Eggs). Next snipe..." ,y)logInfo(string.format ( "[SnipeLoop] Egg stashed in bag (%d total eggs). Hands-Free ready for next snipe..." ,y))
                                else
                                    state.statusText = "[SnipeLoop] Target secured! (Auto Return is OFF)" logInfo( "[SnipeLoop] Snipe successful! Staying at target (Auto Return is OFF)." )
                                end
                                pcall(stashEquippedTools)state.isReturning = false state.delivering = false
                                if countStealAndMaybeBatchPlace( "WARP" )then
                                    return
                                end
                            else
                                if farmSessionId==r and(state.autoFarmLoop and currentFarmMode== "WARP" )then
                                    logWarn( "[SnipeLoop] Snipe cycle failed. Resetting for next target..." )
                                    if y and y.Uid then
                                        targetCooldownUntil[y.Uid ]=os.clock ()+ 5
                                    end
                                    pcall(resetMovementState)
                                end
                            end
                        else
                            if os.clock ()-lastWarpScanReset> 5 then
                                targetCooldownUntil={}lastWarpScanReset=os.clock ()
                            end
                            if state.autoTreadmill and(not state.isBatchPlacing and not state.isHatching )then
                                if not state.onTreadmill and not isOnTreadmill()then
                                    state.statusText = "[AutoTreadmill] No targets. Mounting treadmill..." mountTreadmill(r)
                                else
                                    state.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
                                end
                            else
                                state.statusText = "[SnipeLoop] Searching for targets..."
                            end
                        end
                    end
                end
            end
        end
        )
        if not r then
            logWarn( "[SnipeLoop Loop Recovered]:" ,tostring(y))pcall(resetMovementState)
        end
        task.wait ( 0.08 )
    end
end
)task.spawn (function(...)
    while state.alive do
        local r,y=pcall(function(...)
            if state.autoTreadmill and(not state.pureTweenFarm and(not state.autoFarmLoop and(not state.isBatchPlacing and(not state.isHatching and(not state.teleporting and(not state.glidingToTarget and(not state.securingEgg and(not state.delivering and not state.isReturning ))))))))then
                local e=LocalPlayer.Character
                local y=e and e:FindFirstChild( "HumanoidRootPart" )
                if y and not isCarryingEgg()then
                    if not state.onTreadmill and not isOnTreadmill()then
                        state.statusText = "[AutoTreadmill] Idle without farm. Mounting treadmill..." mountTreadmill()
                    end
                end
            end
        end
        )task.wait ( 0.5 )
    end
end
)task.spawn (function(...)
    while state.alive do
        pcall(function(...)
            if state.autoUpgradeTreadmill then
                tryUpgradeTreadmill()
            end
        end
        )task.wait ( 5 )pcall(function(...)
            if state.autoBuyTrails then
                buyAndEquipBestTrail()
            end
        end
        )task.wait ( 5 )
    end
end
)task.spawn (function(...)
    while state.alive do
        if state.autoHatch and(not state.securingEgg and(not state.teleporting and not state.isHatching ))then
            pcall(function(...) hatchReadyEggs( false )
            end
            )
        end
        task.wait ( 4 )
    end
end
)
local performanceConnection=nil
local function downgradeInstanceForPerformance(e,...) pcall(function(...)
        if e:IsA( "BasePart" )then
            e.Material =Enum.Material.SmoothPlastic e.Reflectance = 0 e.CastShadow = false
            if e:IsA( "MeshPart" )then
                e.TextureID = "" pcall(function(...) e.RenderFidelity =Enum.RenderFidelity.Performance
                end
                )pcall(function(...) e.CollisionFidelity =Enum.CollisionFidelity.Box
                end
                )
            end
        elseif e:IsA( "SpecialMesh" )then
            e.TextureId = ""
        elseif e:IsA( "Decal" )or e:IsA( "Texture" )or e:IsA( "SurfaceAppearance" )then
            e.Transparency = 1
        elseif e:IsA( "ParticleEmitter" )or e:IsA( "Trail" )or e:IsA( "Smoke" )or e:IsA( "Fire" )or e:IsA( "Sparkles" )then
            e.Enabled = false
        elseif e:IsA( "Beam" )then
            e.Enabled = false
        elseif e:IsA( "Explosion" )then
            e.Visible = false
        elseif e:IsA( "Light" )or e:IsA( "PointLight" )or e:IsA( "SpotLight" )or e:IsA( "SurfaceLight" )then
            e.Enabled = false
        elseif e:IsA( "Highlight" )and e.Name ~= "EggESP_Highlight" then
            e.Enabled = false
        end
    end
    )
end
local function enablePerformanceMode(...) state.performanceMode = true pcall(function(...)
        local e=Workspace:FindFirstChild( "DiceHub_EggESP" )
        if e then
            e:Destroy()
        end
        local y=game:GetService( "Lighting" )y.GlobalShadows = false y.FogEnd = 9000000000 y.Brightness = 1 y.ClockTime = 14 y.OutdoorAmbient =Color3.fromRGB ( 128 , 128 , 128 )
        for e,r in ipairs(y:GetChildren())do
            if r:IsA( "PostEffect" )or r:IsA( "BloomEffect" )or r:IsA( "BlurEffect" )or r:IsA( "ColorCorrectionEffect" )or r:IsA( "SunRaysEffect" )or r:IsA( "DepthOfFieldEffect" )or r:IsA( "Atmosphere" )then
                pcall(function(...) r.Enabled = false
                end
                )
            elseif r:IsA( "Sky" )then
                pcall(function(...) r.Parent =nil
                end
                )
            end
        end
        local u=workspace:FindFirstChildOfClass( "Terrain" )
        if u then
            pcall(function(...) u.Decoration = false u.WaterWaveSize = 0 u.WaterWaveSpeed = 0 u.WaterReflectance = 0 u.WaterTransparency = 0
            end
            )
        end
        for e,r in ipairs(workspace:GetDescendants())do
            downgradeInstanceForPerformance(r)
        end
        if not performanceConnection then
            performanceConnection=workspace.DescendantAdded :Connect(function(e,...)
                if state.performanceMode then
                    downgradeInstanceForPerformance(e)
                end
            end
            )
        end
        pcall(function(...)
            if settings and(settings()).Rendering then
                (settings()).Rendering.QualityLevel = 1
            end
        end
        )
    end
    )
end
local function disablePerformanceMode(...) state.performanceMode = false
    if performanceConnection then
        pcall(function(...) performanceConnection:Disconnect()
        end
        )performanceConnection=nil
    end
    pcall(function(...)
        local e=game:GetService( "Lighting" )e.GlobalShadows = true
        for e,r in ipairs(e:GetChildren())do
            if r:IsA( "PostEffect" )or r:IsA( "BloomEffect" )or r:IsA( "BlurEffect" )or r:IsA( "ColorCorrectionEffect" )or r:IsA( "SunRaysEffect" )or r:IsA( "DepthOfFieldEffect" )or r:IsA( "Atmosphere" )then
                pcall(function(...) r.Enabled = true
                end
                )
            end
        end
        local r=workspace:FindFirstChildOfClass( "Terrain" )
        if r then
            pcall(function(...) r.Decoration = true
            end
            )
        end
    end
    )
end
local antiAfkRunning= false
local function pulseAntiAfkInput(...) pcall(function(...)
        local e=game:GetService( "VirtualInputManager" )
        if e then
            e:SendKeyEvent( true ,Enum.KeyCode.Escape , false ,game)task.wait ( 0.12 )e:SendKeyEvent( false ,Enum.KeyCode.Escape , false ,game)task.wait ( 0.35 )e:SendKeyEvent( true ,Enum.KeyCode.Escape , false ,game)task.wait ( 0.12 )e:SendKeyEvent( false ,Enum.KeyCode.Escape , false ,game)pcall(function(...)
                if typeof(e.SendTouchEvent )== "function" then
                    e:SendTouchEvent( 99999 , 0 , 15 , 15 )task.wait ( 0.04 )e:SendTouchEvent( 99999 , 2 , 15 , 15 )
                end
            end
            )
        end
    end
    )pcall(function(...)
        if typeof(mousemoverel)== "function" then
            mousemoverel( 1 , 0 )task.wait ( 0.05 )mousemoverel( -1 , 0 )
        end
    end
    )
end
local function enableAntiAfk(...)
    if antiAfkRunning then
        return
    end
    antiAfkRunning= true task.spawn (function(...)
        while state and(state.alive and state.antiAFK )do
            local r= 0
            while r< 600 and(state and(state.alive and(state.antiAFK and antiAfkRunning)))do
                task.wait ( 5 )r=r+ 5
            end
            if not state.antiAFK or not antiAfkRunning then
                break
            end
            pulseAntiAfkInput()
        end
        antiAfkRunning= false
    end
    )
end
local function disableAntiAfk(...) antiAfkRunning= false
end
RunService.Heartbeat :Connect(function(...)
    local e=LocalPlayer.Character
    local r=e and e:FindFirstChild( "HumanoidRootPart" )
    local y=e and e:FindFirstChildOfClass( "Humanoid" )
    if not r then
        return
    end
    if y and not((state and state.onTreadmill ))then
        if y.PlatformStand then
            y.PlatformStand = false y:ChangeState(Enum.HumanoidStateType.Running )
        end
        if y.Sit and((state.pureTweenFarm or state.autoFarmLoop or state.isReturning or state.glidingToTarget ))then
            y.Sit = false y:ChangeState(Enum.HumanoidStateType.Running )
        end
    end
    local u=r.Position
    local w=isCarryingEgg()
    if u.Y < 45 then
        r.CFrame =CFrame.new (u.X , 72 ,u.Z )r.AssemblyLinearVelocity =Vector3.zero
        return
    end
    if((state.pureTweenFarm or state.autoFarmLoop ))and not state.holdingEggForGuard then
        local r= false
        for e,y in ipairs(e:GetChildren())do
            if y:IsA( "Tool" )then
                r= true
                break
            end
        end
        if r then
            stashEquippedTools()
        end
    end
    if state.pureTweenFarm or state.autoFarmLoop or state.teleporting or state.glidingToTarget or state.delivering or state.securingEgg or state.isReturning then
        return
    end
    if state.alive and(state.autoGlide and(w and(not isCarryingLakeEgg()and u.X >BASE_EDGE_X)))then
        task.spawn (function(...) returnToSafeLine(state.glideSpeed )stashEquippedTools()state.isReturning = false state.delivering = false
        end
        )
    end
end
)
local ICON_BASE64= "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAedEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEw/7R3GwAAA6BJREFUeN7tW01oE1EQnk0qih4sevCiF/Wg4kEPgqeCHsSDhyIeVIoHDx48KIKHIh48ePAgePBiPRQ8eBA8COJBD4L4B8WD4kHxov7cm2yT3WzeZjdps7t58CG72bebzPfevPlmdg3DMFwul8vlcv13qampWSKi82S2kxgiVpLZZ2T2G5lDZHaRmU9mDxEViOgqEZ1Np9N3V1ZWLlutFh1vNJvN5+12+4bf77+s/p5zIuKCiAgiGhcRLkRkCRkH+rYikYjlOE7G87w/wWBwLxKJbIeDk8mky3q31xG/37/FwR1Fq9V6Q0SX1N9tIuKNiKgiIo/bbrfb+zwez44qchRzHMcioh2Xy6Xb7fYDIsrqu5WIeBDRoohwJ2VlZaWRSCS2VNEdzZTL5ctEdF1V5Yj4QUQ8EXG73e51j8ejiojOa/V6/ZaI7tDfvUS0SUQJEXFeRNRUVVW5mZmZe/R7kZ2cTCZ1vV4/yXfO/4eQeC4iWqpQKJRkZWWl9XrdISJDRMKIyKqqqjIjI2Pj4uLiGef8lMvlYg4eE9E1VVVP9ff/c5z4n04Gg0F3PB7/TkR5dF6k4/F4v9frdc3NzbV1XW/R/2lEVBER91RVVV1TU8OHr1gsVpP198lkct5xnM/q73kiOq+O37G6uvrVdV2u1+vv6XkRkS8UCr3xeDybyuVydWVlZZlOp9v0/y/O+X41538j1b+/qKurW1bVjYg4b0xMTKyqPZ8gIs7pYx7e1/V6/bKa1xEi6k9OTnZVVVW/IqI7RLRJRHkikVhyHGdBVff9+/cf6LpOU1NTD/T3NBFxRkR00Xm1Xq/fV0U+JqK/RETJ7OzsM7vdzhw81nW9RURDRHSpWCze13Wd6/X6bVV0u6qq6mUkEtnSdV3S10z9vUtE3InpdPrB8vLybSLiTk5OTg1tQ7eP8+jo6Jqqwscikcj2wsLCGuf8FBFxJycnJ7sNDQ1rV1dXWzQ4JCKHqnK6XC5bVfS06rp+k6ry8ZWVFR4eHl4jIs4jIyN9hmF81HX9B1Xl9MTERD8RcfN4PDupVOq+67pP1H1bJpPpvb6+7hPRfVVVV0ZGRtiVlRWWSCReZ7PZX36//6Cvr48PDQ09y2azVzwez7Kqqk8556fdbvdnItpVVdUaGRmZoKqaoP6sUjKZ3B8YGGBd122qyu3j/Ojo6F1N034MDAyw6elpW1VVLhQKzH1HRkZ6m4qKiicikajlOI7ler3e9y6X643L5dqi/+NyuZ6rqvpOVdV/Kysr51wu17fW3w8AAAD//wMAe7/lQy8mR0AAAAAElFTkSuQmCC"
local function decodeBase64(e,...)
    if crypt and crypt.base64decode then
        return crypt.base64decode (e)
    end
    if base64_decode then
        return base64_decode(e)
    end
    if syn and(syn.crypt and(syn.crypt.base64 and syn.crypt.base64 .decode ))then
        return syn.crypt.base64 .decode (e)
    end
    local r= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local y={}
    for e= 1 ,#r, 1 do
        y[r:sub(e,e)]=e- 1
    end
    e=(e:gsub( "[^" ..(r.. "=]" ), "" )):gsub( "=" , "" )
    local u={}
    for r= 1 ,#e, 4 do
        local j=y[e:sub(r,r)]or 0
        local k=y[e:sub(r+ 1 ,r+ 1 )]or 0
        local a=y[e:sub(r+ 2 ,r+ 2 )]
        local o=y[e:sub(r+ 3 ,r+ 3 )]table.insert (u,string.char (bit32.bor (bit32.lshift (j, 2 ),bit32.rshift (k, 4 ))))
        if a then
            table.insert (u,string.char (bit32.bor (bit32.lshift (bit32.band (k, 15 ), 4 ),bit32.rshift (a, 2 ))))
            if o then
                table.insert (u,string.char (bit32.bor (bit32.lshift (bit32.band (a, 3 ), 6 ),o)))
            end
        end
    end
    return table.concat (u)
end
local ICON_FILE= "Dice_Hub_Icon.png"
local iconAsset= "rbxassetid://10734950309" pcall(function(...)
    if writefile and((getcustomasset or getsynasset))then
        local e=getcustomasset or getsynasset
        if not((isfile and isfile(ICON_FILE)))then
            writefile(ICON_FILE,decodeBase64(ICON_BASE64))
        end
        iconAsset=e(ICON_FILE)
    end
end
)
local uiLanguage=currentLang or "EN"
local UI_TEXT={[ "EN" ]={[ "StatusTagReady" ]= "Status: Ready" ,[ "Tabs" ]={[ "Farm" ]= "Auto Farm" ;
[ "EggSelect" ]= "Egg Selection" ;
[ "Character" ]= "Character" ,[ "Settings" ]= "Settings" },[ "EggSelect" ]={[ "SecZones" ]= "Target Zones" ;
[ "SecZonesDesc" ]= "Select zones to steal regular eggs from (Secret+ bypasses this filter)" ,[ "DropZonesTitle" ]= "Selected Zones" ,[ "DropZonesDesc" ]= "Click to choose which zones to farm eggs from" ;
[ "SecRarities" ]= "Target Rarities" ;
[ "SecRaritiesDesc" ]= "Select egg rarities to target" ;
[ "DropRaritiesTitle" ]= "Selected Rarities" ;
[ "DropRaritiesDesc" ]= "Click to choose which rarities to collect" ,[ "AlwaysSecretPlus" ]= "Always Steal Secret+ Eggs" ;
[ "AlwaysSecretPlusDesc" ]= "Collect Secret, Eternal, Divine eggs from any zone automatically" },[ "Farm" ]={[ "SecModes" ]= "Auto Steal Modes" ,[ "TweenTitle" ]= "Auto Steal (Tween)" ,[ "TweenDesc" ]= "Smoothly fly to steal eggs continuously along the high-speed highway corridor" ;
[ "TeleportTitle" ]= "Auto Steal (Teleport)" ;
[ "TeleportDesc" ]= "Instantly warp to steal eggs in a rapid continuous loop" ,[ "SingleTitle" ]= "Single Steal (Teleport)" ,[ "SingleDesc" ]= "Teleport to steal 1 target egg and return to base" ;
[ "SecPlace" ]= "Place & Hatch" ;
[ "PlaceTitle" ]= "Place Eggs" ,[ "PlaceDesc" ]= "Fly home, place stashed eggs into open incubator stands and request hatch" ,[ "AutoPlaceTitle" ]= "Auto Place (Every 5)" ;
[ "AutoPlaceDesc" ]= "Return home every 5 steals to deposit eggs" ;
[ "HatchTitle" ]= "Auto Hatch" ,[ "HatchDesc" ]= "Continuously hatch ready eggs automatically from anywhere" ,[ "ReturnTitle" ]= "Auto Return" ,[ "ReturnDesc" ]= "Automatically fly back to safe area after stealing" ;
[ "AutoTreadmillTitle" ]= "Auto Treadmill" ,[ "AutoTreadmillDesc" ]= "Run on base treadmill when no target eggs are spawned" ,[ "UpgradeTreadmillTitle" ]= "Auto Upgrade Treadmill" ;
[ "UpgradeTreadmillDesc" ]= "Automatically upgrade base treadmill tier when you have enough cash" ;
[ "BuyTrailsTitle" ]= "Auto Buy & Equip Trails" ,[ "BuyTrailsDesc" ]= "Automatically purchase and equip the best speed trail available" ,[ "HideNotEnoughMoneyTitle" ]= "Hide 'Not Enough Money' UI" ,[ "HideNotEnoughMoneyDesc" ]= "Automatically suppress and hide the red 'Not enough money' game alert" };
[ "Character" ]={[ "SecSafety" ]= "Character & Safety" ,[ "GodmodeTitle" ]= "Godmode" ,[ "GodmodeDesc" ]= "Full immunity against map obstacles, traps, and hazards" ,[ "UnstickTitle" ]= "Get Unstuck" ;
[ "UnstickDesc" ]= "Instantly break free from treadmills, seats, or map geometry" ,[ "SecFlight" ]= "Flight Settings" ;
[ "SpeedTitle" ]= "Flight Speed" ,[ "SpeedDesc" ]= "Adjust cruise flight speed (studs/second)" };
[ "Settings" ]={[ "SecDashboard" ]= "Live Dashboard" ;
[ "DashTitle" ]= "Live Dashboard" ;
[ "DashDesc" ]= "Status: %s\nFarm Mode: %s\nCarried Eggs: %d\nFlight Speed: %d studs/s" ;
[ "SecBlacklist" ]= "Zone Preferences" ,[ "BlacklistToggleTitle" ]= "Target Zone: %s" ;
[ "BlacklistToggleDesc" ]= "Enable egg stealing in %s (Secret+ always collected)" ;
[ "SecUI" ]= "UI Customization" ,[ "TranspTitle" ]= "Window Transparency" ;
[ "TranspDesc" ]= "Adjust background transparency of the UI window (0% - 90%)" ;
[ "ThemeTitle" ]= "Select Theme" ;
[ "SecPerformance" ]= "Performance & Graphics" ,[ "PerformanceTitle" ]= "Ultra Potato Mode (Maximum FPS Boost)" ,[ "PerformanceDesc" ]= "Disables textures, meshes, lights, shadows, effects and particles for maximum FPS" ;
[ "Disable3DTitle" ]= "Disable 3D Rendering (GPU Saver 95%)" ,[ "Disable3DDesc" ]= "Freezes 3D viewport rendering to drop GPU usage to ~1%. Perfect for overnight farming!" ,[ "LangTitle" ]= "Language" ,[ "BtnTranslate" ]= "Switch to Thai" ;
[ "DescTranslate" ]= "Switch interface language to Thai" ,[ "SecSystem" ]= "System Controls" ;
[ "AntiAFKTitle" ]= "Anti-AFK (Double-Esc 10m / Mobile)" ,[ "AntiAFKDesc" ]= "Double-Esc menu pulse every 10m + Mobile touch + PC jitter resets idle timer safely without Idled" ,[ "ResetTitle" ]= "Reset Character State" ,[ "ResetDesc" ]= "Clear internal states and unlock character movement" ;
[ "RejoinTitle" ]= "Rejoin Server" ,[ "RejoinDesc" ]= "Reconnect to the same server automatically" ;
[ "UnloadTitle" ]= "Unload Script" ,[ "UnloadDesc" ]= "Completely terminate all loops and close the interface" };
[ "Notifications" ]={[ "PlaceStarted" ]= "Flying back to base to place eggs..." ;
[ "PlaceDone" ]= "Eggs placed on stands and hatch requested!" ,[ "AutoPlaceStarted" ]= "Auto Place (Every 5) enabled" ;
[ "AutoPlaceStopped" ]= "Auto Place (Every 5) disabled" ,[ "NoEggFound" ]= "No eligible eggs found matching your filter" ,[ "UnstickDone" ]= "Unstick request sent successfully!" ;
[ "TweenStarted" ]= "Auto Steal (Tween) activated" ,[ "TweenStopped" ]= "Auto Steal (Tween) deactivated" ;
[ "TeleportStarted" ]= "Auto Steal (Teleport) activated" ;
[ "TeleportStopped" ]= "Auto Steal (Teleport) deactivated" ;
[ "HatchStarted" ]= "Auto Hatch enabled" ;
[ "HatchStopped" ]= "Auto Hatch disabled" ;
[ "ReturnStarted" ]= "Auto Return enabled" ,[ "ReturnStopped" ]= "Auto Return disabled" ;
[ "AutoTreadmillStarted" ]= "Auto Treadmill enabled (Runs when idle)" ,[ "AutoTreadmillStopped" ]= "Auto Treadmill disabled" ,[ "UpgradeTreadmillStarted" ]= "Auto Upgrade Treadmill enabled" ;
[ "UpgradeTreadmillStopped" ]= "Auto Upgrade Treadmill disabled" ;
[ "BuyTrailsStarted" ]= "Auto Buy Trails enabled" ;
[ "BuyTrailsStopped" ]= "Auto Buy Trails disabled" ;
[ "HideNotEnoughMoneyStarted" ]= "Hide 'Not Enough Money' alert enabled" ,[ "HideNotEnoughMoneyStopped" ]= "Hide 'Not Enough Money' alert disabled" ,[ "GodmodeStarted" ]= "Godmode enabled" ,[ "GodmodeStopped" ]= "Godmode disabled" ,[ "PerformanceStarted" ]= "Ultra Potato Mode enabled (Textures & effects removed)" ;
[ "PerformanceStopped" ]= "Ultra Potato Mode disabled" ;
[ "Disable3DStarted" ]= "3D Rendering disabled (GPU Saver Active)" ,[ "Disable3DStopped" ]= "3D Rendering restored" ,[ "AntiAFKStarted" ]= "Anti-AFK enabled (Double-Esc 10m & Mobile support)" ,[ "AntiAFKStopped" ]= "Anti-AFK disabled" ,[ "LangSwitched" ]= "Language switched to English successfully!" }},[ "TH" ]={[ "StatusTagReady" ]= "สถานะ: พร้อมทำงาน" ,[ "Tabs" ]={[ "Farm" ]= "ระบบฟาร์ม" ;
[ "EggSelect" ]= "เลือกประเภทไข่" ,[ "Character" ]= "ตัวละคร" ;
[ "Settings" ]= "ตั้งค่า" },[ "EggSelect" ]={[ "SecZones" ]= "เลือกโซนเป้าหมาย" ,[ "SecZonesDesc" ]= "เลือกโซนที่ต้องการไปขโมยไข่ (ไข่ระดับ Secret ขึ้นไปจะไม่สนโซน)" ,[ "DropZonesTitle" ]= "โซนเป้าหมายที่เลือก" ,[ "DropZonesDesc" ]= "คลิกเพื่อเลือกโซนที่ต้องการขโมยไข่" ,[ "SecRarities" ]= "เลือกระดับความหายาก" ,[ "SecRaritiesDesc" ]= "เลือกระดับความหายากของไข่ที่ต้องการขโมย" ,[ "DropRaritiesTitle" ]= "ระดับความหายากที่เลือก" ;
[ "DropRaritiesDesc" ]= "คลิกเพื่อเลือกระดับความหายากที่ต้องการขโมย" ;
[ "AlwaysSecretPlus" ]= "เก็บไข่ Secret+ ทุกโซนเสมอ" ;
[ "AlwaysSecretPlusDesc" ]= "ขโมยไข่ระดับ Secret, Eternal, Divine ทันทีไม่ว่าจะเกิดที่โซนใด" };
[ "Farm" ]={[ "SecModes" ]= "โหมดขโมยไข่อัตโนมัติ" ,[ "TweenTitle" ]= "ขโมยไข่อัตโนมัติ (บินเร็ว)" ,[ "TweenDesc" ]= "บินไปขโมยไข่และเก็บใส่กระเป๋าอย่างต่อเนื่องตามทางด่วนความเร็วสูง" ,[ "TeleportTitle" ]= "ขโมยไข่อัตโนมัติ (วาร์ป)" ;
[ "TeleportDesc" ]= "วาร์ปไปขโมยไข่อย่างรวดเร็วและต่อเนื่อง" ,[ "SingleTitle" ]= "ขโมยไข่ใบเดียว" ,[ "SingleDesc" ]= "วาร์ปไปขโมยไข่เป้าหมาย 1 ใบแล้วกลับมาที่ฐานทันที" ;
[ "SecPlace" ]= "นำส่งและฟักไข่" ;
[ "PlaceTitle" ]= "วางไข่ในรัง" ;
[ "PlaceDesc" ]= "บินกลับบ้านและนำไข่ในตัวไปวางบนแท่นฟักที่ว่างแล้วเริ่มฟักทันที" ,[ "AutoPlaceTitle" ]= "วางไข่อัตโนมัติ (ทุก 5 ฟอง)" ,[ "AutoPlaceDesc" ]= "กลับบ้านทุกครั้งที่ขโมยครบ 5 ฟองเพื่อนำไข่ไปวาง" ;
[ "HatchTitle" ]= "ฟักไข่อัตโนมัติ" ,[ "HatchDesc" ]= "สั่งฟักไข่ที่พร้อมฟักอย่างต่อเนื่องจากทุกที่" ;
[ "ReturnTitle" ]= "บินกลับพื้นที่ปลอดภัย" ,[ "ReturnDesc" ]= "บินกลับเข้าพื้นที่ปลอดภัยอัตโนมัติหลังขโมยไข่เสร็จ" ;
[ "AutoTreadmillTitle" ]= "วิ่งลู่วิ่งอัตโนมัติ" ;
[ "AutoTreadmillDesc" ]= "ไปวิ่งบนลู่วิ่งที่บ้านอัตโนมัติเมื่อไม่มีไข่ตามที่เลือกเกิด" ;
[ "UpgradeTreadmillTitle" ]= "อัปเกรดลู่วิ่งอัตโนมัติ" ;
[ "UpgradeTreadmillDesc" ]= "อัปเกรดระดับลู่วิ่งที่บ้านอัตโนมัติทันทีที่มีเงินพอ" ;
[ "BuyTrailsTitle" ]= "ซื้อและใส่ Trail อัตโนมัติ" ,[ "BuyTrailsDesc" ]= "ซื้อเส้นทางเพิ่มความเร็วและสวมใส่อันที่ดีที่สุดอัตโนมัติเมื่อเงินพอ" ;
[ "HideNotEnoughMoneyTitle" ]= "ซ่อนแจ้งเตือนเงินไม่พอ" ;
[ "HideNotEnoughMoneyDesc" ]= "บล็อกและซ่อนข้อความสีแดง 'Not enough money' จากตัวเกมอัตโนมัติ" };
[ "Character" ]={[ "SecSafety" ]= "ความปลอดภัยและตัวละคร" ;
[ "GodmodeTitle" ]= "โหมดอมตะ" ;
[ "GodmodeDesc" ]= "ป้องกันดาเมจจากสิ่งกีดขวางและกับดัก 100%" ;
[ "UnstickTitle" ]= "แก้ตัวติด / ลงจากลู่วิ่ง" ,[ "UnstickDesc" ]= "หลุดออกจากสิ่งกีดขวางหรืออุปกรณ์ทันที" ,[ "SecFlight" ]= "การตั้งค่าการบิน" ,[ "SpeedTitle" ]= "ความเร็วการบิน" ;
[ "SpeedDesc" ]= "ปรับความเร็วในการบิน (Studs/วินาที)" };
[ "Settings" ]={[ "SecDashboard" ]= "แดชบอร์ดสถานะสด" ;
[ "DashTitle" ]= "แดชบอร์ดสถานะสด" ;
[ "DashDesc" ]= "สถานะ: %s\nโหมดฟาร์ม: %s\nจำนวนไข่ในตัว: %d ฟอง\nความเร็วการบิน: %d Studs/วิ" ;
[ "SecBlacklist" ]= "ตัวเลือกโซนที่ต้องการ" ;
[ "BlacklistToggleTitle" ]= "ขโมยในโซน: %s" ,[ "BlacklistToggleDesc" ]= "เปิด/ปิด การขโมยไข่ทั่วไปในโซน %s (ระดับ Secret+ จะเก็บเสมอ)" ;
[ "SecUI" ]= "ปรับแต่งหน้าต่าง" ;
[ "TranspTitle" ]= "ความโปร่งใสของหน้าต่าง" ,[ "TranspDesc" ]= "ปรับความโปร่งแสงของพื้นหลังหน้าต่าง (0% - 90%)" ;
[ "ThemeTitle" ]= "เลือกธีมหน้าต่าง" ;
[ "SecPerformance" ]= "ประสิทธิภาพและกราฟิก" ;
[ "PerformanceTitle" ]= "โหมดภาพกากขั้นสุด (Ultra Potato Mode)" ;
[ "PerformanceDesc" ]= "ลดกราฟิก ลบ Texture ของโมเดล ปิดเงา ปิดแสงไฟ และปิดเอฟเฟกต์ทั้งหมดเพื่อความลื่นขั้นสุด" ;
[ "Disable3DTitle" ]= "ปิดเรนเดอร์ 3D / จอดำ (ประหยัด GPU 95%)" ,[ "Disable3DDesc" ]= "หยุดประมวลผลภาพ 3D ลดภาระการ์ดจอเหลือ 1% เหมาะสำหรับเปิดฟาร์มทิ้งไว้ข้ามคืน (หน้าต่าง UI ยังทำงานปกติ)" ,[ "LangTitle" ]= "ภาษา" ;
[ "BtnTranslate" ]= "เปลี่ยนเป็นภาษาอังกฤษ" ;
[ "DescTranslate" ]= "เปลี่ยนภาษาของหน้าต่างทั้งหมดเป็นภาษาอังกฤษ" ,[ "SecSystem" ]= "จัดการระบบ" ;
[ "AntiAFKTitle" ]= "ป้องกัน AFK เตะ (กด Esc 2 ที / รองรับมือถือ)" ;
[ "AntiAFKDesc" ]= "กด Esc เปิด-ปิดเมนูอัตโนมัติทุก 10 นาที + สัญญาณ Touch มือถือ รีเซ็ตตัวนับ 20 นาที ปลอดภัยไม่แตะเกม" ;
[ "ResetTitle" ]= "รีเซ็ตสถานะตัวละคร" ;
[ "ResetDesc" ]= "ล้างสถานะภายในทั้งหมดและปลดล็อกการเคลื่อนที่ทันที" ;
[ "RejoinTitle" ]= "เข้าเซิร์ฟเวอร์ใหม่" ,[ "RejoinDesc" ]= "เชื่อมต่อกลับเข้าเซิร์ฟเวอร์เดิมใหม่อัตโนมัติ" ,[ "UnloadTitle" ]= "ปิดสคริปต์สมบูรณ์" ;
[ "UnloadDesc" ]= "หยุดการทำงานของลูปทั้งหมดและปิดหน้าต่างอย่างปลอดภัย" };
[ "Notifications" ]={[ "PlaceStarted" ]= "กำลังบินกลับบ้านเพื่อนำไข่ไปวาง..." ;
[ "PlaceDone" ]= "วางไข่บนแท่นฟักและเริ่มฟักเรียบร้อย!" ;
[ "AutoPlaceStarted" ]= "เปิดใช้งาน วางไข่อัตโนมัติ (ทุก 5 ฟอง)" ,[ "AutoPlaceStopped" ]= "ปิดใช้งาน วางไข่อัตโนมัติ" ,[ "NoEggFound" ]= "ไม่พบไข่ที่ตรงตามเงื่อนไขในขณะนี้" ;
[ "UnstickDone" ]= "ส่งคำสั่งแก้ตัวติดเรียบร้อย!" ,[ "TweenStarted" ]= "เปิดใช้งาน ขโมยไข่อัตโนมัติ (บินเร็ว)" ,[ "TweenStopped" ]= "ปิดใช้งาน ขโมยไข่อัตโนมัติ (บินเร็ว)" ;
[ "TeleportStarted" ]= "เปิดใช้งาน ขโมยไข่อัตโนมัติ (วาร์ป)" ,[ "TeleportStopped" ]= "ปิดใช้งาน ขโมยไข่อัตโนมัติ (วาร์ป)" ,[ "HatchStarted" ]= "เปิดใช้งาน ฟักไข่อัตโนมัติ" ;
[ "HatchStopped" ]= "ปิดใช้งาน ฟักไข่อัตโนมัติ" ,[ "ReturnStarted" ]= "เปิดใช้งาน บินกลับพื้นที่ปลอดภัย" ,[ "ReturnStopped" ]= "ปิดใช้งาน บินกลับพื้นที่ปลอดภัย" ;
[ "AutoTreadmillStarted" ]= "เปิดใช้งาน วิ่งลู่วิ่งอัตโนมัติ (ทำงานเมื่อว่าง)" ;
[ "AutoTreadmillStopped" ]= "ปิดใช้งาน วิ่งลู่วิ่งอัตโนมัติ" ,[ "UpgradeTreadmillStarted" ]= "เปิดใช้งาน อัปเกรดลู่วิ่งอัตโนมัติ" ,[ "UpgradeTreadmillStopped" ]= "ปิดใช้งาน อัปเกรดลู่วิ่งอัตโนมัติ" ;
[ "BuyTrailsStarted" ]= "เปิดใช้งาน ซื้อและใส่ Trail อัตโนมัติ" ;
[ "BuyTrailsStopped" ]= "ปิดใช้งาน ซื้อและใส่ Trail อัตโนมัติ" ;
[ "HideNotEnoughMoneyStarted" ]= "เปิดใช้งาน ซ่อนแจ้งเตือนเงินไม่พอ" ,[ "HideNotEnoughMoneyStopped" ]= "ปิดใช้งาน ซ่อนแจ้งเตือนเงินไม่พอ" ,[ "GodmodeStarted" ]= "เปิดใช้งาน โหมดอมตะ" ;
[ "GodmodeStopped" ]= "ปิดใช้งาน โหมดอมตะ" ,[ "PerformanceStarted" ]= "เปิดใช้งาน โหมดภาพกากขั้นสุด (ลบ Texture และแสงเงา)" ;
[ "PerformanceStopped" ]= "ปิดใช้งาน โหมดภาพกากขั้นสุด" ,[ "Disable3DStarted" ]= "เปิดใช้งาน โหมดประหยัด GPU (ปิดเรนเดอร์ 3D)" ;
[ "Disable3DStopped" ]= "คืนค่าการแสดงผล 3D ตามปกติแล้ว" ;
[ "AntiAFKStarted" ]= "เปิดใช้งาน ป้องกัน AFK (กด Esc 2 ที ทุก 10 นาที + รองรับมือถือ)" ;
[ "AntiAFKStopped" ]= "ปิดใช้งาน ป้องกัน AFK" ;
[ "LangSwitched" ]= "เปลี่ยนภาษาเป็นภาษาไทยเรียบร้อยแล้ว!" }}}
local uiRefs={}
local hk,Ok,Yk,Tk
local WINDUI_TABS={ "Farm" ;
"EggSelect" ;
"Character" , "Settings" }
local function tr(e,...)
    local r=(e== "TH" )
    if state.delivering then
        return r and "กำลังวางไข่" or "Placing Egg"
    elseif state.securingEgg or state.holdingEggForGuard then
        return r and "กำลังหยิบไข่" or "Securing Egg"
    elseif state.teleporting then
        return r and "กำลังวาร์ป" or "Teleporting"
    elseif state.isReturning then
        return r and "กำลังบินกลับ" or "Returning"
    elseif state.glidingToTarget then
        return r and "กำลังบินไปขโมย" or "Stealing"
    elseif state.onTreadmill or(isOnTreadmill and isOnTreadmill())then
        return r and "อยู่บนลู่วิ่ง" or "On Treadmill"
    elseif currentFarmMode== "TWEEN" and not state.isReturning then
        return r and "กำลังหาไข่" or "Searching"
    elseif currentFarmMode== "WARP" and not state.isReturning then
        return r and "กำลังหาไข่" or "Searching"
    else
        return r and "พร้อมทำงาน" or "Ready"
    end
end
local function createNotice(e,...) pcall(function(...)
        if e:IsA( "TextLabel" )or e:IsA( "TextButton" )or e:IsA( "TextBox" )then
            e.AutoLocalize = false
        end
        for e,y in ipairs(e:GetDescendants())do
            if y:IsA( "TextLabel" )or y:IsA( "TextButton" )or y:IsA( "TextBox" )then
                y.AutoLocalize = false
            end
        end
    end
    )
end
local function updateControlText(e,r,y,...)
    if not e then
        return
    end
    pcall(function(...)
        if r and e.SetTitle then
            e:SetTitle(r)
        end
        if y and e.SetDesc then
            e:SetDesc(y)
        end
    end
    )pcall(function(...)
        if e.UIElements then
            if r and(e.UIElements.Title and e.UIElements.Title :IsA( "TextLabel" ))then
                e.UIElements.Title .AutoLocalize = false e.UIElements.Title .Text =r
            end
            if y and(e.UIElements.Desc and e.UIElements.Desc :IsA( "TextLabel" ))then
                e.UIElements.Desc .AutoLocalize = false e.UIElements.Desc .Text =y
            end
        end
    end
    )
end
local function styleInteractiveControl(e,r,y,...) pcall(function(...)
        if not e then
            return
        end
        if e.UIElements and(e.UIElements.Title and e.UIElements.Title :IsA( "TextLabel" ))then
            e.UIElements.Title .TextColor3 =r
        end
        if e.UIElements and e.UIElements.ButtonIcon then
            local y=e.UIElements.ButtonIcon :FindFirstChildOfClass( "ImageLabel" )or e.UIElements.ButtonIcon
            if y and y:IsA( "ImageLabel" )then
                y.ImageColor3 =r
            end
        end
        local u=nil
        if e.ButtonFrame and(e.ButtonFrame.UIElements and e.ButtonFrame.UIElements .Main )then
            u=e.ButtonFrame.UIElements .Main
        elseif e.ToggleFrame and(e.ToggleFrame.UIElements and e.ToggleFrame.UIElements .Main )then
            u=e.ToggleFrame.UIElements .Main
        elseif e.ElementFrame then
            u=e.ElementFrame
        elseif e.UIElements and e.UIElements.Main then
            u=e.UIElements.Main
        end
        if u and u:IsA( "GuiObject" )then
            local e=u:FindFirstChild( "AccentCorner" )or u:FindFirstChildOfClass( "UICorner" )
            if e then
                e:Destroy()
            end
            local j=u:FindFirstChild( "DiceAccentStroke" )or u:FindFirstChildOfClass( "UIStroke" )
            if j then
                j:Destroy()
            end
            local k=u:FindFirstChild( "AccentSquircleOutline" )
            if k then
                k:Destroy()
            end
            for e,r in ipairs(u:GetDescendants())do
                if r:IsA( "ImageLabel" )and((string.find (tostring(r.Image ), "117817408534198" )or string.find (r.Name :lower(), "outline" )))then
                    r.Visible = false r.ImageTransparency = 1
                end
            end
            local a=y
            if not a then
                local e,y,u=r:ToHSV()a=Color3.fromHSV (e,math.clamp (y* 0.4 , 0.18 , 0.45 ), 0.18 )
            end
            u.ThemeTag =nil u.ImageColor3 =a u.ImageTransparency = 0.08
        end
    end
    )
end
local function recolorWindUiControls(...) styleInteractiveControl(uiRefs.togTween ,Color3.fromRGB ( 0 , 195 , 255 ),Color3.fromRGB ( 24 , 40 , 46 ))styleInteractiveControl(uiRefs.togTeleport ,Color3.fromRGB ( 168 , 85 , 247 ),Color3.fromRGB ( 36 , 24 , 46 ))styleInteractiveControl(uiRefs.btnPlaceEgg ,Color3.fromRGB ( 16 , 215 , 130 ),Color3.fromRGB ( 24 , 45 , 36 ))styleInteractiveControl(uiRefs.togAutoPlaceEvery5 ,Color3.fromRGB ( 14 , 165 , 233 ),Color3.fromRGB ( 24 , 38 , 46 ))styleInteractiveControl(uiRefs.togGodmode ,Color3.fromRGB ( 244 , 63 , 94 ),Color3.fromRGB ( 46 , 24 , 28 ))styleInteractiveControl(uiRefs.btnUnstick ,Color3.fromRGB ( 249 , 115 , 22 ),Color3.fromRGB ( 46 , 32 , 24 ))styleInteractiveControl(uiRefs.btnReset ,Color3.fromRGB ( 99 , 102 , 241 ),Color3.fromRGB ( 25 , 26 , 46 ))styleInteractiveControl(uiRefs.btnLangSettings ,Color3.fromRGB ( 245 , 180 , 30 ),Color3.fromRGB ( 46 , 38 , 24 ))
end
local function setLanguage(e,...)
    local r=e or uiLanguage or "EN"
    local y=UI_TEXT[r]or UI_TEXT.EN
    local u={hk,Ok;
    Yk;
    Tk}
    local w={ "Farm" ;
    "EggSelect" , "Character" ;
    "Settings" }
    for e,r in ipairs(u)do
        local u=w[e]
        local k=y.Tabs [u]or u
        if r then
            r.Title =k pcall(function(...)
                if r.SetTitle then
                    r:SetTitle(k)
                end
            end
            )pcall(function(...)
                if r.UIElements and r.UIElements.Main then
                    for r,y in ipairs(r.UIElements.Main :GetDescendants())do
                        if y:IsA( "TextLabel" )then
                            y.AutoLocalize = false y.Text =k
                        end
                    end
                end
                if r.UIElements and r.UIElements.TabItem then
                    for r,y in ipairs(r.UIElements.TabItem :GetDescendants())do
                        if y:IsA( "TextLabel" )then
                            y.AutoLocalize = false y.Text =k
                        end
                    end
                end
            end
            )
        end
    end
    pcall(function(...)
        if Window and(Window.TabModule and Window.TabModule.Tabs )then
            for r= 1 ,#WINDUI_TABS, 1 do
                local u=Window.TabModule.Tabs [r]
                local w=WINDUI_TABS[r]
                local j=y.Tabs [w]or w
                if u and j then
                    u.Title =j
                    if u.UIElements and u.UIElements.Main then
                        for r,y in ipairs(u.UIElements.Main :GetDescendants())do
                            if y:IsA( "TextLabel" )then
                                y.AutoLocalize = false y.Text =j
                            end
                        end
                    end
                    if u.UIElements and u.UIElements.TabItem then
                        for r,y in ipairs(u.UIElements.TabItem :GetDescendants())do
                            if y:IsA( "TextLabel" )then
                                y.AutoLocalize = false y.Text =j
                            end
                        end
                    end
                end
            end
        end
    end
    )
end
local function updateLanguageTexts(e,...)
    local r=UI_TEXT[e]or UI_TEXT.EN setLanguage(e)updateControlText(uiRefs.secModes ,r.Farm.SecModes )updateControlText(uiRefs.togTween ,r.Farm.TweenTitle ,r.Farm.TweenDesc )updateControlText(uiRefs.togTeleport ,r.Farm.TeleportTitle ,r.Farm.TeleportDesc )updateControlText(uiRefs.secPlace ,r.Farm.SecPlace )updateControlText(uiRefs.btnPlaceEgg ,r.Farm.PlaceTitle ,r.Farm.PlaceDesc )updateControlText(uiRefs.togAutoPlaceEvery5 ,r.Farm.AutoPlaceTitle ,r.Farm.AutoPlaceDesc )updateControlText(uiRefs.togAutoHatch ,r.Farm.HatchTitle ,r.Farm.HatchDesc )updateControlText(uiRefs.togAutoReturn ,r.Farm.ReturnTitle ,r.Farm.ReturnDesc )updateControlText(uiRefs.togAutoTreadmill ,r.Farm.AutoTreadmillTitle ,r.Farm.AutoTreadmillDesc )updateControlText(uiRefs.togAutoUpgradeTreadmill ,r.Farm.UpgradeTreadmillTitle ,r.Farm.UpgradeTreadmillDesc )updateControlText(uiRefs.togAutoBuyTrails ,r.Farm.BuyTrailsTitle ,r.Farm.BuyTrailsDesc )
    if r.EggSelect then
        updateControlText(uiRefs.secEggZones ,r.EggSelect.SecZones ,r.EggSelect.SecZonesDesc )updateControlText(uiRefs.dropTargetZones ,r.EggSelect.DropZonesTitle ,r.EggSelect.DropZonesDesc )updateControlText(uiRefs.secEggRarity ,r.EggSelect.SecRarities ,r.EggSelect.SecRaritiesDesc )updateControlText(uiRefs.secEggRarities ,r.EggSelect.SecRarities ,r.EggSelect.SecRaritiesDesc )updateControlText(uiRefs.dropTargetRarities ,r.EggSelect.DropRaritiesTitle ,r.EggSelect.DropRaritiesDesc )updateControlText(uiRefs.togAlwaysSecret ,r.EggSelect.AlwaysSecretPlus ,r.EggSelect.AlwaysSecretPlusDesc )
    end
    updateControlText(uiRefs.secSafety ,r.Character.SecSafety )updateControlText(uiRefs.togGodmode ,r.Character.GodmodeTitle ,r.Character.GodmodeDesc )updateControlText(uiRefs.btnUnstick ,r.Character.UnstickTitle ,r.Character.UnstickDesc )updateControlText(uiRefs.secFlight ,r.Character.SecFlight )updateControlText(uiRefs.sliderSpeed ,r.Character.SpeedTitle ,r.Character.SpeedDesc )updateControlText(uiRefs.secDashboard ,r.Settings.SecDashboard )updateControlText(uiRefs.paraLiveDash ,r.Settings.DashTitle )updateControlText(uiRefs.secBlacklist ,r.Settings.SecBlacklist )updateControlText(uiRefs.secUI ,r.Settings.SecUI )updateControlText(uiRefs.dropLang ,r.Settings.LangTitle )updateControlText(uiRefs.sliderTransp ,r.Settings.TranspTitle ,r.Settings.TranspDesc )updateControlText(uiRefs.dropTheme ,r.Settings.ThemeTitle )updateControlText(uiRefs.secPerformance ,r.Settings.SecPerformance )updateControlText(uiRefs.togPerformance ,r.Settings.PerformanceTitle ,r.Settings.PerformanceDesc )updateControlText(uiRefs.togDisable3D ,r.Settings.Disable3DTitle ,r.Settings.Disable3DDesc )updateControlText(uiRefs.secSystem ,r.Settings.SecSystem )updateControlText(uiRefs.togAntiAFK ,r.Settings.AntiAFKTitle ,r.Settings.AntiAFKDesc )updateControlText(uiRefs.btnReset ,r.Settings.ResetTitle ,r.Settings.ResetDesc )updateControlText(uiRefs.btnRejoin ,r.Settings.RejoinTitle ,r.Settings.RejoinDesc )updateControlText(uiRefs.btnUnload ,r.Settings.UnloadTitle ,r.Settings.UnloadDesc )recolorWindUiControls()
end
local function showLoaderScreen(...)
    local e=Instance.new ( "ScreenGui" )e.Name = "Dice_LOADER_SCREEN" e.ResetOnSpawn = false e.DisplayOrder = 9999999 e.ZIndexBehavior =Enum.ZIndexBehavior.Sibling e.AutoLocalize = false pcall(function(...)
        if syn and syn.protect_gui then
            syn.protect_gui (e)e.Parent =game:GetService( "CoreGui" )
        else
            e.Parent =LocalPlayer:FindFirstChild( "PlayerGui" )or game:GetService( "CoreGui" )
        end
    end
    )
    if not e.Parent then
        e.Parent =game:GetService( "CoreGui" )
    end
    local r=Instance.new ( "Frame" )r.Name = "Card" r.Size =UDim2.fromOffset ( 336 , 140 )r.Position =UDim2.new ( 0.5 , -168 , 0.5 , -70 )r.BackgroundColor3 =Color3.fromRGB ( 16 , 16 , 22 )r.BorderSizePixel = 0 r.Parent =e;
    (Instance.new ( "UICorner" ,r)).CornerRadius =UDim.new ( 0 , 14 )
    local y=Instance.new ( "UIStroke" ,r)y.Color =Color3.fromRGB ( 0 , 185 , 255 )y.Thickness = 1.4 y.ApplyStrokeMode =Enum.ApplyStrokeMode.Border
    local w=Instance.new ( "TextLabel" )w.Size =UDim2.new ( 1 , -28 , 0 , 24 )w.Position =UDim2.new ( 0 , 14 , 0 , 14 )w.BackgroundTransparency = 1 w.Text = "Dice Hub" w.TextColor3 =Color3.fromRGB ( 245 , 248 , 255 )w.TextSize = 18 w.Font =Enum.Font.GothamBold w.TextXAlignment =Enum.TextXAlignment.Left w.AutoLocalize = false w.Parent =r
    local j=Instance.new ( "TextLabel" )j.Size =UDim2.new ( 1 , -28 , 0 , 16 )j.Position =UDim2.new ( 0 , 14 , 0 , 38 )j.BackgroundTransparency = 1 j.Text = "Steal an Egg Suite v42.64" j.TextColor3 =Color3.fromRGB ( 140 , 150 , 175 )j.TextSize = 12 j.Font =Enum.Font.Gotham j.TextXAlignment =Enum.TextXAlignment.Left j.AutoLocalize = false j.Parent =r
    local k=Instance.new ( "TextLabel" )k.Size =UDim2.new ( 0 , 50 , 0 , 24 )k.Position =UDim2.new ( 1 , -64 , 0 , 14 )k.BackgroundTransparency = 1 k.Text = "0%" k.TextColor3 =Color3.fromRGB ( 0 , 255 , 160 )k.TextSize = 14 k.Font =Enum.Font.GothamBold k.TextXAlignment =Enum.TextXAlignment.Right k.AutoLocalize = false k.Parent =r
    local a=Instance.new ( "Frame" )a.Size =UDim2.new ( 1 , -28 , 0 , 10 )a.Position =UDim2.new ( 0 , 14 , 0 , 74 )a.BackgroundColor3 =Color3.fromRGB ( 25 , 27 , 38 )a.BorderSizePixel = 0 a.Parent =r;
    (Instance.new ( "UICorner" ,a)).CornerRadius =UDim.new ( 0 , 5 )
    local V=Instance.new ( "Frame" )V.Size =UDim2.new ( 0 , 0 , 1 , 0 )V.BackgroundColor3 =Color3.fromRGB ( 0 , 185 , 255 )V.BorderSizePixel = 0 V.Parent =a;
    (Instance.new ( "UICorner" ,V)).CornerRadius =UDim.new ( 0 , 5 )
    local H=Instance.new ( "UIGradient" ,V)H.Color =ColorSequence.new ({ColorSequenceKeypoint.new ( 0 ,Color3.fromRGB ( 0 , 185 , 255 )),ColorSequenceKeypoint.new ( 1 ,Color3.fromRGB ( 0 , 255 , 160 ))})
    local t=Instance.new ( "TextLabel" )t.Size =UDim2.new ( 1 , -28 , 0 , 16 )t.Position =UDim2.new ( 0 , 14 , 0 , 94 )t.BackgroundTransparency = 1 t.Text = "Initializing Dice Hub..." t.TextColor3 =Color3.fromRGB ( 130 , 140 , 165 )t.TextSize = 11 t.Font =Enum.Font.Gotham t.TextXAlignment =Enum.TextXAlignment.Left t.AutoLocalize = false t.Parent =r task.spawn (function(...)
        for y= 1 , 100 , 1 do
            if not e.Parent then
                break
            end
            k.Text =tostring(y).. "%" V.Size =UDim2.new (y/ 100 , 0 , 1 , 0 )
            if y== 25 then
                t.Text = "Loading interface modules..."
            elseif y== 60 then
                t.Text = "Setting up auto-steal controllers..."
            elseif y== 85 then
                t.Text = "Syncing server telemetry..."
            elseif y== 100 then
                t.Text = "Ready!"
            end
            task.wait ( 0.008 )
        end
    end
    )
    local function s(o,...) task.spawn (function(...) task.wait ( 0.9 )
            local H=TweenInfo.new ( 0.35 ,Enum.EasingStyle.Quart ,Enum.EasingDirection.Out );
            (TweenService:Create(r,H,{[ "BackgroundTransparency" ]= 1 })):Play();
            (TweenService:Create(y,H,{[ "Transparency" ]= 1 })):Play();
            (TweenService:Create(w,H,{[ "TextTransparency" ]= 1 })):Play();
            (TweenService:Create(j,H,{[ "TextTransparency" ]= 1 })):Play();
            (TweenService:Create(k,H,{[ "TextTransparency" ]= 1 })):Play();
            (TweenService:Create(a,H,{[ "BackgroundTransparency" ]= 1 })):Play();
            (TweenService:Create(V,H,{[ "BackgroundTransparency" ]= 1 })):Play();
            (TweenService:Create(t,H,{[ "TextTransparency" ]= 1 })):Play()task.wait ( 0.4 )pcall(function(...) e:Destroy()
            end
            )
            if o then
                o()
            end
        end
        )
    end
    return s
end
local restoreBar={}restoreBar.Gui =Instance.new ( "ScreenGui" )restoreBar.Gui.Name = "Dice_RESTORE_BAR" restoreBar.Gui.ResetOnSpawn = false restoreBar.Gui.DisplayOrder = 999999 restoreBar.Gui.ZIndexBehavior =Enum.ZIndexBehavior.Sibling restoreBar.Gui.AutoLocalize = false pcall(function(...)
    if syn and syn.protect_gui then
        syn.protect_gui (restoreBar.Gui )restoreBar.Gui.Parent =game:GetService( "CoreGui" )
    else
        restoreBar.Gui.Parent =LocalPlayer:FindFirstChild( "PlayerGui" )or game:GetService( "CoreGui" )
    end
end
)
if not restoreBar.Gui.Parent then
    restoreBar.Gui.Parent =game:GetService( "CoreGui" )
end
restoreBar.Btn =Instance.new ( "ImageButton" )restoreBar.Btn.Name = "Dice_SquareLogoButton" restoreBar.Btn.Size =UDim2.fromOffset ( 46 , 46 )restoreBar.Btn.Position =UDim2.new ( 0 , 20 , 0 , 20 )restoreBar.Btn.BackgroundColor3 =Color3.fromRGB ( 18 , 18 , 24 )restoreBar.Btn.Active = true restoreBar.Btn.Selectable = true restoreBar.Btn.Visible = false restoreBar.Btn.ZIndex = 999999 restoreBar.Btn.AutoLocalize = false restoreBar.Btn.Parent =restoreBar.Gui ;
(Instance.new ( "UICorner" ,restoreBar.Btn )).CornerRadius =UDim.new ( 0 , 10 )restoreBar.Stroke =Instance.new ( "UIStroke" ,restoreBar.Btn )restoreBar.Stroke.Color =Color3.fromRGB ( 0 , 185 , 255 )restoreBar.Stroke.Thickness = 1.6 restoreBar.Stroke.ApplyStrokeMode =Enum.ApplyStrokeMode.Border restoreBar.Logo =Instance.new ( "ImageLabel" ,restoreBar.Btn )restoreBar.Logo.Name = "LogoIcon" restoreBar.Logo.Size =UDim2.fromOffset ( 36 , 36 )restoreBar.Logo.Position =UDim2.new ( 0.5 , 0 , 0.5 , 0 )restoreBar.Logo.AnchorPoint =Vector2.new ( 0.5 , 0.5 )restoreBar.Logo.BackgroundTransparency = 1 restoreBar.Logo.Image =iconAsset restoreBar.Logo.ImageColor3 =Color3.fromRGB ( 255 , 255 , 255 )restoreBar.Logo.ZIndex = 1000000 ;
(Instance.new ( "UICorner" ,restoreBar.Logo )).CornerRadius =UDim.new ( 0 , 8 )restoreBar.isDragging = false restoreBar.dragStart =nil restoreBar.startPos =nil restoreBar.Btn.InputBegan :Connect(function(e,...)
    if e.UserInputType ==Enum.UserInputType.MouseButton1 or e.UserInputType ==Enum.UserInputType.Touch then
        restoreBar.isDragging = true restoreBar.dragStart =e.Position restoreBar.startPos =restoreBar.Btn.Position
    end
end
)UserInputService.InputEnded :Connect(function(e,...)
    if e.UserInputType ==Enum.UserInputType.MouseButton1 or e.UserInputType ==Enum.UserInputType.Touch then
        restoreBar.isDragging = false
    end
end
)UserInputService.InputChanged :Connect(function(e,...)
    if restoreBar.isDragging and((e.UserInputType ==Enum.UserInputType.MouseMovement or e.UserInputType ==Enum.UserInputType.Touch ))then
        local y=e.Position -restoreBar.dragStart restoreBar.Btn.Position =UDim2.new (restoreBar.startPos.X .Scale ,restoreBar.startPos.X .Offset +y.X ,restoreBar.startPos.Y .Scale ,restoreBar.startPos.Y .Offset +y.Y )
    end
end
)
local function unloadScript(...) state.alive = false pcall(disablePerformanceMode)pcall(disableAntiAfk)pcall(function(...) RunService:Set3dRenderingEnabled( true )
    end
    )pcall(function(...)
        local y=Workspace:FindFirstChild( "DiceHub_EggESP" )
        if y then
            y:Destroy()
        end
    end
    )pcall(resetMovementState)pcall(stashEquippedTools)
    if restoreBar and restoreBar.Gui then
        pcall(function(...) restoreBar.Gui :Destroy()
        end
        )
    end
    if state.gui then
        pcall(function(...) state.gui :Destroy()
        end
        )
    end
    pcall(function(...)
        for r,y in ipairs(game.CoreGui :GetChildren())do
            if y.Name :find( "Dice_" )or y.Name :find( "DesyncSniperUI" )or y.Name :find( "WindUI" )then
                y:Destroy()
            end
        end
    end
    )
end
local function buildUi()
--[[
    PHUCMAX • LIQUID GLASS UI v5
    ----------------------------------------------------------
    CHANGES FROM v4:
    ✓ Fixed drag snapping to left origin (using absolute positions)
    ✓ Fixed resize snapping (proper absolute clamping)
    ✓ Fixed toggle button shifting on second toggle
    ✓ Added animated rainbow border that rotates/chases around the UI
    ✓ Kept all previous features
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Player = LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

------------------------------------------------------------
-- CONFIG
------------------------------------------------------------

local CONFIG = {
    MAIN_WIDTH = 318,
    MAIN_HEIGHT = 490,

    MIN_WIDTH = 270,
    MIN_HEIGHT = 360,

    MAX_WIDTH = 430,
    MAX_HEIGHT = 680,

    TOGGLE_SIZE = 54,

    MAIN_BACKGROUND = "rbxassetid://114446605486001",
    TOGGLE_BACKGROUND = "rbxassetid://120164064781939",

    ANIMATION = 0.32,

    COLORS = {
        Silver = Color3.fromRGB(225, 230, 238),
        SilverBright = Color3.fromRGB(255, 255, 255),

        Navy = Color3.fromRGB(8, 18, 42),
        NavyDark = Color3.fromRGB(3, 8, 22),

        Violet = Color3.fromRGB(68, 52, 125),
        IcePurple = Color3.fromRGB(153, 143, 255),

        Text = Color3.fromRGB(248, 249, 255),
        SubText = Color3.fromRGB(181, 188, 210),
    }
}

------------------------------------------------------------
-- CLEANUP
------------------------------------------------------------

local Old = PlayerGui:FindFirstChild("PHUCMAX_LiquidGlass")
if Old then
    Old:Destroy()
end

------------------------------------------------------------
-- HELPERS
------------------------------------------------------------

local function Tween(obj, properties, duration, style, direction)
    local info = TweenInfo.new(
        duration or CONFIG.ANIMATION,
        style or Enum.EasingStyle.Quint,
        direction or Enum.EasingDirection.Out
    )

    local tween = TweenService:Create(obj, info, properties)
    tween:Play()

    return tween
end

local function Corner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, radius)
    c.Parent = parent
    return c
end

local function Stroke(parent, color, transparency, thickness)
    local s = Instance.new("UIStroke")
    s.Color = color
    s.Transparency = transparency
    s.Thickness = thickness or 1
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    s.Parent = parent
    return s
end

local function Gradient(parent, colorSequence, rotation)
    local g = Instance.new("UIGradient")
    g.Color = colorSequence
    g.Rotation = rotation or 0
    g.Parent = parent
    return g
end

------------------------------------------------------------
-- SCREEN GUI
------------------------------------------------------------

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PHUCMAX_LiquidGlass"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999
ScreenGui.Parent = PlayerGui

------------------------------------------------------------
-- MAIN HOLDER
------------------------------------------------------------

local MainHolder = Instance.new("Frame")
MainHolder.Name = "MainHolder"

MainHolder.Size = UDim2.fromOffset(
    CONFIG.MAIN_WIDTH,
    CONFIG.MAIN_HEIGHT
)

MainHolder.Position = UDim2.new(
    0.5,
    -CONFIG.MAIN_WIDTH / 2,
    0.5,
    -CONFIG.MAIN_HEIGHT / 2
)

MainHolder.BackgroundTransparency = 1
MainHolder.ZIndex = 5
MainHolder.Parent = ScreenGui

------------------------------------------------------------
-- RAINBOW BORDER (animated, chases around UI)
------------------------------------------------------------

local RainbowGlow = Instance.new("Frame")
RainbowGlow.Name = "RainbowGlow"
RainbowGlow.Size = UDim2.new(1, 14, 1, 14)
RainbowGlow.Position = UDim2.fromOffset(-7, -7)
RainbowGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RainbowGlow.BackgroundTransparency = 0.55
RainbowGlow.BorderSizePixel = 0
RainbowGlow.Active = false
RainbowGlow.ZIndex = 3
RainbowGlow.Parent = MainHolder
Corner(RainbowGlow, 30)

local RainbowGlowGradient = Instance.new("UIGradient")
RainbowGlowGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0.00, CONFIG.COLORS.SilverBright),
    ColorSequenceKeypoint.new(0.22, CONFIG.COLORS.Silver),
    ColorSequenceKeypoint.new(0.50, CONFIG.COLORS.IcePurple),
    ColorSequenceKeypoint.new(0.72, CONFIG.COLORS.Violet),
    ColorSequenceKeypoint.new(1.00, CONFIG.COLORS.SilverBright)
})
RainbowGlowGradient.Rotation = 0
RainbowGlowGradient.Parent = RainbowGlow

local RainbowBorder = Instance.new("Frame")
RainbowBorder.Name = "RainbowBorder"
RainbowBorder.Size = UDim2.new(1, 6, 1, 6)
RainbowBorder.Position = UDim2.fromOffset(-3, -3)
RainbowBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RainbowBorder.BackgroundTransparency = 0
RainbowBorder.BorderSizePixel = 0
RainbowBorder.Active = false
RainbowBorder.ZIndex = 4
RainbowBorder.Parent = MainHolder
Corner(RainbowBorder, 25)

local RainbowBorderGradient = Instance.new("UIGradient")
RainbowBorderGradient.Color = RainbowGlowGradient.Color
RainbowBorderGradient.Rotation = 0
RainbowBorderGradient.Parent = RainbowBorder

------------------------------------------------------------
-- MAIN BACKGROUND
------------------------------------------------------------

local Background = Instance.new("ImageLabel")
Background.Name = "Background"

Background.Size = UDim2.fromScale(1, 1)
Background.Position = UDim2.fromScale(0, 0)

Background.Image = CONFIG.MAIN_BACKGROUND
Background.ScaleType = Enum.ScaleType.Crop

Background.BackgroundColor3 = CONFIG.COLORS.Navy
Background.BackgroundTransparency = 0.05

Background.BorderSizePixel = 0
Background.Active = false
Background.ZIndex = 5
Background.Parent = MainHolder

Corner(Background, 22)

------------------------------------------------------------
-- GLASS OVERLAY
------------------------------------------------------------

local GlassOverlay = Instance.new("Frame")
GlassOverlay.Name = "GlassOverlay"

GlassOverlay.Size = UDim2.fromScale(1, 1)

GlassOverlay.BackgroundColor3 = CONFIG.COLORS.Navy
GlassOverlay.BackgroundTransparency = 0.48

GlassOverlay.BorderSizePixel = 0
GlassOverlay.ClipsDescendants = true

GlassOverlay.Active = false
GlassOverlay.ZIndex = 6
GlassOverlay.Parent = MainHolder

Corner(GlassOverlay, 22)

Gradient(
    GlassOverlay,
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 12, 30)),
        ColorSequenceKeypoint.new(0.45, Color3.fromRGB(12, 24, 55)),
        ColorSequenceKeypoint.new(0.72, Color3.fromRGB(56, 43, 102)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(4, 9, 25))
    }),
    135
)

------------------------------------------------------------
-- BORDER
------------------------------------------------------------

local MainStroke = Stroke(
    MainHolder,
    CONFIG.COLORS.Silver,
    0.18,
    1.4
)

------------------------------------------------------------
-- MOVING GLASS REFLECTION
------------------------------------------------------------

local Reflection = Instance.new("Frame")
Reflection.Name = "Reflection"

Reflection.Size = UDim2.new(1.35, 0, 0.36, 0)
Reflection.Position = UDim2.new(-0.18, 0, -0.14, 0)
Reflection.Rotation = -13

Reflection.BackgroundColor3 = CONFIG.COLORS.SilverBright
Reflection.BackgroundTransparency = 0.91

Reflection.BorderSizePixel = 0
Reflection.Active = false

Reflection.ZIndex = 7
Reflection.Parent = MainHolder

Corner(Reflection, 100)

Gradient(
    Reflection,
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, CONFIG.COLORS.SilverBright),
        ColorSequenceKeypoint.new(0.42, CONFIG.COLORS.IcePurple),
        ColorSequenceKeypoint.new(0.75, CONFIG.COLORS.Silver),
        ColorSequenceKeypoint.new(1, CONFIG.COLORS.SilverBright)
    }),
    0
)

------------------------------------------------------------
-- CONTENT ROOT
------------------------------------------------------------

local Root = Instance.new("Frame")
Root.Name = "Root"

Root.Size = UDim2.fromScale(1, 1)
Root.BackgroundTransparency = 1

Root.ZIndex = 10
Root.Parent = MainHolder

------------------------------------------------------------
-- HEADER
------------------------------------------------------------

local Header = Instance.new("Frame")

Header.Size = UDim2.new(1, -28, 0, 58)
Header.Position = UDim2.fromOffset(14, 8)

Header.BackgroundTransparency = 1
Header.ZIndex = 20
Header.Parent = Root

------------------------------------------------------------
-- TITLE
------------------------------------------------------------

local Logo = Instance.new("TextLabel")

Logo.Size = UDim2.new(1, 0, 0, 35)
Logo.Position = UDim2.fromOffset(0, 0)

Logo.BackgroundTransparency = 1
Logo.Text = "PHUCMAX"

Logo.TextColor3 = CONFIG.COLORS.SilverBright
Logo.TextSize = 25
Logo.Font = Enum.Font.GothamBlack

Logo.TextXAlignment = Enum.TextXAlignment.Center

Logo.ZIndex = 21
Logo.Parent = Header

Gradient(
    Logo,
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, CONFIG.COLORS.SilverBright),
        ColorSequenceKeypoint.new(0.42, CONFIG.COLORS.Silver),
        ColorSequenceKeypoint.new(0.66, CONFIG.COLORS.IcePurple),
        ColorSequenceKeypoint.new(1, CONFIG.COLORS.SilverBright)
    }),
    0
)

------------------------------------------------------------
-- SUBTITLE
------------------------------------------------------------

local LogoSub = Instance.new("TextLabel")

LogoSub.Size = UDim2.new(1, 0, 0, 16)
LogoSub.Position = UDim2.fromOffset(0, 37)

LogoSub.BackgroundTransparency = 1
LogoSub.Text = "LIQUID GLASS  •  MOBILE"

LogoSub.TextColor3 = CONFIG.COLORS.SubText
LogoSub.TextSize = 8
LogoSub.Font = Enum.Font.GothamMedium

LogoSub.TextXAlignment = Enum.TextXAlignment.Center

LogoSub.ZIndex = 21
LogoSub.Parent = Header

------------------------------------------------------------
-- TAB BAR
------------------------------------------------------------

local TabContainer = Instance.new("Frame")

TabContainer.Name = "TabContainer"

TabContainer.Size = UDim2.new(1, -28, 0, 46)
TabContainer.Position = UDim2.fromOffset(14, 72)

TabContainer.BackgroundColor3 = CONFIG.COLORS.NavyDark
TabContainer.BackgroundTransparency = 0.45

TabContainer.BorderSizePixel = 0
TabContainer.ClipsDescendants = true

TabContainer.Active = false
TabContainer.ZIndex = 20
TabContainer.Parent = Root

Corner(TabContainer, 15)
Stroke(TabContainer, CONFIG.COLORS.Silver, 0.73, 1)

------------------------------------------------------------
-- SCROLLABLE TABS
------------------------------------------------------------

local Tabs = Instance.new("ScrollingFrame")

Tabs.Name = "Tabs"

Tabs.Size = UDim2.fromScale(1, 1)
Tabs.Position = UDim2.fromScale(0, 0)

Tabs.BackgroundTransparency = 1
Tabs.BorderSizePixel = 0

Tabs.ScrollBarThickness = 0
Tabs.ScrollingDirection = Enum.ScrollingDirection.X

Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
Tabs.AutomaticCanvasSize = Enum.AutomaticSize.X

Tabs.ScrollingEnabled = true
Tabs.ElasticBehavior = Enum.ElasticBehavior.Always

Tabs.Active = true
Tabs.ZIndex = 21
Tabs.Parent = TabContainer

local TabPadding = Instance.new("UIPadding")
TabPadding.PaddingLeft = UDim.new(0, 6)
TabPadding.PaddingRight = UDim.new(0, 6)
TabPadding.PaddingTop = UDim.new(0, 5)
TabPadding.PaddingBottom = UDim.new(0, 5)
TabPadding.Parent = Tabs

local TabLayout = Instance.new("UIListLayout")
TabLayout.FillDirection = Enum.FillDirection.Horizontal
TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
TabLayout.VerticalAlignment = Enum.VerticalAlignment.Center
TabLayout.Padding = UDim.new(0, 5)
TabLayout.Parent = Tabs

------------------------------------------------------------
-- CONTENT
------------------------------------------------------------

local Content = Instance.new("ScrollingFrame")

Content.Name = "Content"

Content.Size = UDim2.new(1, -28, 1, -132)
Content.Position = UDim2.fromOffset(14, 126)

Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0

Content.ScrollBarThickness = 2
Content.ScrollBarImageColor3 = CONFIG.COLORS.IcePurple

Content.ScrollingDirection = Enum.ScrollingDirection.Y
Content.AutomaticCanvasSize = Enum.AutomaticSize.Y
Content.CanvasSize = UDim2.new(0, 0, 0, 0)

Content.Active = true
Content.ZIndex = 20
Content.Parent = Root

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 8)
ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ContentLayout.Parent = Content

local ContentPadding = Instance.new("UIPadding")
ContentPadding.PaddingBottom = UDim.new(0, 28)
ContentPadding.Parent = Content

------------------------------------------------------------
-- TAB LOGIC
------------------------------------------------------------

local TabObjects = {}
local CurrentTab = nil
local ControlsByTab = {}

local function RegisterControl(tab, control)
    if not ControlsByTab[tab] then
        ControlsByTab[tab] = {}
    end
    table.insert(ControlsByTab[tab], control)
end

local function SetTabVisibility(tab)
    for tabName, controls in pairs(ControlsByTab) do
        local visible = (tabName == tab)
        for _, control in ipairs(controls) do
            control.Visible = visible
        end
    end
end

local OpenPopupInfo = nil

local function ClosePopup()
    if not OpenPopupInfo then return end

    local popup = OpenPopupInfo.popup
    local arrow = OpenPopupInfo.arrow
    local Opened = OpenPopupInfo.opened

    if not Opened then return end

    OpenPopupInfo.opened = false

    Tween(
        popup,
        {Size = UDim2.new(0, 122, 0, 0)},
        0.2
    )

    task.delay(0.2, function()
        if not OpenPopupInfo or not OpenPopupInfo.opened then
            popup.Visible = false
        end
    end)

    Tween(
        arrow,
        {Rotation = 0},
        0.2
    )
end

local function SelectTab(tab)
    if CurrentTab == tab then
        return
    end

    if CurrentTab and TabObjects[CurrentTab] then
        local old = TabObjects[CurrentTab]

        Tween(old.Background, {BackgroundTransparency = 0.78}, 0.22)
        Tween(old.Line, {Size = UDim2.new(0.15, 0, 0, 2), BackgroundTransparency = 0.8}, 0.25)
        Tween(old.Text, {TextColor3 = CONFIG.COLORS.SubText}, 0.2)
    end

    CurrentTab = tab

    local data = TabObjects[tab]

    Tween(data.Background, {BackgroundTransparency = 0.47}, 0.28, Enum.EasingStyle.Quint)
    Tween(data.Line, {Size = UDim2.new(0.72, 0, 0, 2), BackgroundTransparency = 0}, 0.38, Enum.EasingStyle.Quint)
    Tween(data.Text, {TextColor3 = CONFIG.COLORS.SilverBright}, 0.25)

    data.Button.Size = UDim2.fromOffset(88, 34)
    Tween(data.Button, {Size = UDim2.fromOffset(94, 36)}, 0.28, Enum.EasingStyle.Back)

    if OpenPopupInfo and OpenPopupInfo.popup then
        ClosePopup()
    end

    SetTabVisibility(tab)
end

local function CreateTab(name)
    local Button = Instance.new("TextButton")

    Button.Name = name
    Button.Size = UDim2.fromOffset(88, 34)

    Button.BackgroundTransparency = 1
    Button.BorderSizePixel = 0

    Button.Text = ""
    Button.AutoButtonColor = false

    Button.Active = true
    Button.ZIndex = 22
    Button.Parent = Tabs

    Corner(Button, 11)

    local TabBackground = Instance.new("Frame")
    TabBackground.Size = UDim2.fromScale(1, 1)
    TabBackground.BackgroundColor3 = CONFIG.COLORS.Violet
    TabBackground.BackgroundTransparency = 0.78
    TabBackground.BorderSizePixel = 0
    TabBackground.Active = false
    TabBackground.ZIndex = 22
    TabBackground.Parent = Button
    Corner(TabBackground, 11)

    local TabText = Instance.new("TextLabel")
    TabText.Size = UDim2.fromScale(1, 1)
    TabText.BackgroundTransparency = 1
    TabText.Text = name
    TabText.TextColor3 = CONFIG.COLORS.SubText
    TabText.TextSize = 11
    TabText.Font = Enum.Font.GothamBold
    TabText.Active = false
    TabText.ZIndex = 24
    TabText.Parent = Button

    local Line = Instance.new("Frame")
    Line.AnchorPoint = Vector2.new(0.5, 1)
    Line.Position = UDim2.new(0.5, 0, 1, -2)
    Line.Size = UDim2.new(0.15, 0, 0, 2)
    Line.BackgroundColor3 = CONFIG.COLORS.SilverBright
    Line.BackgroundTransparency = 0.8
    Line.BorderSizePixel = 0
    Line.Active = false
    Line.ZIndex = 25
    Line.Parent = Button
    Corner(Line, 5)

    TabObjects[name] = {
        Button = Button,
        Background = TabBackground,
        Text = TabText,
        Line = Line
    }

    Button.MouseButton1Click:Connect(function()
        SelectTab(name)
    end)
end

for _, name in ipairs({
    "MAIN",
    "PLAYER",
    "SERVER"
}) do
    CreateTab(name)
end

------------------------------------------------------------
-- CONTROL BASE
------------------------------------------------------------

local function CreateControl(title, subtitle, height, tab)
    local Holder = Instance.new("Frame")

    Holder.Size = UDim2.new(1, 0, 0, height or 59)
    Holder.BackgroundColor3 = CONFIG.COLORS.Navy
    Holder.BackgroundTransparency = 0.56
    Holder.BorderSizePixel = 0
    Holder.Active = false
    Holder.ZIndex = 21
    Holder.Parent = Content

    Corner(Holder, 15)
    Stroke(Holder, CONFIG.COLORS.Silver, 0.75, 1)

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -105, 0, 23)
    Title.Position = UDim2.fromOffset(15, 7)
    Title.BackgroundTransparency = 1
    Title.Text = title
    Title.TextColor3 = CONFIG.COLORS.Text
    Title.TextSize = 13
    Title.Font = Enum.Font.GothamSemibold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Active = false
    Title.ZIndex = 24
    Title.Parent = Holder

    local Sub = Instance.new("TextLabel")
    Sub.Size = UDim2.new(1, -105, 0, 17)
    Sub.Position = UDim2.fromOffset(15, 31)
    Sub.BackgroundTransparency = 1
    Sub.Text = subtitle or title
    Sub.TextColor3 = CONFIG.COLORS.SubText
    Sub.TextSize = 9
    Sub.Font = Enum.Font.GothamMedium
    Sub.TextXAlignment = Enum.TextXAlignment.Left
    Sub.Active = false
    Sub.ZIndex = 24
    Sub.Parent = Holder

    RegisterControl(tab or "ALL", Holder)

    return Holder
end

------------------------------------------------------------
-- ACTION BUTTON
------------------------------------------------------------

local function CreateActionButton(title, subtitle, callback, tab)
    local Holder = CreateControl(title, subtitle, nil, tab)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.fromOffset(82, 35)
    Button.Position = UDim2.new(1, -96, 0.5, -17)
    Button.BackgroundColor3 = CONFIG.COLORS.Violet
    Button.BackgroundTransparency = 0.45
    Button.BorderSizePixel = 0
    Button.Text = "CHẠY"
    Button.TextColor3 = CONFIG.COLORS.SilverBright
    Button.TextSize = 10
    Button.Font = Enum.Font.GothamBold
    Button.AutoButtonColor = false
    Button.Active = true
    Button.ZIndex = 26
    Button.Parent = Holder

    Corner(Button, 11)
    Stroke(Button, CONFIG.COLORS.Silver, 0.62, 1)

    Button.MouseButton1Click:Connect(function()
        Tween(Button, {Size = UDim2.fromOffset(75, 31)}, 0.08, Enum.EasingStyle.Quad)

        task.delay(0.08, function()
            Tween(Button, {Size = UDim2.fromOffset(82, 35)}, 0.18, Enum.EasingStyle.Back)
        end)

        if callback then
            callback()
        end
    end)

    return Holder
end

------------------------------------------------------------
-- MENU / LIST SELECTOR
------------------------------------------------------------

local function CreateList(title, subtitle, options, defaultIndex, callback, tab)
    local Holder = CreateControl(title, subtitle, 64, tab)

    local Selector = Instance.new("TextButton")
    Selector.Size = UDim2.fromOffset(122, 34)
    Selector.Position = UDim2.new(1, -136, 0.5, -17)
    Selector.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Selector.BackgroundTransparency = 0.24
    Selector.BorderSizePixel = 0
    Selector.Text = ""
    Selector.AutoButtonColor = false
    Selector.Active = true
    Selector.ZIndex = 26
    Selector.Parent = Holder

    Corner(Selector, 11)
    Stroke(Selector, CONFIG.COLORS.Silver, 0.64, 1)

    local CurrentIndex = math.clamp(
        tonumber(defaultIndex) or 1,
        1,
        #options
    )

    local Value = Instance.new("TextLabel")
    Value.Size = UDim2.new(1, -32, 1, 0)
    Value.Position = UDim2.fromOffset(10, 0)
    Value.BackgroundTransparency = 1
    Value.Text = tostring(options[CurrentIndex])
    Value.TextColor3 = CONFIG.COLORS.SilverBright
    Value.TextSize = 10
    Value.Font = Enum.Font.GothamBold
    Value.TextXAlignment = Enum.TextXAlignment.Left
    Value.Active = false
    Value.ZIndex = 27
    Value.Parent = Selector

    local Arrow = Instance.new("TextLabel")
    Arrow.Size = UDim2.fromOffset(20, 20)
    Arrow.Position = UDim2.new(1, -25, 0.5, -10)
    Arrow.BackgroundTransparency = 1
    Arrow.Text = "⌄"
    Arrow.TextColor3 = CONFIG.COLORS.IcePurple
    Arrow.TextSize = 16
    Arrow.Font = Enum.Font.GothamBold
    Arrow.Active = false
    Arrow.ZIndex = 27
    Arrow.Parent = Selector

    local Popup = Instance.new("Frame")
    Popup.Name = "Popup"
    Popup.Size = UDim2.new(0, 122, 0, 0)
    Popup.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Popup.BackgroundTransparency = 0.08
    Popup.BorderSizePixel = 0
    Popup.ClipsDescendants = true
    Popup.Visible = false
    Popup.ZIndex = 999
    Popup.Parent = MainHolder

    Corner(Popup, 12)
    Stroke(Popup, CONFIG.COLORS.Silver, 0.55, 1)

    local PopupLayout = Instance.new("UIListLayout")
    PopupLayout.Padding = UDim.new(0, 3)
    PopupLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    PopupLayout.Parent = Popup

    local PopupPadding = Instance.new("UIPadding")
    PopupPadding.PaddingTop = UDim.new(0, 5)
    PopupPadding.PaddingBottom = UDim.new(0, 5)
    PopupPadding.PaddingLeft = UDim.new(0, 5)
    PopupPadding.PaddingRight = UDim.new(0, 5)
    PopupPadding.Parent = Popup

    local Opened = false

    local function UpdatePopupPosition()
        if not OpenPopupInfo then return end
        local selector = OpenPopupInfo.selector
        local popup = OpenPopupInfo.popup

        if not selector or not popup or not popup.Visible then return end

        local mainAbs = MainHolder.AbsolutePosition
        local selAbs = selector.AbsolutePosition
        local selSize = selector.AbsoluteSize

        local x = selAbs.X - mainAbs.X + selSize.X - 122
        local y = selAbs.Y - mainAbs.Y + selSize.Y + 5

        local viewport = workspace.CurrentCamera.ViewportSize
        local mainSize = MainHolder.AbsoluteSize
        local popupSize = Popup.AbsoluteSize

        x = math.clamp(x, 0, math.max(0, mainSize.X - popupSize.X))
        y = math.clamp(y, 0, math.max(0, mainSize.Y - popupSize.Y))

        Popup.Position = UDim2.new(0, x, 0, y)
    end

    _G.__PHUCMAX_UpdatePopupPosition = UpdatePopupPosition

    local function ClosePopupLocal()
        if not Opened then return end

        Opened = false
        OpenPopupInfo.opened = false

        Tween(Popup, {Size = UDim2.new(0, 122, 0, 0)}, 0.2)

        task.delay(0.2, function()
            if not Opened then
                Popup.Visible = false
            end
        end)

        Tween(Arrow, {Rotation = 0}, 0.2)
    end

    local function OpenPopupLocal()
        if Opened then
            ClosePopupLocal()
            return
        end

        Opened = true
        Popup.Visible = true

        OpenPopupInfo = {
            popup = Popup,
            selector = Selector,
            arrow = Arrow,
            opened = true
        }

        local popupHeight = math.clamp(#options * 31 + 10, 41, 160)
        Popup.Size = UDim2.new(0, 122, 0, 0)
        UpdatePopupPosition()

        Tween(Popup, {Size = UDim2.new(0, 122, 0, popupHeight)}, 0.25, Enum.EasingStyle.Back)
        Tween(Arrow, {Rotation = 180}, 0.2)
    end

    if not OpenPopupInfo then
        OpenPopupInfo = {}
    end

    for index, option in ipairs(options) do
        local OptionButton = Instance.new("TextButton")
        OptionButton.Size = UDim2.new(1, 0, 0, 27)
        OptionButton.BackgroundColor3 = CONFIG.COLORS.Violet
        OptionButton.BackgroundTransparency = 0.78
        OptionButton.BorderSizePixel = 0
        OptionButton.Text = tostring(option)
        OptionButton.TextColor3 = CONFIG.COLORS.SubText
        OptionButton.TextSize = 9
        OptionButton.Font = Enum.Font.GothamSemibold
        OptionButton.AutoButtonColor = false
        OptionButton.Active = true
        OptionButton.ZIndex = 82
        OptionButton.Parent = Popup

        Corner(OptionButton, 8)

        OptionButton.MouseButton1Click:Connect(function()
            CurrentIndex = index
            Value.Text = tostring(option)

            Tween(OptionButton, {BackgroundTransparency = 0.35, TextColor3 = CONFIG.COLORS.SilverBright}, 0.12)

            task.delay(0.12, function()
                Tween(OptionButton, {BackgroundTransparency = 0.78, TextColor3 = CONFIG.COLORS.SubText}, 0.16)
            end)

            ClosePopupLocal()

            if callback then
                callback(option, index)
            end
        end)
    end

    Selector.MouseButton1Click:Connect(OpenPopupLocal)

    return Holder
end

------------------------------------------------------------
-- SLIDER
------------------------------------------------------------

local function CreateSlider(title, subtitle, min, max, default, callback, tab)
    local Holder = CreateControl(title, subtitle, 72, tab)

    local ValueText = Instance.new("TextLabel")
    ValueText.Size = UDim2.fromOffset(48, 25)
    ValueText.Position = UDim2.new(1, -60, 0, 8)
    ValueText.BackgroundTransparency = 1
    ValueText.TextColor3 = CONFIG.COLORS.SilverBright
    ValueText.TextSize = 12
    ValueText.Font = Enum.Font.GothamBold
    ValueText.TextXAlignment = Enum.TextXAlignment.Right
    ValueText.ZIndex = 24
    ValueText.Parent = Holder

    local Track = Instance.new("Frame")
    Track.Size = UDim2.new(1, -28, 0, 18)
    Track.Position = UDim2.new(0, 14, 1, -24)
    Track.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Track.BackgroundTransparency = 0.28
    Track.BorderSizePixel = 0
    Track.Active = true
    Track.ZIndex = 23
    Track.Parent = Holder

    Corner(Track, 20)

    local Value = default
    local percent = math.clamp((default - min) / (max - min), 0, 1)

    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new(percent, 0, 1, 0)
    Fill.BackgroundColor3 = CONFIG.COLORS.IcePurple
    Fill.BackgroundTransparency = 0.12
    Fill.BorderSizePixel = 0
    Fill.Active = false
    Fill.ZIndex = 24
    Fill.Parent = Track

    Corner(Fill, 20)

    Gradient(
        Fill,
        ColorSequence.new({
            ColorSequenceKeypoint.new(0, CONFIG.COLORS.Silver),
            ColorSequenceKeypoint.new(0.55, CONFIG.COLORS.IcePurple),
            ColorSequenceKeypoint.new(1, CONFIG.COLORS.Violet)
        }),
        0
    )

    local Knob = Instance.new("Frame")
    Knob.Size = UDim2.fromOffset(26, 26)
    Knob.AnchorPoint = Vector2.new(0.5, 0.5)
    Knob.Position = UDim2.new(percent, 0, 0.5, 0)
    Knob.BackgroundColor3 = CONFIG.COLORS.SilverBright
    Knob.BackgroundTransparency = 0.04
    Knob.BorderSizePixel = 0
    Knob.Active = false
    Knob.ZIndex = 28
    Knob.Parent = Track

    Corner(Knob, 20)
    Stroke(Knob, CONFIG.COLORS.IcePurple, 0.1, 1)

    local Dragging = false

    local function SetValueFromX(x)
        local width = Track.AbsoluteSize.X
        if width <= 0 then return end

        local relative = math.clamp(x - Track.AbsolutePosition.X, 0, width)
        local p = relative / width

        Value = min + ((max - min) * p)

        if max - min >= 10 then
            Value = math.floor(Value + 0.5)
        else
            Value = math.floor(Value * 100) / 100
        end

        Fill.Size = UDim2.new(p, 0, 1, 0)
        Knob.Position = UDim2.new(p, 0, 0.5, 0)
        ValueText.Text = tostring(Value)

        if callback then
            callback(Value)
        end
    end

    Track.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then

            Dragging = true
            SetValueFromX(input.Position.X)

            Tween(Knob, {Size = UDim2.fromOffset(30, 30)}, 0.12, Enum.EasingStyle.Back)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if not Dragging then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch then
            SetValueFromX(input.Position.X)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            if Dragging then
                Dragging = false
                Tween(Knob, {Size = UDim2.fromOffset(26, 26)}, 0.18, Enum.EasingStyle.Back)
            end
        end
    end)

    ValueText.Text = tostring(Value)

    return Holder
end

------------------------------------------------------------
-- TOGGLE BUTTON
------------------------------------------------------------

local function CreateToggleButton(title, subtitle, defaultState, callback, tab)
    local Holder = CreateControl(title, subtitle, 59, tab)

    local Toggle = Instance.new("TextButton")
    Toggle.Size = UDim2.fromOffset(58, 30)
    Toggle.Position = UDim2.new(1, -70, 0.5, -15)
    Toggle.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Toggle.BackgroundTransparency = 0.3
    Toggle.BorderSizePixel = 0
    Toggle.Text = ""
    Toggle.AutoButtonColor = false
    Toggle.Active = true
    Toggle.ZIndex = 26
    Toggle.Parent = Holder

    Corner(Toggle, 15)
    Stroke(Toggle, CONFIG.COLORS.Silver, 0.55, 1)

    local Knob = Instance.new("Frame")
    Knob.Size = UDim2.fromOffset(22, 22)
    Knob.AnchorPoint = Vector2.new(0.5, 0.5)
    Knob.Position = UDim2.new(0.5, 0, 0.5, 0)
    Knob.BackgroundColor3 = CONFIG.COLORS.SilverBright
    Knob.BackgroundTransparency = 0.05
    Knob.BorderSizePixel = 0
    Knob.ZIndex = 27
    Knob.Parent = Toggle

    Corner(Knob, 11)

    local State = defaultState or false

    local function UpdateVisual()
        local targetColor = State and CONFIG.COLORS.IcePurple or CONFIG.COLORS.NavyDark
        local targetKnobPos = State and UDim2.new(0.8, 0, 0.5, 0) or UDim2.new(0.2, 0, 0.5, 0)
        local targetKnobColor = State and CONFIG.COLORS.SilverBright or CONFIG.COLORS.SubText

        Tween(Toggle, {BackgroundColor3 = targetColor}, 0.2)
        Tween(Knob, {Position = targetKnobPos}, 0.2, Enum.EasingStyle.Back)
        Tween(Knob, {BackgroundColor3 = targetKnobColor}, 0.2)
    end

    Toggle.MouseButton1Click:Connect(function()
        State = not State
        UpdateVisual()
        if callback then
            callback(State)
        end
    end)

    UpdateVisual()

    return Holder
end
------------------------------------------------------------
-- MULTI SELECT
------------------------------------------------------------

local function CreateMultiList(title, subtitle, options, selected, callback, tab)
    local Holder = CreateControl(title, subtitle or "", 64, tab)

    local Selector = Instance.new("TextButton")
    Selector.Size = UDim2.fromOffset(122, 34)
    Selector.Position = UDim2.new(1, -136, 0.5, -17)
    Selector.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Selector.BackgroundTransparency = 0.24
    Selector.BorderSizePixel = 0
    Selector.Text = ""
    Selector.AutoButtonColor = false
    Selector.Active = true
    Selector.ZIndex = 26
    Selector.Parent = Holder
    Corner(Selector, 11)
    Stroke(Selector, CONFIG.COLORS.Silver, 0.64, 1)

    local Value = Instance.new("TextLabel")
    Value.Size = UDim2.new(1, -32, 1, 0)
    Value.Position = UDim2.fromOffset(10, 0)
    Value.BackgroundTransparency = 1
    Value.TextColor3 = CONFIG.COLORS.SilverBright
    Value.TextSize = 9
    Value.Font = Enum.Font.GothamBold
    Value.TextXAlignment = Enum.TextXAlignment.Left
    Value.TextTruncate = Enum.TextTruncate.AtEnd
    Value.ZIndex = 27
    Value.Parent = Selector

    local Arrow = Instance.new("TextLabel")
    Arrow.Size = UDim2.fromOffset(20, 20)
    Arrow.Position = UDim2.new(1, -25, 0.5, -10)
    Arrow.BackgroundTransparency = 1
    Arrow.Text = "⌄"
    Arrow.TextColor3 = CONFIG.COLORS.IcePurple
    Arrow.TextSize = 16
    Arrow.Font = Enum.Font.GothamBold
    Arrow.ZIndex = 27
    Arrow.Parent = Selector

    local Popup = Instance.new("ScrollingFrame")
    Popup.Name = "MultiPopup"
    Popup.Size = UDim2.new(0, 150, 0, 0)
    Popup.BackgroundColor3 = CONFIG.COLORS.NavyDark
    Popup.BackgroundTransparency = 0.06
    Popup.BorderSizePixel = 0
    Popup.ClipsDescendants = true
    Popup.Visible = false
    Popup.ScrollBarThickness = 2
    Popup.ScrollBarImageColor3 = CONFIG.COLORS.IcePurple
    Popup.CanvasSize = UDim2.new(0, 0, 0, 0)
    Popup.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Popup.ZIndex = 999
    Popup.Parent = MainHolder
    Corner(Popup, 12)
    Stroke(Popup, CONFIG.COLORS.Silver, 0.55, 1)

    local Padding = Instance.new("UIPadding")
    Padding.PaddingTop = UDim.new(0, 5)
    Padding.PaddingBottom = UDim.new(0, 5)
    Padding.PaddingLeft = UDim.new(0, 5)
    Padding.PaddingRight = UDim.new(0, 5)
    Padding.Parent = Popup

    local Layout = Instance.new("UIListLayout")
    Layout.Padding = UDim.new(0, 3)
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Layout.Parent = Popup

    local selectedSet = {}
    for _, v in ipairs(selected or {}) do
        selectedSet[tostring(v)] = true
    end
    local OptionButtons = {}

    local function refreshLabel()
        if selectedSet.ALL then
            Value.Text = "ALL"
            return
        end

        local names = {}
        for _, option in ipairs(options) do
            if option ~= "ALL" and selectedSet[option] then
                table.insert(names, option)
            end
        end

        if #names == 0 then
            Value.Text = "Không chọn"
        elseif #names <= 2 then
            Value.Text = table.concat(names, ", ")
        else
            Value.Text = string.format("%d mục đã chọn", #names)
        end
    end

    local Opened = false
    local function UpdatePopupPosition()
        local mainAbs = MainHolder.AbsolutePosition
        local selAbs = Selector.AbsolutePosition
        local selSize = Selector.AbsoluteSize
        local popupSize = Popup.AbsoluteSize
        local x = selAbs.X - mainAbs.X + selSize.X - popupSize.X
        local y = selAbs.Y - mainAbs.Y + selSize.Y + 5
        local mainSize = MainHolder.AbsoluteSize
        Popup.Position = UDim2.fromOffset(
            math.clamp(x, 0, math.max(0, mainSize.X - popupSize.X)),
            math.clamp(y, 0, math.max(0, mainSize.Y - popupSize.Y))
        )
    end

    local function close()
        if not Opened then return end
        Opened = false
        if OpenPopupInfo then OpenPopupInfo.opened = false end
        Tween(Popup, {Size = UDim2.new(0, 150, 0, 0)}, 0.18)
        Tween(Arrow, {Rotation = 0}, 0.18)
        task.delay(0.18, function()
            if not Opened then Popup.Visible = false end
        end)
    end

    local function open()
        if Opened then close(); return end
        if OpenPopupInfo and OpenPopupInfo.opened then
            ClosePopup()
        end
        Opened = true
        Popup.Visible = true
        OpenPopupInfo = {popup = Popup, selector = Selector, arrow = Arrow, opened = true}
        local height = math.min(220, math.max(48, #options * 30 + 12))
        Popup.Size = UDim2.new(0, 150, 0, 0)
        UpdatePopupPosition()
        Tween(Popup, {Size = UDim2.new(0, 150, 0, height)}, 0.22, Enum.EasingStyle.Back)
        Tween(Arrow, {Rotation = 180}, 0.18)
    end

    for _, option in ipairs(options) do
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(1, -2, 0, 27)
        Button.BackgroundColor3 = CONFIG.COLORS.Violet
        Button.BackgroundTransparency = selectedSet[option] and 0.28 or 0.78
        Button.BorderSizePixel = 0
        Button.Text = "  " .. tostring(option)
        Button.TextColor3 = selectedSet[option] and CONFIG.COLORS.SilverBright or CONFIG.COLORS.SubText
        Button.TextSize = 9
        Button.Font = Enum.Font.GothamSemibold
        Button.TextXAlignment = Enum.TextXAlignment.Left
        Button.AutoButtonColor = false
        Button.ZIndex = 1000
        Button.Parent = Popup
        Corner(Button, 8)
        OptionButtons[option] = Button

        Button.MouseButton1Click:Connect(function()
            selectedSet[option] = not selectedSet[option]
            Button.BackgroundTransparency = selectedSet[option] and 0.28 or 0.78
            Button.TextColor3 = selectedSet[option] and CONFIG.COLORS.SilverBright or CONFIG.COLORS.SubText

            local result = {}
            for _, item in ipairs(options) do
                if selectedSet[item] then
                    table.insert(result, item)
                end
            end
            refreshLabel()
            if callback then callback(result) end
        end)
    end

    Selector.MouseButton1Click:Connect(open)
    refreshLabel()
    return Holder
end



------------------------------------------------------------
-- STEAL-ONLY CONTROLS
------------------------------------------------------------

local selectedStealMode = "speed"
local stealEnabled = false

local function stopStealImmediately()
    farmSessionId = farmSessionId + 1

    -- Kill both workers immediately; the session bump invalidates
    -- any in-flight target cycle without importing another steal engine.
    state.pureTweenFarm = false
    state.autoFarmLoop = false
    currentFarmMode = "NONE"

    pcall(resetMovementState)
    pcall(stashEquippedTools)

    state.isReturning = false
    state.delivering = false
    state.glidingToTarget = false
    state.securingEgg = false
    state.teleporting = false
    state.currentTargetModel = nil
    state.targetPosition = nil
    state.statusText = "Ready"
end

CreateList(
    "Chế độ cướp trứng",
    "",
    {"speed", "TP"},
    1,
    function(mode)
        selectedStealMode = mode

        if stealEnabled then
            if mode == "speed" then
                setFarmMode("TWEEN")
            elseif mode == "TP" then
                setFarmMode("WARP")
            end
        end
    end,
    "MAIN"
)

CreateToggleButton(
    "Cướp trứng",
    "",
    false,
    function(enabled)
        stealEnabled = enabled

        if enabled then
            if selectedStealMode == "speed" then
                setFarmMode("TWEEN")
            else
                setFarmMode("WARP")
            end
        else
            stopStealImmediately()
        end
    end,
    "MAIN"
)

CreateActionButton(
    "Cướp một trứng",
    "",
    function()
        task.spawn(function()
            -- Manual steal is independent from the Auto toggle, but
            -- always invalidates any currently running auto session first.
            stopStealImmediately()

            local target = selectBestTargetEgg()
            if not target then
                return
            end

            local ok = runWarpStealCycle(target, nil)
            if ok then
                state.nextStealZone = "Lake"
                pcall(stashEquippedTools)

                if state.autoGlide then
                    pcall(returnToSafeLine, state.glideSpeed)
                    pcall(stashEquippedTools)
                end
            end

            state.isReturning = false
            state.delivering = false
        end)
    end,
    "MAIN"
)

CreateActionButton(
    "Đặt trứng",
    "",
    function()
        task.spawn(function()
            pcall(stashEquippedTools)
            state.statusText = "Depositing..."
            pcall(tweenHomeToBase, state.glideSpeed)
            pcall(placeAndHatchInventory)
            pcall(stashEquippedTools)
            state.isReturning = false
            state.delivering = false
        end)
    end,
    "MAIN"
)

CreateToggleButton(
    "Đặt trứng mỗi 5",
    "",
    state.autoPlaceEvery5,
    function(enabled)
        state.autoPlaceEvery5 = enabled

        if not enabled then
            state.batchStealCount = 0
        end

        pcall(saveConfig)
    end,
    "MAIN"
)

CreateToggleButton(
    "Tự động quay về",
    "",
    state.autoGlide,
    function(enabled)
        state.autoGlide = enabled
        pcall(saveConfig)
    end,
    "MAIN"
)

local ZoneOptions = {
    "ALL",
    "Light Dark", "Titan Temple", "Cherry Blossom", "Cosmic",
    "Prehistoric", "Abyss Ocean", "Volcano", "Snow",
    "Jungle", "Desert", "Lake", "Forest"
}

local selectedZoneList = {}
local allZonesSelected = true

for _, zone in ipairs({
    "Light Dark", "Titan Temple", "Cherry Blossom", "Cosmic",
    "Prehistoric", "Abyss Ocean", "Volcano", "Snow",
    "Jungle", "Desert", "Lake", "Forest"
}) do
    if not (state.selectedZones and state.selectedZones[zone] == true) then
        allZonesSelected = false
        break
    end
end

if allZonesSelected then
    table.insert(selectedZoneList, "ALL")
else
    for _, zone in ipairs(ZoneOptions) do
        if zone ~= "ALL" and state.selectedZones and state.selectedZones[zone] == true then
            table.insert(selectedZoneList, zone)
        end
    end
end

CreateMultiList(
    "Khu vực cướp",
    "",
    ZoneOptions,
    selectedZoneList,
    function(values)
        local set = {}

        for _, zone in ipairs(values) do
            if zone == "ALL" then
                for _, allZone in ipairs({
                    "Light Dark", "Titan Temple", "Cherry Blossom", "Cosmic",
                    "Prehistoric", "Abyss Ocean", "Volcano", "Snow",
                    "Jungle", "Desert", "Lake", "Forest"
                }) do
                    set[allZone] = true
                end
                break
            end
        end

        if next(set) == nil then
            for _, zone in ipairs(values) do
                set[zone] = true
            end
        end

        state.selectedZones = set
        pcall(saveConfig)
    end,
    "MAIN"
)

local RarityOptions = {
    "ALL",
    "Divine", "Eternal", "Secret", "Cosmic", "Mythic",
    "Legendary", "Epic", "Rare", "Uncommon", "Common"
}

local selectedRarityList = {}
local allRaritiesSelected = true

for _, rarity in ipairs({
    "Divine", "Eternal", "Secret", "Cosmic", "Mythic",
    "Legendary", "Epic", "Rare", "Uncommon", "Common"
}) do
    if not (state.selectedRarities and state.selectedRarities[rarity] == true) then
        allRaritiesSelected = false
        break
    end
end

if allRaritiesSelected then
    table.insert(selectedRarityList, "ALL")
else
    for _, rarity in ipairs(RarityOptions) do
        if rarity ~= "ALL" and state.selectedRarities and state.selectedRarities[rarity] == true then
            table.insert(selectedRarityList, rarity)
        end
    end
end

CreateMultiList(
    "Độ hiếm cướp",
    "",
    RarityOptions,
    selectedRarityList,
    function(values)
        local set = {}

        for _, rarity in ipairs(values) do
            if rarity == "ALL" then
                for _, allRarity in ipairs({
                    "Divine", "Eternal", "Secret", "Cosmic", "Mythic",
                    "Legendary", "Epic", "Rare", "Uncommon", "Common"
                }) do
                    set[allRarity] = true
                end
                break
            end
        end

        if next(set) == nil then
            for _, rarity in ipairs(values) do
                set[rarity] = true
            end
        end

        state.selectedRarities = set
        pcall(saveConfig)
    end,
    "MAIN"
)

CreateToggleButton(
    "Chế độ bất tử",
    "",
    state.godmode,
    function(enabled)
        if enabled then
            enableDesyncGodmode()
        else
            disableDesyncGodmode()
        end
    end,
    "PLAYER"
)

------------------------------------------------------------
-- SERVER / PERFORMANCE
------------------------------------------------------------

local function executorRequest(url)
    local requestFn =
        (typeof(request) == "function" and request)
        or (typeof(http_request) == "function" and http_request)
        or (syn and typeof(syn.request) == "function" and syn.request)
        or (fluxus and typeof(fluxus.request) == "function" and fluxus.request)

    if requestFn then
        local ok, response = pcall(requestFn, {
            Url = url,
            Method = "GET"
        })

        if ok and response and response.Body then
            return true, response.Body
        end
    end

    local ok, body = pcall(function()
        return HttpService:GetAsync(url)
    end)

    return ok, body
end

local function getPublicServers(cursor)
    local url = string.format(
        "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100%s",
        game.PlaceId,
        cursor and ("&cursor=" .. HttpService:UrlEncode(cursor)) or ""
    )

    local ok, body = executorRequest(url)
    if not ok or not body then
        return nil
    end

    local decoded
    local decodeOk = pcall(function()
        decoded = HttpService:JSONDecode(body)
    end)

    if not decodeOk or type(decoded) ~= "table" then
        return nil
    end

    return decoded
end

local function teleportToServer(jobId)
    if not jobId or jobId == game.JobId then
        return false
    end

    local ok = pcall(function()
        TeleportService:TeleportToPlaceInstance(
            game.PlaceId,
            jobId,
            LocalPlayer
        )
    end)

    return ok
end

local function rejoinServer()
    pcall(function()
        TeleportService:TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            LocalPlayer
        )
    end)
end

local function hopServer(maxCandidates)
    maxCandidates = tonumber(maxCandidates) or 100

    task.spawn(function()
        local visited = {}
        local cursor = nil
        local candidates = {}

        for _ = 1, 7 do
            local page = getPublicServers(cursor)
            if not page then
                break
            end

            for _, server in ipairs(page.data or {}) do
                local id = server.id
                local playing = tonumber(server.playing) or 0
                local maxPlayers = tonumber(server.maxPlayers) or 0

                if id
                    and id ~= game.JobId
                    and not visited[id]
                    and playing < maxPlayers
                then
                    visited[id] = true
                    table.insert(candidates, {
                        id = id,
                        playing = playing,
                        maxPlayers = maxPlayers
                    })

                    if #candidates >= maxCandidates then
                        break
                    end
                end
            end

            if #candidates >= maxCandidates then
                break
            end

            cursor = page.nextPageCursor
            if not cursor then
                break
            end

            task.wait()
        end

        table.sort(candidates, function(a, b)
            return a.playing < b.playing
        end)

        for _, server in ipairs(candidates) do
            if teleportToServer(server.id) then
                return
            end
            task.wait(0.12)
        end
    end)
end

CreateActionButton(
    "Vào lại server",
    "",
    rejoinServer,
    "SERVER"
)


CreateActionButton(
    "Hop server",
    "",
    function()
        hopServer(100)
    end,
    "SERVER"
)

CreateToggleButton(
    "FPS Boost",
    "",
    state.performanceMode,
    function(enabled)
        if enabled then
            task.spawn(enablePerformanceMode)
        else
            task.spawn(disablePerformanceMode)
        end
    end,
    "SERVER"
)

SelectTab("MAIN")

------------------------------------------------------------
-- JUMP OVERLAY
------------------------------------------------------------

local JumpButton = Instance.new("TextButton")
JumpButton.Name = "BypassJumpButton"
JumpButton.Size = UDim2.fromOffset(62, 62)
JumpButton.AnchorPoint = Vector2.new(1, 1)
JumpButton.Position = UDim2.new(1, -18, 1, -86)
JumpButton.BackgroundColor3 = CONFIG.COLORS.Navy
JumpButton.BackgroundTransparency = 0.14
JumpButton.BorderSizePixel = 0
JumpButton.Text = "↑"
JumpButton.TextColor3 = CONFIG.COLORS.SilverBright
JumpButton.TextSize = 27
JumpButton.Font = Enum.Font.GothamBlack
JumpButton.AutoButtonColor = false
JumpButton.Active = true
JumpButton.ZIndex = 300
JumpButton.Parent = ScreenGui
Corner(JumpButton, 31)
Stroke(JumpButton, CONFIG.COLORS.SilverBright, 0.16, 1.6)

local JumpGradient = Instance.new("UIGradient")
JumpGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, CONFIG.COLORS.SilverBright),
    ColorSequenceKeypoint.new(0.45, CONFIG.COLORS.IcePurple),
    ColorSequenceKeypoint.new(1, CONFIG.COLORS.Violet)
})
JumpGradient.Rotation = 135
JumpGradient.Parent = JumpButton

JumpButton.MouseButton1Click:Connect(function()
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Jump = true
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

LocalPlayer.CharacterAdded:Connect(function(character)
    task.defer(function()
        local humanoid = character:WaitForChild("Humanoid", 5)
        if humanoid then
            humanoid.JumpPower = humanoid.JumpPower
        end
    end)
end)

------------------------------------------------------------
-- FIXED MAIN DRAG SYSTEM (uses absolute position -> no snap)
------------------------------------------------------------

local DragZone = Instance.new("TextButton")
DragZone.Name = "DragZone"
DragZone.Size = UDim2.new(1, -125, 0, 67)
DragZone.Position = UDim2.fromOffset(14, 0)
DragZone.BackgroundTransparency = 1
DragZone.BorderSizePixel = 0
DragZone.Text = ""
DragZone.AutoButtonColor = false
DragZone.Active = true
DragZone.ZIndex = 15
DragZone.Parent = Root

local DraggingMain = false
local MainDragStart = nil
local MainStartAbs = nil

local function GetViewportSize()
    local camera = workspace.CurrentCamera
    if camera then
        return camera.ViewportSize
    end
    return Vector2.new(800, 600)
end

local function ClampAbsPosition(x, y)
    local viewport = GetViewportSize()
    local width = MainHolder.AbsoluteSize.X
    local height = MainHolder.AbsoluteSize.Y

    x = math.clamp(x, 5, math.max(5, viewport.X - width - 5))
    y = math.clamp(y, 5, math.max(5, viewport.Y - height - 5))

    return x, y
end

local function ApplyMainAbsPosition(x, y)
    x, y = ClampAbsPosition(x, y)
    MainHolder.Position = UDim2.new(0, x, 0, y)
end

DragZone.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        DraggingMain = true
        MainDragStart = input.Position
        MainStartAbs = MainHolder.AbsolutePosition
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not DraggingMain then return end
    if not MainDragStart or not MainStartAbs then return end

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        local delta = input.Position - MainDragStart
        local newX = MainStartAbs.X + delta.X
        local newY = MainStartAbs.Y + delta.Y

        ApplyMainAbsPosition(newX, newY)

        if OpenPopupInfo and OpenPopupInfo.popup and OpenPopupInfo.popup.Visible then
            if _G.__PHUCMAX_UpdatePopupPosition then
                _G.__PHUCMAX_UpdatePopupPosition()
            end
        end
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        DraggingMain = false
        MainDragStart = nil
        MainStartAbs = nil
    end
end)

------------------------------------------------------------
-- FIXED RESIZE HANDLE (absolute clamp)
------------------------------------------------------------

local ResizeZone = Instance.new("TextButton")
ResizeZone.Name = "ResizeZone"
ResizeZone.Size = UDim2.fromOffset(52, 52)
ResizeZone.AnchorPoint = Vector2.new(1, 1)
ResizeZone.Position = UDim2.fromScale(1, 1)
ResizeZone.BackgroundTransparency = 1
ResizeZone.BorderSizePixel = 0
ResizeZone.Text = ""
ResizeZone.AutoButtonColor = false
ResizeZone.Active = true
ResizeZone.ZIndex = 70
ResizeZone.Parent = MainHolder

local ResizeVisual = Instance.new("Frame")
ResizeVisual.Size = UDim2.fromOffset(24, 24)
ResizeVisual.AnchorPoint = Vector2.new(1, 1)
ResizeVisual.Position = UDim2.new(1, -7, 1, -7)
ResizeVisual.BackgroundTransparency = 1
ResizeVisual.ZIndex = 71
ResizeVisual.Parent = ResizeZone

local ResizeLine1 = Instance.new("Frame")
ResizeLine1.Size = UDim2.fromOffset(14, 2)
ResizeLine1.Position = UDim2.new(1, -14, 1, -4)
ResizeLine1.Rotation = -45
ResizeLine1.BackgroundColor3 = CONFIG.COLORS.SilverBright
ResizeLine1.BackgroundTransparency = 0.35
ResizeLine1.BorderSizePixel = 0
ResizeLine1.ZIndex = 72
ResizeLine1.Parent = ResizeVisual
Corner(ResizeLine1, 5)

local ResizeLine2 = Instance.new("Frame")
ResizeLine2.Size = UDim2.fromOffset(19, 2)
ResizeLine2.Position = UDim2.new(1, -19, 1, -9)
ResizeLine2.Rotation = -45
ResizeLine2.BackgroundColor3 = CONFIG.COLORS.IcePurple
ResizeLine2.BackgroundTransparency = 0.35
ResizeLine2.BorderSizePixel = 0
ResizeLine2.ZIndex = 72
ResizeLine2.Parent = ResizeVisual
Corner(ResizeLine2, 5)

local Resizing = false
local ResizeStart = nil
local ResizeStartSize = nil
local ResizeStartAbs = nil

local function UpdateResize(input)
    if not ResizeStart or not ResizeStartSize or not ResizeStartAbs then return end

    local delta = input.Position - ResizeStart
    local viewport = GetViewportSize()

    local newWidth = math.clamp(
        ResizeStartSize.X + delta.X,
        CONFIG.MIN_WIDTH,
        math.min(CONFIG.MAX_WIDTH, viewport.X - 20)
    )

    local newHeight = math.clamp(
        ResizeStartSize.Y + delta.Y,
        CONFIG.MIN_HEIGHT,
        math.min(CONFIG.MAX_HEIGHT, viewport.Y - 20)
    )

    MainHolder.Size = UDim2.fromOffset(newWidth, newHeight)

    ApplyMainAbsPosition(ResizeStartAbs.X, ResizeStartAbs.Y)

    if OpenPopupInfo and OpenPopupInfo.popup and OpenPopupInfo.popup.Visible then
        if _G.__PHUCMAX_UpdatePopupPosition then
            _G.__PHUCMAX_UpdatePopupPosition()
        end
    end
end

ResizeZone.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        Resizing = true
        ResizeStart = input.Position
        ResizeStartSize = MainHolder.AbsoluteSize
        ResizeStartAbs = MainHolder.AbsolutePosition

        Tween(ResizeVisual, {Size = UDim2.fromOffset(28, 28)}, 0.12, Enum.EasingStyle.Back)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not Resizing then return end
    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then
        UpdateResize(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        if Resizing then
            Resizing = false
            ResizeStart = nil
            ResizeStartSize = nil
            ResizeStartAbs = nil
            Tween(ResizeVisual, {Size = UDim2.fromOffset(24, 24)}, 0.18, Enum.EasingStyle.Back)
        end
    end
end)

------------------------------------------------------------
-- OPEN / CLOSE
------------------------------------------------------------

local Open = true

local MainScale = MainHolder:FindFirstChild("AnimationScale")
if not MainScale then
    MainScale = Instance.new("UIScale")
    MainScale.Name = "AnimationScale"
    MainScale.Scale = 1
    MainScale.Parent = MainHolder
end

local function OpenUI()
    Open = true
    MainHolder.Visible = true

    MainScale.Scale = 0.86
    Background.ImageTransparency = 1
    GlassOverlay.BackgroundTransparency = 1

    Tween(MainScale, {Scale = 1}, 0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Tween(Background, {ImageTransparency = 0}, 0.30)
    Tween(GlassOverlay, {BackgroundTransparency = 0.48}, 0.36)
end

local function CloseUI()
    Open = false

    local tween = Tween(MainScale, {Scale = 0.86}, 0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

    Tween(Background, {ImageTransparency = 1}, 0.20)
    Tween(GlassOverlay, {BackgroundTransparency = 1}, 0.20)

    tween.Completed:Connect(function()
        if not Open then
            MainHolder.Visible = false
        end
    end)
end

local function ToggleUI()
    if Open then
        CloseUI()
    else
        OpenUI()
    end
end

------------------------------------------------------------
-- FLOATING TOGGLE
------------------------------------------------------------

local Toggle = Instance.new("ImageButton")
Toggle.Name = "PHUCMAX_TOGGLE"

Toggle.Size = UDim2.fromOffset(CONFIG.TOGGLE_SIZE, CONFIG.TOGGLE_SIZE)

Toggle.Position = UDim2.new(0, 16, 0, 200)

Toggle.BackgroundColor3 = CONFIG.COLORS.Navy
Toggle.BackgroundTransparency = 0.16
Toggle.BorderSizePixel = 0

Toggle.Image = CONFIG.TOGGLE_BACKGROUND
Toggle.ImageTransparency = 0
Toggle.ScaleType = Enum.ScaleType.Crop

Toggle.AutoButtonColor = false
Toggle.Active = true
Toggle.Visible = true

Toggle.ZIndex = 100
Toggle.Parent = ScreenGui

Corner(Toggle, 15)

local ToggleStroke = Stroke(Toggle, CONFIG.COLORS.SilverBright, 0.18, 1.4)

local ToggleGlass = Instance.new("Frame")
ToggleGlass.Size = UDim2.fromScale(1, 1)
ToggleGlass.BackgroundColor3 = CONFIG.COLORS.Navy
ToggleGlass.BackgroundTransparency = 0.54
ToggleGlass.BorderSizePixel = 0
ToggleGlass.Active = false
ToggleGlass.ZIndex = 101
ToggleGlass.Parent = Toggle

Corner(ToggleGlass, 15)

Gradient(
    ToggleGlass,
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, CONFIG.COLORS.Silver),
        ColorSequenceKeypoint.new(0.35, CONFIG.COLORS.IcePurple),
        ColorSequenceKeypoint.new(1, CONFIG.COLORS.Navy)
    }),
    135
)

local ToggleIcon = Instance.new("ImageLabel")
ToggleIcon.Size = UDim2.new(0.58, 0, 0.58, 0)
ToggleIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleIcon.Position = UDim2.fromScale(0.5, 0.5)
ToggleIcon.BackgroundTransparency = 1
ToggleIcon.Image = CONFIG.TOGGLE_BACKGROUND
ToggleIcon.ImageTransparency = 0.08
ToggleIcon.ScaleType = Enum.ScaleType.Crop
ToggleIcon.Active = false
ToggleIcon.ZIndex = 105
ToggleIcon.Parent = Toggle

Corner(ToggleIcon, 10)

------------------------------------------------------------
-- FIXED TOGGLE POSITION (drag disabled)
------------------------------------------------------------

local function LockTogglePosition()
    Toggle.Active = true
end

LockTogglePosition()

Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        Tween(Toggle, {
            Size = UDim2.fromOffset(
                CONFIG.TOGGLE_SIZE + 4,
                CONFIG.TOGGLE_SIZE + 4
            )
        }, 0.12, Enum.EasingStyle.Back)

        ToggleUI()

        Tween(Toggle, {
            Size = UDim2.fromOffset(CONFIG.TOGGLE_SIZE, CONFIG.TOGGLE_SIZE)
        }, 0.18, Enum.EasingStyle.Back)
    end
end)

------------------------------------------------------------
-- LIQUID GLASS + RAINBOW ANIMATION
------------------------------------------------------------

local Clock = 0

RunService.RenderStepped:Connect(function(delta)
    Clock += delta

    local x = math.sin(Clock * 0.45) * 22
    local y = math.cos(Clock * 0.35) * 9

    Reflection.Position = UDim2.new(-0.18, x, -0.14, y)

    local pulse = (math.sin(Clock * 1.6) + 1) / 2
    MainStroke.Transparency = 0.10 + pulse * 0.20
    ToggleStroke.Transparency = 0.12 + pulse * 0.20

    local glow = (math.sin(Clock * 2.1) + 1) / 2
    ToggleGlass.BackgroundTransparency = 0.48 + glow * 0.08

    local rainbowRotation = (Clock * 90) % 360
    RainbowBorderGradient.Rotation = rainbowRotation
    RainbowGlowGradient.Rotation = rainbowRotation

    RainbowGlow.BackgroundTransparency = 0.50 + glow * 0.15
end)

------------------------------------------------------------
-- INITIAL MOBILE-SIZED POSITION
------------------------------------------------------------

local viewport = workspace.CurrentCamera.ViewportSize

local startWidth = math.min(CONFIG.MAIN_WIDTH, viewport.X - 26)
local startHeight = math.min(CONFIG.MAIN_HEIGHT, viewport.Y - 90)

startWidth = math.max(CONFIG.MIN_WIDTH, startWidth)
startHeight = math.max(CONFIG.MIN_HEIGHT, startHeight)

MainHolder.Size = UDim2.fromOffset(startWidth, startHeight)

local startX = (viewport.X - startWidth) / 2
local startY = (viewport.Y - startHeight) / 2

MainHolder.Position = UDim2.new(0, startX, 0, startY)

local toggleX = 16
local toggleY = math.max(20, (viewport.Y - CONFIG.TOGGLE_SIZE) / 2)
Toggle.Position = UDim2.new(0, toggleX, 0, toggleY)

MainScale.Scale = 0.86
Background.ImageTransparency = 1
GlassOverlay.BackgroundTransparency = 1

Toggle.Visible = true

task.delay(0.05, function()
    OpenUI()
end)

print("PHUCMAX Liquid Glass v5 loaded.")
print("• Fixed drag/resize snapping to origin.")
print("• Fixed toggle button shifting.")
print("• Added silver / ice-blue / violet animated border.")
end

logInfo( "[+] Initializing Dice Hub x WindUI v42.64 (Steal an Egg Edition)..." )buildUi()task.spawn (function(...) task.wait ( 0.5 )swapHumanoidForDesync()setGodmode( true )leaveTreadmillCleanly()
    if LocalPlayer.Character then
        bindCharacterSafety(LocalPlayer.Character )
    end
    stashEquippedTools()logInfo( "[+] Auto Humanoid Swap & Rigid Joint Locking Active." )
end
)LocalPlayer.CharacterAdded :Connect(function(e,...) task.wait ( 0.6 )
    if state.alive then
        resetMovementState()updateTreadmillTouchSafety()leaveTreadmillCleanly()swapHumanoidForDesync()setGodmode( true )bindCharacterSafety(e)stashEquippedTools()
    end
end
)
if state.performanceMode then
    task.spawn (enablePerformanceMode)
end
if state.disable3D then
    pcall(function(...) RunService:Set3dRenderingEnabled( false )
    end
    )
end
if state.antiAFK then
    task.spawn (enableAntiAfk)
end
logInfo( "[+] Dice Hub v42.64 Ready! All-In-One Built-in Anti-AFK & Prometheus Ready!" )

$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -LiteralPath $scriptRoot
$root = (Get-Location).ProviderPath

$dapRoot = (Get-ChildItem -Path $root -Directory | Where-Object { $_.Name -like 'Linh Ki*D?p' })[0].FullName
$epRoot = (Get-ChildItem -Path $root -Directory | Where-Object { $_.Name -like 'Linh Ki*Ép Nh?a' -or $_.Name -like 'Linh Ki*Ép Nhựa' })[0].FullName
$pdfRoot = Join-Path $root 'pdf'
$dapSource = (Get-ChildItem -Path $pdfRoot -Directory | Where-Object { $_.Name -like 'pdf-Linh Ki*D?p' })[0].FullName
$epSource = (Get-ChildItem -Path $pdfRoot -Directory | Where-Object { $_.Name -like 'pdf-Linh Ki*Ép Nh?a' -or $_.Name -like 'pdf-Linh Ki*Ép Nhựa' })[0].FullName

function New-ItemObject {
    param(
        [int]$Number,
        [string]$Slug,
        [string]$Group
    )
    [pscustomobject]@{ Number = $Number; Slug = $Slug; Group = $Group }
}

$dapItems = @(
    New-ItemObject 1 "straight-punch-t-type-punches" "straight-punch-t-type-punches"
    New-ItemObject 2 "shoulder-punches-a-type-punches" "shoulder-punches-a-type-punches"
    New-ItemObject 3 "burring-punches-spma" "burring-punches"
    New-ItemObject 4 "burring-punches-spm" "burring-punches"
    New-ItemObject 5 "straight-pilot-punches" "straight-pilot-punches"
    New-ItemObject 6 "pilot-punches" "pilot-punches"
    New-ItemObject 7 "guide-lifter-punch-glp" "guide-lifter-punch"
    New-ItemObject 8 "guide-lifter-punch-lp-lph" "guide-lifter-punch"
    New-ItemObject 9 "guide-lifter-punch-detachable-glr" "guide-lifter-punch-detachable-type"
    New-ItemObject 10 "guide-lifter-punch-detachable-agl" "guide-lifter-punch-detachable-type"
    New-ItemObject 11 "punch-guide-bushings-headed-mh-hg" "punch-guide-bushings-headed"
    New-ItemObject 12 "punch-guide-bushings-straight-ms-sg" "punch-guide-bushings-straight"
    New-ItemObject 13 "punch-guide-bushings-headed-mh-hd" "punch-guide-bushings-headed"
    New-ItemObject 14 "button-dies-straight-msd-sd" "button-dies-straight"
    New-ItemObject 15 "stripper-guide-pins-headed-sgph" "stripper-guide-pins-headed-type"
    New-ItemObject 16 "stripper-guide-pins-headed-sgoh" "stripper-guide-pins-headed-type"
    New-ItemObject 17 "stripper-guide-pins-straight-sgpn" "stripper-guide-pins-straight-type"
    New-ItemObject 18 "stripper-guide-pins-straight-sgon" "stripper-guide-pins-straight-type"
    New-ItemObject 19 "stripper-guide-pins-detachable-sgpr" "stripper-guide-pins-detachable-type"
    New-ItemObject 20 "stripper-guide-pins-detachable-sgor" "stripper-guide-pins-detachable-type"
    New-ItemObject 21 "stripper-guide-pins-both-ends-tapped-sgpw" "stripper-guide-pins-detachable-and-both-ends-tapped-type"
    New-ItemObject 22 "stripper-guide-pins-both-ends-tapped-sgpws" "stripper-guide-pins-detachable-and-both-ends-tapped-type"
    New-ItemObject 23 "stripper-guide-pins-both-ends-tapped-sgpwh" "stripper-guide-pins-detachable-and-both-ends-tapped-type"
    New-ItemObject 24 "stripper-guide-bushings-sgba" "stripper-guide-bushings"
    New-ItemObject 25 "stripper-guide-bushings-sgbh" "stripper-guide-bushings"
    New-ItemObject 26 "stripper-guide-bushings-sgbl" "stripper-guide-bushings"
    New-ItemObject 27 "stripper-guide-bushings-sgbt" "stripper-guide-bushings"
    New-ItemObject 28 "ball-guide-post-sets-detachable-rbsh-rmsh-rksh" "ball-guide-post-sets-for-die-sets-detachable-post-type"
    New-ItemObject 29 "ball-guide-post-sets-detachable-rb-rm-rk" "ball-guide-post-sets-for-die-sets-detachable-post-type"
    New-ItemObject 30 "ball-guide-post-sets-press-fit-pbsh-pmsh-pksh" "ball-guide-post-sets-for-die-sets-press-fit-post-type"
    New-ItemObject 31 "guide-posts-for-die-sets-mrp-brpm-brpk" "guide-posts-for-die-sets"
    New-ItemObject 32 "guide-posts-for-die-sets-msp-bspm-bspk" "guide-posts-for-die-sets"
    New-ItemObject 33 "stoppers-for-ball-guides-stm" "stoppers-and-springs-for-ball-guides"
    New-ItemObject 34 "stoppers-for-ball-guides-stk" "stoppers-and-springs-for-ball-guides"
    New-ItemObject 35 "springs-for-ball-guides-swp" "stoppers-and-springs-for-ball-guides"
    New-ItemObject 36 "ball-guide-bushings-for-die-sets-lbb" "ball-guide-bushings-for-die-sets"
    New-ItemObject 37 "ball-cages-for-die-sets-mbsh-mbjh" "ball-cages-for-die-sets"
    New-ItemObject 38 "ball-cages-for-die-sets-mbs-mbj" "ball-cages-for-die-sets"
    New-ItemObject 39 "spool-retainers-csr" "spool-retainers"
    New-ItemObject 40 "plain-guide-post-sets-my-myp" "plain-guide-post-sets"
    New-ItemObject 41 "plain-guide-post-sets-myz-myzp" "plain-guide-post-sets"
    New-ItemObject 42 "ball-guide-post-sets-movable-stopper-mya-myap" "ball-guide-post-sets-movable-stopper"
    New-ItemObject 43 "plain-guide-post-sets-myj-myjp" "plain-guide-post-sets"
    New-ItemObject 44 "ball-guide-post-sets-fixed-stopper-myak-mykp" "ball-guide-post-sets-fixed-stopper"
    New-ItemObject 45 "ball-guide-post-sets-fixed-stopper-myjk-mjkp" "ball-guide-post-sets-fixed-stopper"
    New-ItemObject 46 "guide-post-with-oil-grooves-mgoh-mgohp" "guide-post-with-oil-grooves"
    New-ItemObject 47 "guide-post-with-oil-grooves-mgo" "guide-post-with-oil-grooves"
    New-ItemObject 48 "guide-posts-mgp" "guide-posts"
    New-ItemObject 49 "guide-holders-mgh-mghp" "guide-holders"
    New-ItemObject 50 "ball-guide-bushings-mab-mabp" "ball-guide-bushings"
    New-ItemObject 51 "guide-holders-mgh-mghp-2" "guide-holders"
    New-ItemObject 52 "ball-guide-bushings-stmy" "ball-guide-bushings"
    New-ItemObject 53 "ball-guide-post-sets-springs-swmy" "ball-guide-post-sets-springs"
    New-ItemObject 54 "pu-stick" "pu-stick"
    New-ItemObject 55 "ball-plungers" "ball-plungers"
    New-ItemObject 56 "hex-socket-head-cap-screws" "hex-socket-head-cap-screws"
    New-ItemObject 57 "shot-counters-for-plastic-mold" "shot-counters-for-plastic-mold"
    New-ItemObject 58 "shoulder-bolts" "shoulder-bolts"
    New-ItemObject 59 "bolts-for-ejector-plate-set" "bolts-for-ejector-plate-set"
    New-ItemObject 60 "stop-bolts" "stop-bolts"
    New-ItemObject 61 "puller-bolts-female-screw-type" "puller-bolts-female-screw-type"
    New-ItemObject 62 "puller-bolts-male-screw-type" "puller-bolts-male-screw-type"
    New-ItemObject 63 "dowel-pins" "dowel-pins"
    New-ItemObject 64 "screw-plugs" "screw-plugs"
    New-ItemObject 65 "microswitch" "microswitch"
    New-ItemObject 66 "lightest-load-springs-samsol" "lightest-load-springs"
    New-ItemObject 67 "light-load-springs-samsol" "light-load-springs"
    New-ItemObject 68 "medium-load-springs-samsol" "medium-load-springs"
    New-ItemObject 69 "heavy-load-springs-samsol" "heavy-load-springs"
    New-ItemObject 70 "super-load-springs-samsol" "super-load-springs"
    New-ItemObject 71 "middle-deflection-springs-samsol" "middle-deflection-springs"
    New-ItemObject 72 "high-deflection-springs-samsol" "high-deflection-springs"
    New-ItemObject 73 "wire-spring-samsol" "wire-spring"
    New-ItemObject 74 "lightest-load-springs-taiwan" "lightest-load-springs"
    New-ItemObject 75 "light-load-springs-taiwan" "light-load-springs"
    New-ItemObject 76 "medium-load-springs-taiwan" "medium-load-springs"
    New-ItemObject 77 "heavy-load-springs-taiwan" "heavy-load-springs"
    New-ItemObject 78 "super-load-springs-taiwan" "super-load-springs"
)

$epItems = @(
    New-ItemObject 1 "skd61straightejectorpin" "skd61straightejectorpin"
    New-ItemObject 2 "skh51straightejectorpin" "skh51straightejectorpin"
    New-ItemObject 3 "skd61steppedejectorpins" "skd61steppedejectorpins"
    New-ItemObject 4 "skh51steppedejectorpins" "skh51steppedejectorpins"
    New-ItemObject 5 "skd61rectangularejectorpin" "skd61rectangularejectorpin"
    New-ItemObject 6 "skh51rectangularejectorpins" "skh51rectangularejectorpins"
    New-ItemObject 7 "skd61ejectorsleeves" "skd61ejectorsleeves"
    New-ItemObject 8 "skd61steppedejectorsleeves" "skd61steppedejectorsleeves"
    New-ItemObject 9 "air-poppet-valves-air-ventilation" "air-poppet-valves-air-ventilation"
    New-ItemObject 10 "precision-leader-pins-plain-with-head-type" "precision-leader-pins-plain-with-head-type"
    New-ItemObject 11 "precision-leader-pin-with-oil-groove-type" "precision-leader-pin-with-oil-groove-type"
    New-ItemObject 12 "leader-bushing-head-type-with-no-oil-groove" "leader-bushing-head-type-with-no-oil-groove"
    New-ItemObject 13 "leader-bushing-straight-type-with-no-oil-groove" "leader-bushing-straight-type-with-no-oil-groove"
    New-ItemObject 14 "leader-bushings-head-oil-groove-type" "leader-bushings-head-oil-groove-type"
    New-ItemObject 15 "leader-bushings-straight-type-oil-groove-type" "leader-bushings-straight-type-oil-groove-type"
    New-ItemObject 16 "oil-free-leader-bushings-head-type-copper-alloy" "oil-free-leader-bushings-head-type-copper-alloy"
    New-ItemObject 17 "oil-free-leader-bushings-straight-type-copper-alloy" "oil-free-leader-bushings-straight-type-copper-alloy"
    New-ItemObject 18 "ejector-leader-bushings-oil-groove-type" "ejector-leader-bushings-oil-groove-type"
    New-ItemObject 19 "ejector-leader-bushings-oil-free-type" "ejector-leader-bushings-oil-free-type"
    New-ItemObject 20 "ejector-leader-bushings-ball-type" "ejector-leader-bushings-ball-type"
    New-ItemObject 21 "ball-retainers" "ball-retainers"
    New-ItemObject 22 "ejector-leader-bushings-linear-guide-type" "ejector-leader-bushings-linear-guide-type"
    New-ItemObject 23 "ejector-guide-pins" "ejector-guide-pins"
    New-ItemObject 24 "support-pins-oil-groove" "support-pins-oil-groove"
    New-ItemObject 25 "return-pins" "return-pins"
    New-ItemObject 26 "angular-pins" "angular-pins"
    New-ItemObject 27 "tension-links-long-stroke-type" "tension-links-long-stroke-type"
    New-ItemObject 28 "recycle-marked-pins" "recycle-marked-pins"
    New-ItemObject 29 "interchangeable-date-marked-pin-sets-standard" "interchangeable-date-marked-pin-sets-standard"
    New-ItemObject 30 "integral-date-marked-pins" "integral-date-marked-pins"
    New-ItemObject 31 "integral-date-marked-pins-double-ring-type" "integral-date-marked-pins-double-ring-type"
    New-ItemObject 32 "tapered-pin-set-standard-installation-type-skd11" "tapered-pin-set-standard-installation-type-skd11"
    New-ItemObject 33 "tapered-pin-set-standard-installation-type-suj2" "tapered-pin-set-standard-installation-type-suj2"
    New-ItemObject 34 "tapered-pin-set-bushing-pl-installation-type-skd11" "tapered-pin-set-bushing-pl-installation-type-skd11"
    New-ItemObject 35 "positioning-straight-pin-set" "positioning-straight-pin-set"
    New-ItemObject 36 "tapered-pin-set-pin-bushing-installation-type-skd11" "tapered-pin-set-pin-bushing-installation-type-skd11"
    New-ItemObject 37 "locating-block-sets" "locating-block-sets"
    New-ItemObject 38 "straight-side-locks-sets" "straight-side-locks-sets"
    New-ItemObject 39 "straight-side-locks-sets-yk30" "straight-side-locks-sets"
    New-ItemObject 40 "taper-block-sets" "taper-block-sets"
    New-ItemObject 41 "positioning-locking-blocks-standard-type" "positioning-locking-blocks-standard-type"
    New-ItemObject 42 "locking-blocks-inlay-type" "locking-blocks-inlay-type"
    New-ItemObject 43 "locking-blocks-inlay-pl-installation-type" "locking-blocks-inlay-pl-installation-type"
    New-ItemObject 44 "roller-lock-sets" "roller-lock-sets"
    New-ItemObject 45 "latch-lock" "latch-lock"
    New-ItemObject 46 "parting-lock-sets" "parting-lock-sets"
    New-ItemObject 47 "parting-lock-sets-compact-type" "parting-lock-sets-compact-type"
    New-ItemObject 48 "parting-lock-sets-mold-opening-mold-closing-controll-type" "parting-lock-sets-mold-opening-mold-closing-controll-type"
    New-ItemObject 49 "pu-stick" "pu-stick"
    New-ItemObject 50 "ball-plungers" "ball-plungers"
    New-ItemObject 51 "hex-socket-head-cap-screws" "hex-socket-head-cap-screws"
    New-ItemObject 52 "shot-counters-for-plastic-mold" "shot-counters-for-plastic-mold"
    New-ItemObject 53 "bolts-for-ejector-plate-set" "bolts-for-ejector-plate-set"
    New-ItemObject 54 "shoulder-bolts" "shoulder-bolts"
    New-ItemObject 55 "stop-bolts" "stop-bolts"
    New-ItemObject 56 "puller-bolts-female-screw-type" "puller-bolts-female-screw-type"
    New-ItemObject 57 "puller-bolts-male-screw-type" "puller-bolts-male-screw-type"
    New-ItemObject 58 "parting-lock-bushings-pl-installation-type" "parting-lock-bushings-pl-installation-type"
    New-ItemObject 59 "parting-locks" "parting-locks"
    New-ItemObject 60 "dowel-pins" "dowel-pins"
    New-ItemObject 61 "parting-lock-bushings" "parting-lock-bushings"
    New-ItemObject 62 "screw-plugs" "screw-plugs"
    New-ItemObject 63 "free-washers" "free-washers"
    New-ItemObject 64 "locating-rings" "locating-rings"
    New-ItemObject 65 "sprue-bushings-a-type" "sprue-bushings-a-type"
    New-ItemObject 66 "sprue-bushings-b-type" "sprue-bushings-b-type"
    New-ItemObject 67 "sprue-bushings-c-type" "sprue-bushings-c-type"
    New-ItemObject 68 "runner-lock-pins" "runner-lock-pins"
    New-ItemObject 69 "lifting-eye-bolts" "lifting-eye-bolts"
    New-ItemObject 70 "microswitch" "microswitch"
    New-ItemObject 71 "pin-point-gate-bushings" "pin-point-gate-bushings"
    New-ItemObject 72 "pin-point-gate-bushings-with-head" "pin-point-gate-bushings-with-head"
    New-ItemObject 73 "cooling-system-japanese-standard" "cooling-system-japanese-standard"
    New-ItemObject 74 "dau-noi-ong-nuoc" "dau-noi-ong-nuoc"
    New-ItemObject 75 "hose-nipples-npw" "hose-nipples"
    New-ItemObject 76 "hose-nipples-npl" "hose-nipples"
    New-ItemObject 77 "cooling-circuit-plug" "cooling-circuit-plug"
    New-ItemObject 78 "cooling-circuit-plug-hexa" "cooling-circuit-plug"
    New-ItemObject 79 "quick-fitting" "quick-fitting"
    New-ItemObject 80 "tapered-screw-plugs" "tapered-screw-plugs"
    New-ItemObject 81 "o-ring" "o-ring"
    New-ItemObject 82 "spiral-baffle-boards" "spiral-baffle-boards"
    New-ItemObject 83 "h-s-precision-thickness-gauge-strip" "h-s-precision-thickness-gauge-strip"
    New-ItemObject 84 "lightest-load-springs-samsol" "lightest-load-springs"
    New-ItemObject 85 "light-load-springs-samsol" "light-load-springs"
    New-ItemObject 86 "medium-load-springs-samsol" "medium-load-springs"
    New-ItemObject 87 "heavy-load-springs-samsol" "heavy-load-springs"
    New-ItemObject 88 "super-load-springs-samsol" "super-load-springs"
    New-ItemObject 89 "middle-deflection-springs-samsol" "middle-deflection-springs"
    New-ItemObject 90 "high-deflection-springs-samsol" "high-deflection-springs"
    New-ItemObject 91 "wire-spring-samsol" "wire-spring"
    New-ItemObject 92 "lightest-load-springs-taiwan" "lightest-load-springs"
    New-ItemObject 93 "light-load-springs-taiwan" "light-load-springs"
    New-ItemObject 94 "medium-load-springs-taiwan" "medium-load-springs"
    New-ItemObject 95 "heavy-load-springs-taiwan" "heavy-load-springs"
    New-ItemObject 96 "super-load-springs-taiwan" "super-load-springs"
    New-ItemObject 97 "ultra-high-deflection-springs" "ultra-high-deflection-springs"
    New-ItemObject 98 "high-deflection-springs-taiwan" "high-deflection-springs"
    New-ItemObject 99 "gas-vent" "gas-vent"
    New-ItemObject 100 "hot-nippers" "hot-nippers"
)

function Get-TargetPath {
    param($item, $root)
    $name = "{0:D2}-{1}" -f $item.Number, $item.Slug
    Join-Path $root $name
}

function Ensure-Folders {
    param($items, $root)
    foreach ($item in $items) {
        $target = Get-TargetPath $item $root
        if (-not (Test-Path $target)) {
            $tokens = @($item.Slug, $item.Group) | Where-Object { $_ }
            $candidate = Get-ChildItem -Path $root -Directory | Where-Object {
                $lower = $_.Name.ToLower()
                $tokens | Where-Object { $lower -like "*" + $_.ToLower() + "*" -and $_ -ne $null }
            } | Select-Object -First 1
            if ($candidate -and $candidate.FullName -ne $target) {
                Move-Item -Path $candidate.FullName -Destination $target -Force
            }
            if (-not (Test-Path $target)) {
                New-Item -ItemType Directory -Path $target | Out-Null
            }
        }
    }
}

function Move-Pdfs {
    param($items, $source, $root)
    $groups = $items | Where-Object { $_.Group } | Group-Object Group
    foreach ($grp in $groups) {
        $destinations = $grp.Group | Sort-Object Number
        $primary = $destinations[0]
        $primaryPath = Get-TargetPath $primary $root
        $files = Get-ChildItem -Path $source -Filter ("{0}*.pdf" -f $grp.Name)
        if (-not $files) { continue }
        $names = $files | Select-Object -ExpandProperty Name
        Move-Item -Path $files.FullName -Destination $primaryPath -Force
        if ($destinations.Count -gt 1) {
            foreach ($item in $destinations[1..($destinations.Count-1)]) {
                $destPath = Get-TargetPath $item $root
                foreach ($name in $names) {
                    $destFile = Join-Path $destPath $name
                    if (-not (Test-Path $destFile)) {
                        Copy-Item -Path (Join-Path $primaryPath $name) -Destination $destFile
                    }
                }
            }
        }
    }
}

Ensure-Folders -items $dapItems -root $dapRoot
Ensure-Folders -items $epItems -root $epRoot
Move-Pdfs -items $dapItems -source $dapSource -root $dapRoot
Move-Pdfs -items $epItems -source $epSource -root $epRoot

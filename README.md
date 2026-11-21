# PocketFusion for iPhone

PocketFusion adapts **Rodrigo Sigrist and contributors’ [OpenFusion:Pocket](https://github.com/rsigristc/OpenFusion-Pocket)** for regular iPhones and the foldable Duo. This repository distributes the iPhone source changes as a patch against upstream commit `9f202deb07897bbb880d5824323e9aee0264ac49`. See [credits](CREDITS.md), [license](LICENSE) and [third-party notices](NOTICE). FusionFall belongs to its respective rights holders. Retrobution operates independently.

## Build on a Mac

Install Git, Unity Hub, Unity **2022.3.62f3** with **iOS Build Support**, and Xcode with support for your iPhone. Sign in to Unity Hub and activate an eligible license. Download and unzip this repository from GitHub using **Code → Download ZIP**. Open Terminal in the extracted folder, then run:

```sh
git clone https://github.com/rsigristc/OpenFusion-Pocket.git game
git -C game checkout --detach 9f202deb07897bbb880d5824323e9aee0264ac49
git -C game apply --check ../iphone-port.patch && git -C game apply ../iphone-port.patch
cd game
cp Assets/Art/AppIcon/FusionSpawnIcon-v1.png Assets/Art/AppIcon/FusionFallIcon.png
cp Assets/Art/AppIcon/FusionSpawnForeground-v1.png Assets/Art/AppIcon/FusionFallForeground.png
```

These copies use upstream’s existing icons for a personal build. You can supply your own PNG artwork at those paths. The share package contains source changes and notices only.

1. Open the **game** folder in Unity Hub. In Unity, choose **File → Build Settings → iOS → Switch Platform**, then **OpenFusion → iPhone → Export Xcode project**.
2. Open **Builds/iOS/Unity-iPhone.xcodeproj** in Xcode. Connect and unlock your iPhone, trust the Mac, and enable Developer Mode if prompted.
3. Add your own Apple Account in Xcode Settings. On the **Unity-iPhone** app target under **Signing & Capabilities**, select automatic signing, your Personal Team and a unique bundle identifier such as `com.yourname.pocketfusion`.
4. Select your connected phone as the destination and click **Run**. If prompted on the phone, trust the Developer App under **Settings → General → VPN & Device Management**. Free personal signing expires after seven days. Run the project again with the same team and identifier to renew.
5. Open PocketFusion and select FusionFall Retrobution. If needed, add an endpoint server with API host `api.ffretrobution.net`. Sign in with your own server account. Other compatible servers can also be added.

Regular iPhones use the full-screen controls. Hold a supported Duo half-open with its hinge horizontal for the upper world view and lower controls. The development build was tested on iPhone hardware. A fresh install under someone else’s Apple team is still unverified.

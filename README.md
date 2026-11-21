# Install PocketFusion on your iPhone

**You need a Mac, your iPhone, a USB cable that carries data, and your own Apple Account.** These steps work for regular iPhones and the Duo. Allow time for two large downloads the first time.

## Build on a Mac

### 1. Install the tools on your Mac

1. Open the **Mac App Store**, search for **Xcode**, and install it. Open Xcode once and let it finish installing its components. Choose **iOS** if it asks which platform you need.
2. In Xcode, click **Xcode → Settings → Apple Accounts** (or **Accounts**). Click **+** or **Sign In** and add your Apple Account.
3. Install [Unity Hub](https://unity.com/download) and sign in. If it asks for a license, choose **Unity Personal** if eligible.
4. Open the [Unity download archive](https://unity.com/releases/editor/archive), find **2022.3.62f3**, and choose **Unity Hub** to install that version. **Check the box for iOS Build Support** before clicking Install.

### 2. Turn on Developer Mode on your iPhone

1. Unlock your iPhone and plug it into the Mac. If the Mac asks to allow the accessory, click **Allow**. On the iPhone, tap **Trust** when you see **Trust This Computer?**, then enter your iPhone passcode.
2. In Xcode, open **Window → Devices and Simulators** (or **Device Hub**) and select your iPhone. Wait for pairing to finish. This helps the Developer Mode setting appear.
3. On the **iPhone**, open **Settings → Privacy & Security**. Scroll down, tap **Developer Mode**, turn it **on**, then tap **Restart**.
4. After the iPhone restarts, **unlock it and tap Turn On** to confirm. Enter your passcode if asked. Leave the phone plugged in.

**Can’t find Developer Mode?** Complete step 2 with the phone unlocked, then close and reopen Settings on the phone.

### 3. Get the game files

1. [Download the PocketFusion ZIP](https://github.com/nickgray999/PocketFusion/archive/refs/heads/main.zip).
2. In **Finder → Downloads**, double-click the ZIP if it hasn’t already opened. Find the extracted **PocketFusion-main** folder.
3. Open **Terminal** on the Mac (press **Command + Space**, type **Terminal**, press **Return**). Type `cd` followed by **one space**, drag the extracted folder into Terminal, then press **Return**.
4. Paste this one line into Terminal and press **Return**:

```sh
bash prepare-game.sh
```

When you see **Ready for Unity Hub**, the game files are ready. Keep the extracted folder for future installs.

### 4. Open the game in Unity

1. In **Unity Hub → Projects**, click **Add → Add project from disk**. Inside **PocketFusion-main**, select the **game** folder. Click the project to open it and wait for Unity to finish loading.
2. In the Unity menu, choose **File → Build Settings**, select **iOS**, and click **Switch Platform** if available.
3. Choose **OpenFusion → iPhone → Export Xcode project**. Use the default output folder. When it finishes, open **game → Builds → iOS** in Finder and double-click **Unity-iPhone.xcodeproj**.

### 5. Put PocketFusion on your phone

1. In Xcode’s left sidebar, click the blue **Unity-iPhone** project. Under **TARGETS**, click **Unity-iPhone**, then **Signing & Capabilities**.
2. Check **Automatically manage signing**. Under **Team**, pick your name followed by **(Personal Team)**. For **Bundle Identifier**, use something unique such as `com.yourgithubusername.pocketfusion`, replacing `yourgithubusername` with your own username.
3. At the top of Xcode, choose **your iPhone’s name** as the destination. Click the **▶ Run** button. Wait for PocketFusion to open.
4. **If the phone says “Untrusted Developer,”** go to **Settings → General → VPN & Device Management**. Under **Developer App**, tap your Apple Account, then **Trust** or **Allow & Restart**. Finish the prompts, unlock the phone, and tap **PocketFusion** on the Home Screen.

### 6. Play

Tap **FusionFall Retrobution → Connect**, then sign in with your **Retrobution game account**. If the server is missing, tap **+ → Endpoint Server**, enter `api.ffretrobution.net` as the API host, and tap **Add**. On a Duo, hold the phone half-open with the hinge horizontal to put the game above the controls.

**If PocketFusion stops opening after a week:** Free Apple signing lasts seven days. Plug your phone back into the Mac, reopen the same **Unity-iPhone.xcodeproj**, and click **▶ Run** again. Keep the same team and bundle identifier so you can update in place.

## Credits

PocketFusion adapts **Rodrigo Sigrist and contributors’ [OpenFusion:Pocket](https://github.com/rsigristc/OpenFusion-Pocket)** for regular iPhones and the foldable Duo. This repository distributes the iPhone source changes as a patch against upstream commit `9f202deb07897bbb880d5824323e9aee0264ac49`. See [credits](CREDITS.md), [license](LICENSE) and [third-party notices](NOTICE). FusionFall belongs to its respective rights holders. Retrobution operates independently.

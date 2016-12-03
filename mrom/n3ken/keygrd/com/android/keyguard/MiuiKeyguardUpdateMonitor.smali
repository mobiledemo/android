.class public Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "MiuiKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$WallpaperChangeCallback;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallbackImpl;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;,
        Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$Injector;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.home.launcher.settings"

.field public static final BLE_UNLOCK_SUCCEED_ACTION:Ljava/lang/String; = "miui_keyguard_ble_unlock_succeed"

.field private static final DEBUG:Z = false

.field protected static final DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field public static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final METHOD_GET_LOCK_WALLPAPER_INFO:Ljava/lang/String; = "getLockWallpaperInfo"

.field private static final METHOD_RESULT_JSON:Ljava/lang/String; = "result_json"

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CARRIER_INFO_UPDATE_SUB:I = 0x137

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field protected static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field protected static final MSG_USER_CHANGED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "MiuiKeyguardUpdateMonitor"


# instance fields
.field private mBLEUnlockState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;

.field private mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

.field private mCardObserver:Landroid/database/ContentObserver;

.field private mClockVisible:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mFingerId:I

.field private mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

.field private mFingerprintIdentificationFailTime:I

.field private final mFingerprintStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

.field private mHandler:Landroid/os/Handler;

.field private mHaveBankCard:Z

.field private mHaveTranksCard:Z

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLockScreenMagazine:Z

.field private mLightKeyguardWallpaperBottom:Z

.field private mLightKeyguardWallpaperTop:Z

.field private mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

.field private mLowBatteryThreshold:I

.field private mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

.field private mMusicPlaying:Z

.field private final mMusicStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

.field private mPhoneState:I

.field private mRegisterRemoteControllerSucceed:Z

.field private mRingMode:I

.field private mShowBLEUnlockAnimation:Z

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipSimStateChange:Z

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;

.field private mWallpaperChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$WallpaperChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperCustomInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

.field private mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSkipSimStateChange:Z

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mShowBLEUnlockAnimation:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperTop:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperBottom:Z

    .line 143
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    .line 495
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    .line 509
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$7;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mCardObserver:Landroid/database/ContentObserver;

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicStateChangeListeners:Ljava/util/List;

    .line 1212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintStateCallbacks:Ljava/util/Set;

    .line 1215
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;->WAITING_FOR_INPUT:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    .line 1217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 1245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    .line 255
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 257
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 300
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$2;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    .line 323
    .local v12, "provisioned":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v12, v0, :cond_0

    .line 324
    iput-boolean v12, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 325
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v12    # "provisioned":Z
    :cond_0
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .line 334
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 336
    .local v11, "numPhones":I
    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    .line 337
    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    .line 338
    new-array v0, v11, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 339
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v11, :cond_3

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v10

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v1, v0, v10

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v10

    .line 339
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 295
    .end local v10    # "i":I
    .end local v11    # "numPhones":I
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 321
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 346
    .restart local v10    # "i":I
    .restart local v11    # "numPhones":I
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 412
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_6

    .line 413
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v13

    .line 414
    .local v13, "simState":I
    const/4 v0, 0x2

    if-ne v0, v13, :cond_5

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v10

    .line 412
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 416
    :cond_5
    const/4 v0, 0x3

    if-ne v0, v13, :cond_4

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v10

    goto :goto_4

    .line 421
    .end local v13    # "simState":I
    :cond_6
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->setFailedAttempts(I)V

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_level_low_customized"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_wallpaper_provider_authority"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 450
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->processKeyguardWallpaper()V

    .line 451
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->queryWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 452
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    .local v7, "wallpaperChangeIntentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.miui.keyguard.setwallpaper"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    new-instance v5, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 482
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_7

    .line 483
    new-instance v0, Lcom/android/keyguard/PhoneSignalController;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/PhoneSignalController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    .line 486
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->registerRemoteController()V

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mCardObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_bank_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mCardObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_trans_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mCardObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 493
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->processKeyguardWallpaper()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;)Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->queryWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperCustomInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHaveBankCard:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHaveTranksCard:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;)Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->ignoreFingerprintIdentificationResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    return v0
.end method

.method static synthetic access$2308(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerId:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Lcom/android/keyguard/FingerprintHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 833
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "plmn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 841
    .end local v0    # "plmn":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 838
    .restart local v0    # "plmn":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 841
    .end local v0    # "plmn":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 857
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "spn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 863
    .end local v0    # "spn":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .param p1, "batteryStatus"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 733
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v2, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 735
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .line 736
    if-eqz v0, :cond_0

    .line 737
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private handleCarrierInfoUpdate(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 750
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v1, v2, v3, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 749
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 758
    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 2

    .prologue
    .line 785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method

.method private handleSimStateChange(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;)V
    .locals 4
    .param p1, "simArgs"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;

    .prologue
    .line 764
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSkipSimStateChange:Z

    if-eqz v3, :cond_1

    .line 781
    :cond_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 769
    .local v1, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    iget v2, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 771
    .local v2, "subscription":I
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v2

    if-eq v1, v3, :cond_0

    .line 772
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v3, v2

    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 774
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 773
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v3, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1
.end method

.method private handleTimeUpdate()V
    .locals 2

    .prologue
    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_0
    return-void
.end method

.method private ignoreFingerprintIdentificationResult()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1450
    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MiuiSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1454
    .local v0, "isLockByFindDevice":Z
    :goto_0
    new-instance v3, Landroid/security/MiuiLockPatternUtils;

    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1455
    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardLockoutAttemptDeadline(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v2, v4

    .line 1456
    .local v2, "passwordLockout":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isSimLocked()Z

    move-result v1

    .line 1457
    .local v1, "isSimLocked":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 1458
    :cond_0
    const-string v5, "miui_keyguard_fingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoreFingerprintIdentificationResult: isSimLocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";isLockByFindDevice="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";passwordLockout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1464
    :cond_1
    return v5

    .end local v0    # "isLockByFindDevice":Z
    .end local v1    # "isSimLocked":Z
    .end local v2    # "passwordLockout":Z
    .end local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    move v0, v5

    .line 1450
    goto :goto_0

    .restart local v0    # "isLockByFindDevice":Z
    .restart local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    move v2, v5

    .line 1455
    goto :goto_1
.end method

.method private static isBatteryLow(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .param p0, "status"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 825
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p0, "old"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 801
    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 802
    .local v0, "nowPluggedIn":Z
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 803
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 808
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 821
    :cond_0
    :goto_1
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    move v1, v4

    .line 803
    goto :goto_0

    .line 813
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 818
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isBatteryLow(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_4
    move v3, v4

    .line 821
    goto :goto_1
.end method

.method private static isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .param p0, "status"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v0, 0x1

    .line 795
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processKeyguardWallpaper()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 637
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 638
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 639
    .local v4, "wallpaperBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 640
    .local v2, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 642
    .local v1, "originalHeight":I
    div-int/lit8 v6, v1, 0x5

    invoke-static {v4, v8, v8, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 643
    .local v3, "top":Landroid/graphics/Bitmap;
    mul-int/lit8 v6, v1, 0x9

    div-int/lit8 v6, v6, 0xa

    div-int/lit8 v9, v1, 0xa

    invoke-static {v4, v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 646
    .local v0, "bottom":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 647
    invoke-static {v3, v10}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperTop:Z

    .line 649
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 652
    :cond_0
    if-eqz v0, :cond_1

    .line 653
    invoke-static {v0, v10}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    iput-boolean v7, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperBottom:Z

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 658
    .end local v0    # "bottom":Landroid/graphics/Bitmap;
    .end local v1    # "originalHeight":I
    .end local v2    # "originalWidth":I
    .end local v3    # "top":Landroid/graphics/Bitmap;
    .end local v4    # "wallpaperBmp":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .restart local v0    # "bottom":Landroid/graphics/Bitmap;
    .restart local v1    # "originalHeight":I
    .restart local v2    # "originalWidth":I
    .restart local v3    # "top":Landroid/graphics/Bitmap;
    .restart local v4    # "wallpaperBmp":Landroid/graphics/Bitmap;
    :cond_2
    move v6, v8

    .line 647
    goto :goto_0

    :cond_3
    move v7, v8

    .line 653
    goto :goto_1
.end method

.method private queryWallPaperCustomInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 10

    .prologue
    .line 554
    const/4 v5, 0x0

    .line 555
    .local v5, "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 556
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 558
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v6, "content://com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/MiuiKeyguardUtils;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "getLockscreenBannerInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 563
    :goto_0
    const/4 v0, 0x0

    .line 564
    .local v0, "bannerInfo":Lcom/android/keyguard/wallpaper/mode/BannerInfo;
    if-eqz v1, :cond_0

    .line 565
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 566
    .local v4, "gson":Lcom/google/gson/Gson;
    const-string v6, "MiuiKeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bundlestring="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "result_json"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v6, "result_json"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/keyguard/wallpaper/mode/BannerInfo;

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bannerInfo":Lcom/android/keyguard/wallpaper/mode/BannerInfo;
    check-cast v0, Lcom/android/keyguard/wallpaper/mode/BannerInfo;

    .line 569
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "bannerInfo":Lcom/android/keyguard/wallpaper/mode/BannerInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 570
    new-instance v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .end local v5    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    invoke-direct {v5}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;-><init>()V

    .line 571
    .restart local v5    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    iget-object v6, v0, Lcom/android/keyguard/wallpaper/mode/BannerInfo;->bannerTitle:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->title:Ljava/lang/String;

    .line 572
    iget-object v6, v0, Lcom/android/keyguard/wallpaper/mode/BannerInfo;->bannerDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    .line 573
    iget-object v6, v0, Lcom/android/keyguard/wallpaper/mode/BannerInfo;->btnText:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->btnText:Ljava/lang/String;

    .line 575
    :cond_1
    if-nez v5, :cond_2

    .line 576
    new-instance v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .end local v5    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    invoke-direct {v5}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;-><init>()V

    .line 578
    .restart local v5    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    :cond_2
    iget-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    iput-boolean v6, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->isLockScreenMagazine:Z

    .line 579
    return-object v5

    .line 560
    .end local v0    # "bannerInfo":Lcom/android/keyguard/wallpaper/mode/BannerInfo;
    :catch_0
    move-exception v3

    .line 561
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "MiuiKeyguardUpdateMonitor"

    const-string v7, "call error  uri =com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 9

    .prologue
    .line 529
    iget-boolean v5, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    if-nez v5, :cond_0

    .line 530
    new-instance v4, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    invoke-direct {v4}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;-><init>()V

    .line 550
    :goto_0
    return-object v4

    .line 532
    :cond_0
    const/4 v4, 0x0

    .line 533
    .local v4, "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 534
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 536
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "content://com.miui.home.launcher.settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/MiuiKeyguardUtils;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getLockWallpaperInfo"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :goto_1
    if-eqz v0, :cond_1

    .line 542
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 543
    .local v3, "gson":Lcom/google/gson/Gson;
    const-string v5, "MiuiKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundlestring="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result_json"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v5, "result_json"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    check-cast v4, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 546
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    :cond_1
    if-nez v4, :cond_2

    .line 547
    new-instance v4, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .end local v4    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    invoke-direct {v4}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;-><init>()V

    .line 549
    .restart local v4    # "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    :cond_2
    iget-boolean v5, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    iput-boolean v5, v4, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->isLockScreenMagazine:Z

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MiuiKeyguardUpdateMonitor"

    const-string v6, "call error  uri =com.miui.home.launcher.settings"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public OnDoubleClickHome()V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintHelper;->OnDoubleClickHome()V

    .line 1259
    :cond_0
    return-void
.end method

.method public clearFailedAttempts()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1110
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1111
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1116
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1188
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1189
    return-void
.end method

.method public getBLEUnlockState()Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBLEUnlockState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getFingerId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerId:I

    return v0
.end method

.method public getFingerprintIdentificationFailTime()I
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    return v0
.end method

.method public getFingerprintIdentificationState()Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    return-object v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mIsLockScreenMagazine:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperCustomInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    goto :goto_0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 2

    .prologue
    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onDevicePolicyManagerStateChanged()V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_0
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onDeviceProvisioned()V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 688
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 690
    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 698
    sget-object v1, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    .line 705
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 706
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 702
    :cond_2
    sget-object v1, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 708
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 712
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mRingMode:I

    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method protected handleUserChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onUserChanged(I)V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->notifyMusicStateChange(Z)V

    .line 679
    return-void
.end method

.method public initMusicState()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCompatibilityHelper;->isMusicPlaying(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    .line 629
    return-void
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLightWallpaperBottom()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperBottom:Z

    return v0
.end method

.method public isLightWallpaperTop()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mLightKeyguardWallpaperTop:Z

    return v0
.end method

.method public isMusicActive()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 2

    .prologue
    .line 1144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1145
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isSimLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const/4 v1, 0x1

    .line 1149
    :goto_1
    return v1

    .line 1144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1149
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSimLocked(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isSimSecured(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimMissing()Z
    .locals 2

    .prologue
    .line 1172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1173
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isSimMissing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    const/4 v1, 0x1

    .line 1177
    :goto_1
    return v1

    .line 1172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSimMissing(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimSecured()Z
    .locals 2

    .prologue
    .line 1158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1159
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isSimSecured(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    const/4 v1, 0x1

    .line 1163
    :goto_1
    return v1

    .line 1158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSimSecured(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDelayUnlockForMiPay()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHaveBankCard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHaveTranksCard:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyMusicStateChange(Z)V
    .locals 3
    .param p1, "musicPlaying"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    .line 606
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicStateChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;

    .line 607
    .local v1, "listener":Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;
    invoke-interface {v1, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;->musicStateChange(Z)V

    goto :goto_0

    .line 609
    .end local v1    # "listener":Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;
    :cond_0
    return-void
.end method

.method public refreshWallpaperCustomInfo()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->queryWallPaperCustomInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperCustomInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 584
    return-void
.end method

.method public registerFingerprintStateCallback(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    invoke-interface {p1, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;->onFingerprintStateChanged(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public registerInfoCallback(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;

    .prologue
    .line 993
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    .line 994
    .local v1, "subscription":I
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    iget v4, v4, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 999
    invoke-interface {p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1000
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v2}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1001
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v2}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 1002
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {p1, v2, v3, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-interface {p1, v2, v3}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1009
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 1014
    :cond_2
    return-void
.end method

.method public registerMusicStateChangeListener(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v0, "MiuiKeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMusicStateChangeListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicPlaying:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;->musicStateChange(Z)V

    .line 617
    return-void
.end method

.method public registerPhoneSignalChangeCallback(Lcom/android/keyguard/PhoneSignalController$PhoneSignalChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/PhoneSignalController$PhoneSignalChangeCallback;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PhoneSignalController;->registerPhoneSignalChangeCallback(Lcom/android/keyguard/PhoneSignalController$PhoneSignalChangeCallback;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public registerRemoteController()V
    .locals 3

    .prologue
    .line 592
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mRegisterRemoteControllerSucceed:Z

    if-eqz v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/keyguard/KeyguardCompatibilityHelper;->registerRemoteController(Landroid/content/Context;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    .line 597
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mRegisterRemoteControllerSucceed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mRegisterRemoteControllerSucceed:Z

    goto :goto_0
.end method

.method public registerSimStateCallback(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1029
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    invoke-interface {p1, v2, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    .line 1037
    .local v1, "subscription":I
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1043
    .end local v1    # "subscription":I
    :cond_1
    return-void
.end method

.method public registerWallpaperChangeCallback(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$WallpaperChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$WallpaperChangeCallback;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$WallpaperChangeCallback;->onWallpaperChange(Z)V

    .line 1021
    :cond_0
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "observer"    # Ljava/lang/Object;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 875
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mPhoneSignalController:Lcom/android/keyguard/PhoneSignalController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PhoneSignalController;->removeCallback(Ljava/lang/Object;)V

    .line 879
    :cond_0
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1052
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mClockVisible:Z

    .line 1053
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1054
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 4

    .prologue
    .line 1119
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1120
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1125
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1137
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, p1

    .line 1062
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$SimArgs;)V

    .line 1063
    return-void
.end method

.method public resetFingerprintIdentificationFailTime()V
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintIdentificationFailTime:I

    .line 1243
    return-void
.end method

.method public setBLEUnlockState(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBLEUnlockState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;

    .line 245
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BLEUnlockState;

    if-ne p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui_keyguard_ble_unlock_succeed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setFailedAttempts(I)V
    .locals 0
    .param p1, "failedAttempts"    # I

    .prologue
    .line 1105
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1106
    return-void
.end method

.method public setFingerprintIdentificationState(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFpiState:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintIdentificationState;

    .line 1221
    return-void
.end method

.method public setShowBLEUnlockAnimation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1196
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mShowBLEUnlockAnimation:Z

    .line 1197
    return-void
.end method

.method public setSkipSimStateChange(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mSkipSimStateChange:Z

    .line 694
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isPluggedIn(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->isBatteryLow(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBLEUnlockAnimation()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mShowBLEUnlockAnimation:Z

    return v0
.end method

.method public startFingerprintIdentify()V
    .locals 4

    .prologue
    .line 1264
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "gemini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1265
    const-string v2, "miui_keyguard_fingerprint"

    const-string v3, "stop fingerprint identify in startFingerprintIdentify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->stopFingerprintIdentify()V

    .line 1269
    :cond_0
    new-instance v2, Lcom/android/keyguard/FingerprintHelper;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 1270
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v2}, Lcom/android/keyguard/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    .line 1271
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    .line 1443
    .local v0, "callback":Lcom/android/keyguard/FingerprintIdentifyCallback;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1447
    :cond_1
    :goto_0
    return-void

    .line 1446
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/keyguard/FingerprintHelper;->identify(Lcom/android/keyguard/FingerprintIdentifyCallback;Ljava/util/List;Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;)V

    goto :goto_0
.end method

.method public stopFingerprintIdentify()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintHelper;->cancelIdentify()V

    .line 1237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 1239
    :cond_0
    return-void
.end method

.method public unregisterFingerprintStateCallback(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$FingerprintStateCallback;

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mFingerprintStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1232
    return-void
.end method

.method public unregisterMusicStateChangeListener(Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/keyguard/MiuiKeyguardUpdateMonitor$MusicStateChangeListener;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardUpdateMonitor;->mMusicStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 621
    return-void
.end method

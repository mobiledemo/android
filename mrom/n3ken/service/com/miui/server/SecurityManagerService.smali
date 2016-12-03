.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$PackageSetting;,
        Lcom/miui/server/SecurityManagerService$SettingsObserver;,
        Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;,
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;,
        Lcom/miui/server/SecurityManagerService$AppItem;,
        Lcom/miui/server/SecurityManagerService$UserState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final CLASS_NAMES:Ljava/lang/String; = "classnames"

.field private static final DEBUG:Z = false

.field private static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final LOCK_TIME_OUT:J = 0xea60L

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final REMVOE_AC_PACKAGE:I = 0x4

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final SYS_APP_CRACKED:I = 0x1

.field private static final SYS_APP_NOT_CRACKED:I = 0x0

.field private static final SYS_APP_UNINIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SecurityManagerService"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"

.field private static final WRITE_BOOTTIME_DELAY:I = 0x3e8

.field private static final WRITE_BOOT_TIME:I = 0x3

.field private static final WRITE_SETTINGS:I = 0x1

.field private static final WRITE_SETTINGS_DELAY:I = 0x3e8

.field private static final WRITE_WAKE_UP_TIME:I = 0x2


# instance fields
.field private mAccessController:Lcom/miui/server/AccessController;

.field private mAom:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDialogFlag:Z

.field private mFingerprintNotify:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

.field private mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

.field private mSettingsFile:Lcom/android/internal/os/AtomicFile;

.field private mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

.field private mSysAppCracked:I

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserStateLock:Ljava/lang/Object;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/server/SecurityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeTime:J

.field private mWakeUpFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeUpTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyCore"    # Z

    .prologue
    const/4 v7, 0x0

    .line 298
    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    .line 118
    iput-boolean v7, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    .line 128
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 138
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    .line 171
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    .line 299
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 300
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 301
    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 302
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "system"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v2, "systemDir":Ljava/io/File;
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "miui-packages.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    .line 305
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "SecurityWriteHandlerThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "securityWriteHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 307
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 308
    .local v0, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v0}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    .line 309
    new-instance v4, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 310
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 311
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    .line 313
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    .line 315
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 316
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "miui-wakeuptime.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    .line 317
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    .line 320
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V

    .line 321
    new-instance v4, Lcom/miui/server/AccessController;

    invoke-direct {v4, p1, v0}, Lcom/miui/server/AccessController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 323
    new-instance v4, Lcom/miui/server/SecurityManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/server/SecurityManagerService$SettingsObserver;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

    .line 324
    monitor-enter p0

    .line 325
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    .line 326
    .local v3, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_2

    :cond_0
    const-string v4, "hennessy"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "kenzo"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ido"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "aqua"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    .line 336
    :cond_2
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    .line 337
    return-void

    .line 327
    .end local v3    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->removePackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/server/SecurityManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/server/SecurityManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method private checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x1

    .line 676
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v6

    .line 678
    .local v6, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v8, v6, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v8, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v3

    .line 679
    .local v3, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v8, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    if-nez v8, :cond_1

    move v2, v7

    .line 711
    :cond_0
    :goto_0
    return v2

    .line 683
    :cond_1
    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    .line 685
    .local v1, "lockMode":I
    iget-object v8, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 686
    .local v2, "pass":Z
    if-eqz v2, :cond_3

    const/4 v8, 0x2

    if-ne v1, v8, :cond_3

    .line 687
    iget-object v8, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 688
    .local v0, "lastTime":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 690
    .local v4, "realtime":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 691
    const/4 v2, 0x0

    .line 694
    .end local v4    # "realtime":J
    :cond_2
    if-eqz v2, :cond_3

    .line 695
    iget-object v8, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .end local v0    # "lastTime":Ljava/lang/Long;
    :cond_3
    if-nez v2, :cond_4

    if-ne v1, v7, :cond_4

    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 702
    const/4 v2, 0x1

    .line 705
    :cond_4
    if-nez v2, :cond_5

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v7, p1}, Lcom/miui/server/AccessController;->skipLockScreen(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 706
    const/4 v2, 0x1

    .line 708
    :cond_5
    if-nez v2, :cond_0

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v7, p1, p2}, Lcom/miui/server/AccessController;->skipIntentLocked(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 709
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "validSignatures"    # [Landroid/content/pm/Signature;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "checkEnabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 439
    iget-object v8, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 441
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 442
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p3, :cond_0

    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_0

    .line 443
    const-string v8, "SecurityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "System error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "disabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v7

    .line 446
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 447
    .local v6, "sourceDir":Ljava/lang/String;
    invoke-static {v6}, Lmiui/security/SecurityManagerCompat;->createPackageParser(Ljava/lang/String;)Landroid/content/pm/PackageParser;

    move-result-object v4

    .line 448
    .local v4, "pp":Landroid/content/pm/PackageParser;
    invoke-static {v4, v6}, Lmiui/security/SecurityManagerCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 449
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_2

    .line 450
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    .line 451
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 452
    .local v5, "signatures":[Landroid/content/pm/Signature;
    invoke-static {p1, v5}, Lcom/miui/server/SecurityManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v8

    if-nez v8, :cond_1

    .line 454
    const/4 v7, 0x1

    goto :goto_0

    .line 456
    :cond_1
    const-string v8, "SecurityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signature not match!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "pp":Landroid/content/pm/PackageParser;
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    .end local v6    # "sourceDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "SecurityManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "pp":Landroid/content/pm/PackageParser;
    .restart local v6    # "sourceDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "SecurityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 588
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, p2, v1}, Lmiui/security/SecurityManagerCompat;->checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 589
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, "state":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p1, p2, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private checkPermission()V
    .locals 4

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1143
    .local v0, "permission":I
    if-nez v0, :cond_0

    return-void

    .line 1144
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionByUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1329
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1330
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no permission to read file for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1332
    :cond_0
    return-void
.end method

.method private checkSysAppCrack()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v1, "appsTobeChecked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$AppItem;>;"
    new-instance v5, Lcom/miui/server/SecurityManagerService$AppItem;

    const-string v6, "com.miui.home"

    const-string v7, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/server/SecurityManagerService$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z


    .line 551
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v5, :cond_0

    .line 553
    new-instance v5, Lcom/miui/server/SecurityManagerService$AppItem;

    const-string v6, "com.xiaomi.gamecenter"

    const-string v7, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/server/SecurityManagerService$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v5, Lcom/miui/server/SecurityManagerService$AppItem;

    const-string v6, "com.miui.player"

    const-string v7, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/server/SecurityManagerService$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v5, Lcom/miui/server/SecurityManagerService$AppItem;

    const-string v6, "com.android.browser"

    const-string v7, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/server/SecurityManagerService$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v5, Lcom/miui/server/SecurityManagerService$AppItem;

    const-string v6, "com.miui.video"

    const-string v7, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/server/SecurityManagerService$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    const/4 v3, 0x0

    .line 564
    .local v3, "ret":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$AppItem;

    .line 565
    .local v0, "appItem":Lcom/miui/server/SecurityManagerService$AppItem;
    const/4 v5, 0x1

    new-array v4, v5, [Landroid/content/pm/Signature;

    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, v0, Lcom/miui/server/SecurityManagerService$AppItem;->mSignature:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v8

    .line 568
    .local v4, "sigs":[Landroid/content/pm/Signature;
    iget-object v5, v0, Lcom/miui/server/SecurityManagerService$AppItem;->mPkg:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/miui/server/SecurityManagerService$AppItem;->mCheckEnable:Z

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/server/SecurityManagerService;->checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 569
    const-string v5, "SecurityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAppSignature failed at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/server/SecurityManagerService$AppItem;->mPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v3, 0x1

    .line 574
    .end local v0    # "appItem":Lcom/miui/server/SecurityManagerService$AppItem;
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    :cond_2
    return v3
.end method

.method private checkSystemSelfProtection(Z)V
    .locals 2
    .param p1, "onlyCore"    # Z

    .prologue
    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/miui/server/SecurityManagerService$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/server/SecurityManagerService$1;-><init>(Lcom/miui/server/SecurityManagerService;Z)V

    invoke-virtual {v0}, Lcom/miui/server/SecurityManagerService$1;->start()V

    goto :goto_0
.end method

.method private checkWakePathPermission()V
    .locals 5

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1339
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9

    const/4 v0, 0x0

    return v0
.end method

.method private enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "validSignatures"    # [Landroid/content/pm/Signature;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "checkEnabled"    # Z
    
    
    return-void
.end method

.method private enforcePlatformSignature([Landroid/content/pm/Signature;)V
    .locals 7
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 578
    new-instance v3, Landroid/content/pm/Signature;

    const-string v5, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v3, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 579
    .local v3, "platformSig":Landroid/content/pm/Signature;
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 580
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 581
    return-void

    .line 579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "System error: My heart is broken"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 391
    iget-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 394
    :cond_0
    iget-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return v0
.end method

.method private getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 405
    iget-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 408
    :cond_0
    iget-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return v0
.end method

.method private getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 398
    iget-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v0, :cond_0

    .line 399
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 401
    :cond_0
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return v0
.end method

.method private getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 723
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    .line 725
    .local v2, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_0
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 726
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :goto_0
    return v3

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p1, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1021
    .local v0, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .end local v0    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    invoke-direct {v0, p0, p2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1023
    .restart local v0    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_0
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 340
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 341
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    .line 342
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/miui/server/SecurityManagerService$UserState;

    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    .line 344
    .restart local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iput p1, v0, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 345
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    monitor-exit v2

    .line 349
    :cond_0
    return-object v0

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 359
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 360
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    monitor-exit v1

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 371
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    .line 373
    return-void
.end method

.method private initForKK()V
    .locals 3

    .prologue
    .line 597
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    .line 599
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 600
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 601
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    .line 602
    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    .line 604
    :cond_0
    return-void
.end method

.method private minWakeUpTime(J)V
    .locals 9
    .param p1, "nowtime"    # J

    .prologue
    .line 1168
    const-wide/16 v2, 0x0

    .line 1169
    .local v2, "min":J
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1170
    .local v0, "componentName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v4

    .line 1171
    .local v4, "tmp":J
    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 1172
    :cond_1
    move-wide v2, v4

    goto :goto_0

    .line 1175
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "tmp":J
    :cond_2
    iput-wide v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 1176
    return-void
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 1265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    monitor-exit p0

    return-void

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readPackagesSettings(Ljava/io/FileInputStream;)V
    .locals 12
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1055
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1056
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1058
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1059
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v10, :cond_0

    if-eq v0, v11, :cond_0

    .line 1060
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 1063
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, "tagName":Ljava/lang/String;
    const-string v8, "packages"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1065
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1067
    :cond_1
    if-ne v0, v10, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1068
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1069
    const-string v8, "package"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1070
    const-string v8, "name"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v3, p0, v1}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1072
    .local v3, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const/4 v5, 0x0

    .line 1073
    .local v5, "userHandle":I
    const-string v8, "u"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, "userHandleStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1075
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1077
    :cond_2
    const-string v8, "accessControl"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1078
    const-string v8, "childrenControl"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1080
    monitor-enter p0

    .line 1081
    :try_start_0
    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v7

    .line 1082
    .local v7, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v8, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v5    # "userHandle":I
    .end local v6    # "userHandleStr":Ljava/lang/String;
    .end local v7    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1087
    if-ne v0, v11, :cond_1

    .line 1089
    :cond_4
    return-void

    .line 1083
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .restart local v5    # "userHandle":I
    .restart local v6    # "userHandleStr":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private readSettings()V
    .locals 4

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    const/4 v1, 0x0

    .line 1040
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1041
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->readPackagesSettings(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    if-eqz v1, :cond_0

    .line 1047
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1042
    :catch_1
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string v3, "Error reading package settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    if-eqz v1, :cond_0

    .line 1047
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1048
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1045
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 1047
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1049
    :cond_2
    :goto_1
    throw v2

    .line 1048
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private readWakeUpTime()V
    .locals 4

    .prologue
    .line 1214
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1215
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    const/4 v1, 0x0

    .line 1220
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1221
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    if-eqz v1, :cond_0

    .line 1227
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1222
    :catch_1
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    if-eqz v1, :cond_0

    .line 1227
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1228
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1225
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 1227
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1229
    :cond_2
    :goto_1
    throw v2

    .line 1228
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .locals 11
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1235
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1236
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1238
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1239
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v8, :cond_0

    if-eq v1, v10, :cond_0

    .line 1240
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1242
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, "tagName":Ljava/lang/String;
    const-string v6, "classnames"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1244
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1246
    :cond_1
    if-ne v1, v8, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1247
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1248
    const-string v6, "classname"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1249
    const-string v6, "name"

    invoke-interface {v2, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "componentName":Ljava/lang/String;
    new-instance v6, Ljava/lang/Long;

    const-string v7, "time"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1251
    .local v4, "time":J
    invoke-direct {p0, v0, v4, v5}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1254
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1255
    if-ne v1, v10, :cond_1

    .line 1257
    :cond_3
    return-void
.end method

.method private removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 799
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1133
    monitor-enter p0

    .line 1134
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1135
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1137
    monitor-exit p0

    .line 1138
    return-void

    .line 1137
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleWriteSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1029
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setTimeBoot()V
    .locals 6

    .prologue
    .line 1179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 1180
    .local v0, "now_time":J
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v3

    .line 1181
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V

    .line 1182
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    .line 1184
    return-void

    .line 1182
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sucheduleWriteBootTime()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1156
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sucheduleWriteWakeUpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1151
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_enabled"

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    .line 378
    return-void

    :cond_0
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_convenient"

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    .line 388
    return-void

    :cond_0
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method private updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_mode"

    const/4 v2, 0x1

    iget v3, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    .line 383
    return-void
.end method

.method private writeSettings()V
    .locals 14

    .prologue
    .line 1092
    const/4 v1, 0x0

    .line 1094
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v10, "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :try_start_1
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1097
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1098
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1099
    .local v8, "state":Lcom/miui/server/SecurityManagerService$UserState;
    new-instance v9, Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    .line 1100
    .local v9, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget v11, v8, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iput v11, v9, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 1101
    iget-object v11, v9, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    new-instance v12, Ljava/util/HashMap;

    iget-object v13, v8, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1102
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    .end local v8    # "state":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v9    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    :try_start_2
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1106
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1107
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v5, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1108
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1109
    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1110
    const/4 v11, 0x0

    const-string v12, "packages"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1112
    .restart local v9    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v11, v9, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1113
    .local v6, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const/4 v11, 0x0

    const-string v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    const/4 v11, 0x0

    const-string v12, "accessControl"

    iget-boolean v13, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const/4 v11, 0x0

    const-string v12, "childrenControl"

    iget-boolean v13, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const/4 v11, 0x0

    const-string v12, "u"

    iget v13, v9, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const/4 v11, 0x0

    const-string v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1124
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v7    # "size":I
    .end local v9    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v10    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e1":Ljava/io/IOException;
    const-string v11, "SecurityManagerService"

    const-string v12, "Error writing package settings file"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    if-eqz v1, :cond_2

    .line 1127
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1130
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 1104
    .restart local v10    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .line 1121
    .restart local v2    # "i":I
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "size":I
    :cond_3
    const/4 v11, 0x0

    const-string v12, "packages"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1123
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method private writeWakeUpTime()V
    .locals 10

    .prologue
    .line 1187
    const/4 v2, 0x0

    .line 1189
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1190
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1191
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1192
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1193
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1194
    const/4 v5, 0x0

    const-string v6, "classnames"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1196
    .local v0, "componentName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1198
    const/4 v5, 0x0

    const-string v6, "classname"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1199
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1200
    const/4 v5, 0x0

    const-string v6, "time"

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1201
    const/4 v5, 0x0

    const-string v6, "classname"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1206
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e1":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 1208
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1211
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 1203
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "classnames"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1204
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1205
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 858
    if-nez p1, :cond_0

    .line 859
    const/4 v14, 0x0

    .line 943
    :goto_0
    return v14

    .line 862
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 863
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 864
    const/4 v14, 0x0

    goto :goto_0

    .line 867
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 869
    const/4 v14, 0x0

    goto :goto_0

    .line 872
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 873
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 874
    .local v15, "userId":I
    monitor-enter p0

    .line 875
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v16

    .line 876
    .local v16, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v4

    .line 878
    .local v4, "enabled":Z
    if-nez v4, :cond_3

    .line 879
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 944
    .end local v4    # "enabled":Z
    .end local v16    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 881
    .restart local v4    # "enabled":Z
    .restart local v16    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8, v15}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v9

    .line 882
    .local v9, "packageUid":I
    if-eq v2, v9, :cond_4

    .line 883
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 886
    :cond_4
    const/4 v14, 0x1

    .line 887
    .local v14, "result":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v6

    .line 889
    .local v6, "lockMode":I
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 890
    .local v7, "oldResumePackage":Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v8, v0, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 891
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 892
    .local v10, "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_5

    .line 893
    if-eqz v7, :cond_5

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 894
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v11

    .line 898
    .local v11, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v0, v11, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 899
    if-nez v6, :cond_6

    .line 900
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 902
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    .line 904
    :cond_7
    or-int/lit8 v14, v14, 0x2

    .line 906
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 907
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    .line 908
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 909
    .local v5, "lastTime":Ljava/lang/Long;
    if-eqz v5, :cond_8

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 911
    .local v12, "realtime":J
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v18, v12, v18

    const-wide/32 v20, 0xea60

    cmp-long v17, v18, v20

    if-gez v17, :cond_8

    .line 912
    or-int/lit8 v14, v14, 0x4

    .line 913
    monitor-exit p0

    goto/16 :goto_0

    .line 916
    .end local v12    # "realtime":J
    :cond_8
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 927
    .end local v5    # "lastTime":Ljava/lang/Long;
    :cond_9
    if-nez v6, :cond_a

    .line 928
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 930
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 931
    or-int/lit8 v14, v14, 0x8

    .line 932
    monitor-exit p0

    goto/16 :goto_0

    .line 918
    :cond_b
    or-int/lit8 v14, v14, 0x4

    .line 919
    if-nez v6, :cond_c

    .line 920
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 921
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 923
    :cond_c
    monitor-exit p0

    goto/16 :goto_0

    .line 935
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v17

    if-gtz v17, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/miui/server/AccessController;->skipLockScreen(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Lcom/miui/server/AccessController;->skipIntentLocked(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 940
    :cond_f
    or-int/lit8 v14, v14, 0x4

    .line 943
    :cond_10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 636
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 637
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    .line 638
    .local v2, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    .line 639
    .local v1, "lockMode":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 640
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_0
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 643
    monitor-exit p0

    .line 644
    return-void

    .line 643
    .end local v1    # "lockMode":I
    .end local v2    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 655
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 656
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 657
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    .line 663
    monitor-enter p0

    .line 664
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAccessControlPattern(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 815
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    .line 816
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/AccessController;->checkAccessControlPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 2
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1393
    const/4 v0, 0x1

    .line 1404
    :cond_0
    :goto_0
    return v0

    .line 1397
    :cond_1
    monitor-enter p0

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v1, p2, p3}, Lcom/miui/server/AccessController;->skipIntentLocked(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 1399
    .local v0, "ret":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    if-nez v0, :cond_0

    .line 1402
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lmiui/security/WakePathChecker;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 1399
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 843
    if-nez p1, :cond_0

    .line 854
    :goto_0
    return-void

    .line 846
    :cond_0
    monitor-enter p0

    .line 847
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 848
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 851
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 853
    monitor-exit p0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppPermissionControlOpen(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1409
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return v1

    .line 1412
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1413
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-eqz v0, :cond_0

    .line 1414
    # getter for: Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService$UserState;->access$1800(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    goto :goto_0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 717
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 718
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 950
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 952
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    .line 953
    .local v3, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v4, v3, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v4, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    .line 954
    .local v2, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v4, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    .line 956
    .end local v2    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v3    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    :goto_0
    return v4

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_0

    .line 958
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 1432
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 614
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysAppCracked()I
    .locals 1

    .prologue
    .line 1437
    iget v0, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return v0
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1380
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/WakePathChecker;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1443
    const-string v0, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support permssion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/PackageManagerServicePermissionProxy;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1447
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3e8

    .line 984
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 985
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 986
    .local v1, "callingUid":I
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, p1, v5}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v4

    .line 987
    .local v4, "packageUid":I
    if-eq v1, v8, :cond_1

    if-eq v4, v1, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, v5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 991
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 995
    if-eq v1, v8, :cond_2

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 996
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "grantRuntimePermission Permission DENIED"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 999
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1001
    .local v2, "identity":J
    :try_start_0
    invoke-static {p1, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermission(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public haveAccessControlPattern(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 821
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 822
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPattern(I)Z

    move-result v0

    return v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 608
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 829
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v2

    .line 830
    .local v2, "taskIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 831
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 832
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 833
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 834
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/miui/server/AccessController;->skipIntentLocked(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    .line 837
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public pushWakePathConfirmDialogWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1359
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->pushWakePathConfirmDialogWhiteList(Ljava/util/List;)V

    .line 1360
    return-void
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 2
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1345
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lmiui/security/WakePathChecker;->pushWakePathRuleInfos(ILjava/util/List;I)V

    .line 1346
    return-void
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1350
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1352
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 1353
    return-void
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1274
    const/16 v4, 0x3e8

    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1275
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1277
    .local v2, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1279
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1287
    const/4 v4, 0x1

    .line 1291
    if-eqz v3, :cond_1

    .line 1293
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v2, v3

    .line 1299
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_2
    return v4

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1294
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 1295
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1288
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 1289
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1291
    if-eqz v2, :cond_2

    .line 1293
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1299
    :cond_2
    :goto_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1294
    :catch_3
    move-exception v0

    .line 1295
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1291
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_3

    .line 1293
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1296
    :cond_3
    :goto_6
    throw v4

    .line 1294
    :catch_4
    move-exception v0

    .line 1295
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1291
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1288
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1304
    const/16 v5, 0x3e8

    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1305
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1307
    .local v2, "raf":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 1308
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1310
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1315
    if-eqz v3, :cond_2

    .line 1317
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 1324
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-object v4

    .line 1318
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1320
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1312
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1313
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1315
    if-eqz v2, :cond_0

    .line 1317
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1318
    :catch_2
    move-exception v0

    .line 1319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1315
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 1317
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1320
    :cond_1
    :goto_3
    throw v5

    .line 1318
    :catch_3
    move-exception v0

    .line 1319
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1315
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1312
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1387
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 1388
    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 649
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 650
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 651
    return-void
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 749
    const/16 v17, 0x0

    .line 750
    .local v17, "topActivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 751
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v17

    .line 757
    :cond_0
    monitor-enter p0

    .line 758
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 759
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 760
    .local v16, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/server/SecurityManagerService$UserState;

    .line 762
    .local v18, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    .line 760
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 764
    .end local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_1
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v11

    .line 765
    .local v11, "currentUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v18

    .line 766
    .restart local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v13

    .line 767
    .local v13, "enabled":Z
    if-nez v13, :cond_2

    .line 768
    monitor-exit p0

    .line 794
    .end local v11    # "currentUserId":I
    .end local v13    # "enabled":Z
    .end local v14    # "i":I
    .end local v16    # "size":I
    :goto_1
    return-void

    .line 770
    .restart local v11    # "currentUserId":I
    .restart local v13    # "enabled":Z
    .restart local v14    # "i":I
    .restart local v16    # "size":I
    :cond_2
    if-eqz v17, :cond_3

    .line 771
    const-string v3, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 772
    .local v15, "p":Ljava/lang/String;
    const-string v3, "token"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 773
    .local v5, "token":Landroid/os/IBinder;
    const-string v3, "userId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 774
    .local v9, "activityUserId":Ljava/lang/Integer;
    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 775
    .local v10, "checkAccessControlPass":Z
    if-nez v10, :cond_4

    .line 777
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v15, v3, v4, v6, v8}, Lmiui/security/SecurityManager;->getCheckAccessIntent(Ljava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v7

    .line 778
    .local v7, "intent":Landroid/content/Intent;
    const-string v3, "miui.KEYGUARD_LOCKED"

    const/4 v4, 0x1

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v3 .. v8}, Lmiui/security/SecurityManagerCompat;->startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "activityUserId":Ljava/lang/Integer;
    .end local v10    # "checkAccessControlPass":Z
    .end local v11    # "currentUserId":I
    .end local v13    # "enabled":Z
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/lang/String;
    .end local v16    # "size":I
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    .end local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 780
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v9    # "activityUserId":Ljava/lang/Integer;
    .restart local v10    # "checkAccessControlPass":Z
    .restart local v11    # "currentUserId":I
    .restart local v13    # "enabled":Z
    .restart local v14    # "i":I
    .restart local v15    # "p":Ljava/lang/String;
    .restart local v16    # "size":I
    .restart local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catch_0
    move-exception v12

    .line 781
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SecurityManagerService"

    const-string v4, "removeAccessControlPassAsUser startActvityAsUser error "

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 783
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    if-eqz v3, :cond_3

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 784
    new-instance v7, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 790
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "activityUserId":Ljava/lang/Integer;
    .end local v10    # "checkAccessControlPass":Z
    .end local v11    # "currentUserId":I
    .end local v13    # "enabled":Z
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/lang/String;
    .end local v16    # "size":I
    .end local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v18

    .line 791
    .restart local v18    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public removeWakePathData(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1366
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->removeWakePathData(I)V

    .line 1367
    return-void
.end method

.method public setAccessControlPattern(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 808
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    .line 809
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/AccessController;->setAccessControlPattern(Ljava/lang/String;I)V

    .line 810
    return-void
.end method

.method public setAppPermissionControlOpen(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    .line 1421
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1423
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1424
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1425
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1426
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    # setter for: Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I
    invoke-static {v1, p1}, Lcom/miui/server/SecurityManagerService$UserState;->access$1802(Lcom/miui/server/SecurityManagerService$UserState;I)I

    .line 1427
    monitor-exit p0

    .line 1428
    return-void

    .line 1427
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 735
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 736
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 737
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    .line 738
    .local v2, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 739
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 740
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 741
    monitor-exit p0

    .line 742
    return-void

    .line 741
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v2    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 964
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 965
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 966
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    .line 967
    .local v2, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 968
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 969
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 970
    monitor-exit p0

    .line 971
    return-void

    .line 970
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v2    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .locals 3
    .param p1, "grant"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 976
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "setCoreRuntimePermissionEnabled Permission DENIED"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 979
    .local v0, "userId":I
    invoke-static {p1, p2, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->setCoreRuntimePermissionEnabled(ZII)V

    .line 980
    return-void
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1373
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->setTrackWakePathCallListLogEnabled(Z)V

    .line 1374
    return-void
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1163
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    .line 1164
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    .line 1165
    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

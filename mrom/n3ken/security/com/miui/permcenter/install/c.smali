.class public Lcom/miui/permcenter/install/c;
.super Ljava/lang/Object;


# static fields
.field private static pf:Lcom/miui/permcenter/install/c;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/permcenter/install/c;->pf:Lcom/miui/permcenter/install/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/permcenter/install/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/install/d;-><init>(Lcom/miui/permcenter/install/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/c;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/permcenter/install/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->fE()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/c;->as(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v3, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v2, "AdbInstallManager"

    const-string v3, "addIcon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized aF(Landroid/content/Context;)Lcom/miui/permcenter/install/c;
    .locals 3

    const-class v1, Lcom/miui/permcenter/install/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/permcenter/install/c;->pf:Lcom/miui/permcenter/install/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/permcenter/install/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/permcenter/install/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/permcenter/install/c;->pf:Lcom/miui/permcenter/install/c;

    :cond_0
    sget-object v0, Lcom/miui/permcenter/install/c;->pf:Lcom/miui/permcenter/install/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ar(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/c;->as(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private aw(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const v2, 0x7f090466

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private fC()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Lcom/miui/a/c/a;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private fE()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-string v1, "adb_install_packages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/permcenter/install/h;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/permcenter/install/h;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/miui/permcenter/install/h;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AdbInstallManager"

    const-string v3, "parsePackageInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/install/h;)V
    .locals 3

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "permcenter_install_last_name"

    invoke-virtual {p1}, Lcom/miui/permcenter/install/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/common/persistence/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "permcenter_install_reject_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/miui/permcenter/install/h;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/permcenter/install/h;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/permcenter/install/h;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/miui/permcenter/install/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public aq(Ljava/lang/String;)Lcom/miui/permcenter/install/h;
    .locals 2

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/install/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/permcenter/install/h;

    move-result-object v0

    return-object v0
.end method

.method public as(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "installIcon"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public at(Ljava/lang/String;)V
    .locals 10

    const-wide/16 v8, 0x1388

    const/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "perm_adb_install_notify"

    invoke-static {v0, v5}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "perm_adb_install_notify"

    invoke-static {v0, v4}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const v2, 0x7f09045a

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const v2, 0x7f09045b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/a/a/a;->b(Landroid/app/Notification;Z)V

    invoke-static {v1, v8, v9}, Lcom/miui/a/a/a;->a(Landroid/app/Notification;J)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public au(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x1388

    const/16 v4, 0x64

    const/16 v3, 0xa

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/c;->aw(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/a/a/a;->b(Landroid/app/Notification;Z)V

    invoke-static {v1, v6, v7}, Lcom/miui/a/a/a;->a(Landroid/app/Notification;J)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public av(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x64

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/c;->aw(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public fA()V
    .locals 2

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public fB()Ljava/lang/String;
    .locals 2

    const-string v0, "permcenter_install_last_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fD()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v1, "ro.debuggable"

    invoke-static {v1, v3}, Lcom/miui/a/c/a;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "ro.secureboot.devicelock"

    invoke-static {v1, v3}, Lcom/miui/a/c/a;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unlocked"

    const-string v2, "ro.secureboot.lockstate"

    invoke-static {v2}, Lcom/miui/a/c/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "security_adb_install_enable"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public fF()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.permcenter.install.action_data_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public fp()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->fC()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fy()Ljava/util/List;
    .locals 4

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/permcenter/install/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/permcenter/install/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public fz()I
    .locals 2

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/c;->aq(Ljava/lang/String;)Lcom/miui/permcenter/install/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/permcenter/install/h;->setMode(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/install/c;->a(Lcom/miui/permcenter/install/h;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/permcenter/install/c;->fp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "permcenter_install_intercept_enabled"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/install/c;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/c;->ar(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    const-string v0, "permcenter_install_intercept_enabled"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;Z)V

    return-void
.end method

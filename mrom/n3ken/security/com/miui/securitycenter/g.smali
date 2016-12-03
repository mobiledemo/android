.class public Lcom/miui/securitycenter/g;
.super Ljava/lang/Object;


# direct methods
.method public static X(J)V
    .locals 2

    const-string v0, "key_cmcc_last_notify_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static Y(J)V
    .locals 2

    const-string v0, "key_start_device_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static Z(J)V
    .locals 2

    const-string v0, "key_last_upload_switch_analytics_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "extra_show_security_notification"

    invoke-static {p0, v0, p1}, Lcom/miui/a/e/g;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "extra_show_security_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/a/e/g;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aA(Z)V
    .locals 1

    const-string v0, "key_cmcc_system_check_done"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aB(Z)V
    .locals 1

    const-string v0, "pref_key_synced_cleanmaster_settings"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aa(J)V
    .locals 2

    const-string v0, "key_trigger_clean_master_auto_clean_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static ab(J)V
    .locals 2

    const-string v0, "key_trigger_gurad_provider_auto_update_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static ay(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "persist.sys.sc_allow_conn"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/miui/a/c/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/miui/securitycenter/g;->az(Z)V

    return-void

    :cond_0
    const-string v0, "persist.sys.sc_allow_conn"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/miui/a/c/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static az(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/common/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_update_sc_network_allow"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_network_status"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bM(I)V
    .locals 1

    const-string v0, "key_cmcc_system_check_score"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static bN(I)V
    .locals 1

    const-string v0, "key_cmcc_system_check_day"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/b;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optimizer_scan_cloud"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dr(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_cleanup_db_auto_update_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ds(Landroid/content/Context;)J
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_garbage_danger_in_size"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dt(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_garbage_danger_in_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static du(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "optimizer_scan_cloud"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/securitycenter/g;->o(Landroid/content/Context;Z)V

    const-string v0, "key_cleanup_db_auto_update_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/securitycenter/g;->p(Landroid/content/Context;Z)V

    const-string v0, "key_garbage_danger_in_flag"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/securitycenter/g;->q(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cT(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cU(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cV(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cW(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cX(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cY(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->cZ(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->da(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->db(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dc(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dd(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->de(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->df(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dg(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dh(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->di(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dj(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dk(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dl(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dm(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dn(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->do(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/f;->dp(Landroid/content/Context;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securitycenter/g;->a(Landroid/content/ContentResolver;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static nf()Z
    .locals 2

    const-string v0, "persist.sys.sc_allow_conn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/a/c/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ng()Z
    .locals 2

    const-string v0, "key_cmcc_system_check_done"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static nh()I
    .locals 2

    const-string v0, "key_cmcc_system_check_day"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static ni()J
    .locals 4

    const-string v0, "key_cmcc_last_notify_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nj()J
    .locals 4

    const-string v0, "key_start_device_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nk()J
    .locals 4

    const-string v0, "key_last_upload_switch_analytics_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nl()J
    .locals 4

    const-string v0, "key_trigger_clean_master_auto_clean_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nm()J
    .locals 4

    const-string v0, "key_trigger_gurad_provider_auto_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nn()Z
    .locals 2

    const-string v0, "pref_key_synced_cleanmaster_settings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/b;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optimizer_scan_cloud"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static p(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_cleanup_db_auto_update_enabled"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static q(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_garbage_danger_in_flag"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

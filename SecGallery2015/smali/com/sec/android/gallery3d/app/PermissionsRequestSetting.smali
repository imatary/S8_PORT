.class public Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;
.super Landroid/app/Activity;
.source "PermissionsRequestSetting.java"


# static fields
.field private static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "PermissionsReqSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "PermissionsReqSetting"

    const-string/jumbo v5, "onCreate."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "PermissionsRequestSetting"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const-string/jumbo v4, "GALLERY_PERMISSION_NOTI"

    invoke-virtual {v2, v4, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PermissionsReqSetting"

    const-string/jumbo v5, "Activity not found"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

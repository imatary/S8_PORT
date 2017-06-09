.class final Lcom/android/providers/media/MediaProvider$SettingObserver;
.super Landroid/database/ContentObserver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final EMERGENCY_MODE_URI:Landroid/net/Uri;

.field private final MTP_OPEN_SESSION_URI:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "mtp_open_session"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->MTP_OPEN_SESSION_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->MTP_OPEN_SESSION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Lcom/android/providers/media/MediaProvider$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->MTP_OPEN_SESSION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Lcom/android/providers/media/MediaProvider$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "emergency_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/android/providers/media/MediaProvider;->mEmergencyModeEnabled:Z

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EmergencyMode is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-boolean v2, v2, Lcom/android/providers/media/MediaProvider;->mEmergencyModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->MTP_OPEN_SESSION_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mtp_open_session"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-static {v2, v0}, Lcom/android/providers/media/MediaProvider;->-set3(Lcom/android/providers/media/MediaProvider;Z)Z

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MTP is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$SettingObserver;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->-get7(Lcom/android/providers/media/MediaProvider;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

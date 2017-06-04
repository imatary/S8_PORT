.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Media"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CROSS_DEVICE_PATH:Ljava/lang/String; = "audio_cross_device"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String; = "audio"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "audio"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media;->CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "audio"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media;->ENTRY_CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "audio"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioUriBatch(Landroid/content/ContentResolver;J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;
    .locals 9

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.INTENT_ARG_CONTENT_ID"

    invoke-virtual {v6, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.NAME"

    invoke-virtual {p0, v0, v1, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.KEY_RESULT_HTTP_PROXY_URI"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.KEY_RESULT_SCS_URI"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.KEY_RESULT_SAME_ACCESS_POINT_URI"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAudioUriInfo.KEY_RESULT_LOCAL_FILE_URI"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Media$AudioUriBatch;)V

    move-object v5, v0

    goto :goto_0
.end method

.method public static getContentUriForDevice(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "audio"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildDeviceContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEntryUri(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "audio"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setAudioPlayedTimestamp(Landroid/content/ContentResolver;J)Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "INTENT_ARG_CONTENT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "INTENT_ARG_PLAYED_TIMESTAMP"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.UpdateAudioPlayedTimestamp.NAME"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "method_result"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

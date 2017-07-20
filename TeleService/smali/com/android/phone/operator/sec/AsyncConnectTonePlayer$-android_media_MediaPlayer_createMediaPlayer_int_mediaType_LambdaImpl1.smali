.class final synthetic Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;
.super Ljava/lang/Object;
.source "AsyncConnectTonePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;->val$this:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;->val$this:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->-com_android_phone_operator_sec_AsyncConnectTonePlayer_lambda$2(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

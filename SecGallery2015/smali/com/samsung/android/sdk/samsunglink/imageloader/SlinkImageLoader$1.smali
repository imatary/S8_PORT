.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$1;
.super Ljava/lang/ThreadLocal;
.source "SlinkImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$1;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[B
    .locals 1

    const/16 v0, 0x4000

    new-array v0, v0, [B

    return-object v0
.end method

.class final Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$5;
.super Ljava/lang/Object;
.source "EditableStickerUtil.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLocationInfo(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    const-string v0, "EditableStickerUtil"

    const-string v1, "getLocationInfo onErrorResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

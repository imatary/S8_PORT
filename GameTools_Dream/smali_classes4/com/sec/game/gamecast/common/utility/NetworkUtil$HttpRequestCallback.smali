.class public interface abstract Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpRequestCallback"
.end annotation


# virtual methods
.method public abstract onResponseFailed(I)V
.end method

.method public abstract onResponseSucceed(Lorg/json/JSONObject;)V
.end method

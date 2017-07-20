.class public interface abstract Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorUpdateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUpdateListener"
.end annotation


# virtual methods
.method public abstract onComplete(I)V
.end method

.method public abstract onFailure(I)V
.end method

.method public abstract onTimeOut()V
.end method

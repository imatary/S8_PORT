.class public interface abstract Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;
.super Ljava/lang/Object;
.source "PbapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PbapListener"
.end annotation


# virtual methods
.method public abstract onPbapClientConnected(Z)V
.end method

.method public abstract onPhoneBookError()V
.end method

.method public abstract onPhoneBookPullDone(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation
.end method

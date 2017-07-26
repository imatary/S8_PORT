.class public interface abstract Lcom/gdg/recordinglib/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gdg/recordinglib/ICallback$GCMetadata;,
        Lcom/gdg/recordinglib/ICallback$GCException;
    }
.end annotation


# virtual methods
.method public abstract executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
.end method

.method public abstract executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
.end method

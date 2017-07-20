.class public interface abstract Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;
.super Ljava/lang/Object;
.source "IPhoneNumberLocatorDownloader.java"


# virtual methods
.method public abstract getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V
.end method

.method public abstract setCallback(Landroid/os/Handler;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setTypeAuto(Z)V
.end method

.method public abstract startDownloadThread()V
.end method

.method public abstract stopDownloadThread()V
.end method

.class public interface abstract Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAttachInterfaceListener"
.end annotation


# virtual methods
.method public abstract onAttachCameraImageSelected(Landroid/net/Uri;)V
.end method

.method public abstract onAttachCameraShutterButtonClicked()V
.end method

.method public abstract onAttachGalleryImageSelected(Landroid/net/Uri;)V
.end method

.method public abstract onAttachGalleryMultiImageSelected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChangedLayoutMode(Z)V
.end method

.method public abstract onHideAttachSheet()V
.end method

.method public abstract onOtherAppSelected(Landroid/content/Intent;)V
.end method

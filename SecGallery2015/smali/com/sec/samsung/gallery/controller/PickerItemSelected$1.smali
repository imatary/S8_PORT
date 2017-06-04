.class Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;
.super Ljava/lang/Object;
.source "PickerItemSelected.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/PickerItemSelected;->isPickSupported(Lcom/sec/android/gallery3d/data/MediaItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    # getter for: Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$000(Lcom/sec/samsung/gallery/controller/PickerItemSelected;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0326

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;-><init>(Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

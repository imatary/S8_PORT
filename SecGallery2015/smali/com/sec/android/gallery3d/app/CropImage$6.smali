.class Lcom/sec/android/gallery3d/app/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->isImageLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2400(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$6;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2300(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

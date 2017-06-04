.class Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal$1;
.super Ljava/lang/Object;
.source "RemoteContentActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

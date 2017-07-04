.class Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;
.super Ljava/lang/Object;
.source "NoItemActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001b

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$600(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$700(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$800(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$900(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->access$1000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

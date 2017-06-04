.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;
.super Ljava/lang/Object;
.source "SlideShowActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->initActionBarBg()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

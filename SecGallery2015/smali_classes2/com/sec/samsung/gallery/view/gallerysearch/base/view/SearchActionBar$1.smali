.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;
.super Ljava/lang/Object;
.source "SearchActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x11

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    or-int v1, v3, v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->getSearchView()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->removeAllTabs()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->getBackgroundDrawable()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

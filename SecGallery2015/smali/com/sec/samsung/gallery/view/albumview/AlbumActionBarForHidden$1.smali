.class Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden$1;
.super Ljava/lang/Object;
.source "AlbumActionBarForHidden.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;->access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

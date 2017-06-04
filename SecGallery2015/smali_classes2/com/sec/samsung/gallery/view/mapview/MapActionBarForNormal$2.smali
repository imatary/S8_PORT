.class Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;
.super Ljava/lang/Object;
.source "MapActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$1200(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$1300(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$1400(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;
.super Ljava/lang/Object;
.source "NearbyActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

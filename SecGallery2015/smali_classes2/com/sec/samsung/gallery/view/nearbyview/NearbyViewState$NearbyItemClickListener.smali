.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;
.super Ljava/lang/Object;
.source "NearbyViewState.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NearbyItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$200(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v0, p3}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$500(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;I)V

    :cond_0
    return-void
.end method

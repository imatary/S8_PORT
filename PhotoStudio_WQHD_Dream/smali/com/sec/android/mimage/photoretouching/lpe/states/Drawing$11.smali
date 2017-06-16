.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$11;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->newSpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCreated(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/graphics/PointF;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/graphics/PointF;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMenuSelected(Ljava/util/ArrayList;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onObjectChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    return-void
.end method

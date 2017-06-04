.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z

    return-void
.end method

.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2$1;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateShowCenterBtn()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    return-void
.end method

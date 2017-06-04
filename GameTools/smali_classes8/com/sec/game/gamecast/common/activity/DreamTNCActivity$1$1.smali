.class Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1$1;
.super Ljava/lang/Object;
.source "DreamTNCActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1$1;->this$1:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1$1;->this$1:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNextClickable:Z

    return-void
.end method

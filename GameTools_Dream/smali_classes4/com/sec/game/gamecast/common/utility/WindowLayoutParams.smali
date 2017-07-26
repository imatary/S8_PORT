.class public Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "WindowLayoutParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$100(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->width:I

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$200(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->height:I

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$300(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->type:I

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$400(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->flags:I

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$500(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->format:I

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$600(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$600(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->semAddExtensionFlags(I)V

    :cond_0
    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$700(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$700(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->gravity:I

    :cond_1
    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$800(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->access$800(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;-><init>(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)V

    return-void
.end method

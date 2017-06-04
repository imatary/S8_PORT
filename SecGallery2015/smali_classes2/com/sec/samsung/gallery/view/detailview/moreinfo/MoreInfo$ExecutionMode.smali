.class final enum Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;
.super Ljava/lang/Enum;
.source "MoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExecutionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

.field public static final enum BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

.field public static final enum STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    const-string/jumbo v1, "STANDARD_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    const-string/jumbo v1, "BIXBY_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->$VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->$VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    return-object v0
.end method

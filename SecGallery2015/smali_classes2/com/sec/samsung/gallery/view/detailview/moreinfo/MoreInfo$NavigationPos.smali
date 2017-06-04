.class final enum Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;
.super Ljava/lang/Enum;
.source "MoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NavigationPos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

.field public static final enum BOTTOM:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

.field public static final enum LEFT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

.field public static final enum RIGHT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->$VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->$VALUES:[Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    return-object v0
.end method

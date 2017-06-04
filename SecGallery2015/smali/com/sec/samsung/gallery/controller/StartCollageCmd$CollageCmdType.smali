.class public final enum Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;
.super Ljava/lang/Enum;
.source "StartCollageCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartCollageCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollageCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

.field public static final enum START_COLLAGE_MAKER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

.field public static final enum START_COLLAGE_MAKER_FOR_DETAILVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

.field public static final enum START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

.field public static final enum START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

.field public static final enum START_COLLAGE_VIEWER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const-string/jumbo v1, "START_COLLAGE_MAKER"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const-string/jumbo v1, "START_COLLAGE_VIEWER"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_VIEWER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const-string/jumbo v1, "START_COLLAGE_MAKER_FOR_DETAILVIEW"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAILVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const-string/jumbo v1, "START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const-string/jumbo v1, "START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_VIEWER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAILVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    return-object v0
.end method

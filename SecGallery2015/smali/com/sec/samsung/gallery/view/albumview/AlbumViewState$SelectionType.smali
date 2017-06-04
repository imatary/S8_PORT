.class final enum Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;
.super Ljava/lang/Enum;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

.field public static final enum ADD:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

.field public static final enum ADD_TOP_SET:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

.field public static final enum REMOVE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

.field public static final enum TOGGLE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    const-string/jumbo v1, "TOGGLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->TOGGLE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    const-string/jumbo v1, "ADD_TOP_SET"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ADD_TOP_SET:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ADD:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->REMOVE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    sget-object v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->TOGGLE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ADD_TOP_SET:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ADD:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->REMOVE:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->$VALUES:[Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->$VALUES:[Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    return-object v0
.end method

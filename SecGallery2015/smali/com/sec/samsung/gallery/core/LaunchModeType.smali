.class public final enum Lcom/sec/samsung/gallery/core/LaunchModeType;
.super Ljava/lang/Enum;
.source "LaunchModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/LaunchModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public static final enum ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_PICK"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_MULTIPLE_PICK"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_ALBUM_PICK"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_PERSON_PICK"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    new-instance v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v1, "ACTION_ENTER_SELECTION_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/core/LaunchModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/samsung/gallery/core/LaunchModeType;

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->$VALUES:[Lcom/sec/samsung/gallery/core/LaunchModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/LaunchModeType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/LaunchModeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/LaunchModeType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/LaunchModeType;->$VALUES:[Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/LaunchModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/LaunchModeType;

    return-object v0
.end method

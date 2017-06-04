.class final enum Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;
.super Ljava/lang/Enum;
.source "HighlightPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

.field public static final enum IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

.field public static final enum PAUSE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

.field public static final enum PLAY:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    new-instance v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const-string/jumbo v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PLAY:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    new-instance v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PAUSE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->IDLE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PLAY:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->PAUSE:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->$VALUES:[Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;
    .locals 1

    const-class v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;
    .locals 1

    sget-object v0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->$VALUES:[Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    invoke-virtual {v0}, [Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$PlayerState;

    return-object v0
.end method

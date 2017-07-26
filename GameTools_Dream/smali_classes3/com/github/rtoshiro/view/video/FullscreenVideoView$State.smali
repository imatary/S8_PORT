.class public final enum Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
.super Ljava/lang/Enum;
.source "FullscreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rtoshiro/view/video/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum INITIALIZED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum PAUSED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum PREPARING:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field public static final enum STOPPED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->INITIALIZED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "PREPARING"

    invoke-direct {v0, v1, v6}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARING:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v7}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STOPPED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PAUSED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "PLAYBACKCOMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const-string/jumbo v1, "END"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->INITIALIZED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARING:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STOPPED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PAUSED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->$VALUES:[Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
    .locals 1

    const-class v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    return-object v0
.end method

.method public static values()[Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
    .locals 1

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->$VALUES:[Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {v0}, [Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    return-object v0
.end method

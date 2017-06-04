.class public final enum Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;
.super Ljava/lang/Enum;
.source "EventUpdateGroupCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

.field public static final enum UPDATE_STORY_COVER:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

.field public static final enum UPDATE_STORY_NAME:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    const-string/jumbo v1, "UPDATE_STORY_NAME"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->UPDATE_STORY_NAME:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    const-string/jumbo v1, "UPDATE_STORY_COVER"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->UPDATE_STORY_COVER:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->UPDATE_STORY_NAME:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->UPDATE_STORY_COVER:Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    return-object v0
.end method

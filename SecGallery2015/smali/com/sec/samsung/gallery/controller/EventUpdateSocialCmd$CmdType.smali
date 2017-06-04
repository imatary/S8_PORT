.class public final enum Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;
.super Ljava/lang/Enum;
.source "EventUpdateSocialCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum ADD_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum ADD_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum DELETE_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum EDIT_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum REFRESH_ALL:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

.field public static final enum REMOVE_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "ADD_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "EDIT_COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->EDIT_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "DELETE_COMMENT"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->DELETE_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "ADD_LIKE"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "REMOVE_LIKE"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REMOVE_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const-string/jumbo v1, "REFRESH_ALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REFRESH_ALL:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->EDIT_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->DELETE_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REMOVE_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REFRESH_ALL:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    return-object v0
.end method

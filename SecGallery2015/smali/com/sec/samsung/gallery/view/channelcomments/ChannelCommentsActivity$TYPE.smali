.class public final enum Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;
.super Ljava/lang/Enum;
.source "ChannelCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

.field public static final enum COMMENT_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

.field public static final enum LAST_COMMENT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

.field public static final enum LIKE_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    const-string/jumbo v1, "LIKE_COUNT"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LIKE_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    const-string/jumbo v1, "COMMENT_COUNT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->COMMENT_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    const-string/jumbo v1, "LAST_COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LAST_COMMENT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LIKE_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->COMMENT_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LAST_COMMENT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->$VALUES:[Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->$VALUES:[Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    return-object v0
.end method

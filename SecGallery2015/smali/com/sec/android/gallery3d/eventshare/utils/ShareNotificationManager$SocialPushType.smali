.class public final enum Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;
.super Ljava/lang/Enum;
.source "ShareNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialPushType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

.field public static final enum CREATE_COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

.field public static final enum CREATE_LIKE_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

.field public static final enum JOIN_MEMBER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

.field public static final enum SHARE_NEW_CONTENTS:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    const-string/jumbo v1, "JOIN_MEMBER"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->JOIN_MEMBER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    const-string/jumbo v1, "SHARE_NEW_CONTENTS"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->SHARE_NEW_CONTENTS:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    const-string/jumbo v1, "CREATE_COMMENT_BY_OTHER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    const-string/jumbo v1, "CREATE_LIKE_BY_OTHER"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_LIKE_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->JOIN_MEMBER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->SHARE_NEW_CONTENTS:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_LIKE_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    return-object v0
.end method

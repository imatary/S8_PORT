.class public Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;
.super Ljava/lang/Object;
.source "ChannelGroupPushReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;,
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;,
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;,
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;,
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;,
        Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;
    }
.end annotation


# static fields
.field private static final mPushTypeCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SHOW_PERMISSION:Ljava/lang/Character;

.field private final TAG:Ljava/lang/String;

.field private final eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private final mCodeReaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ChannelGroupPushReader"

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->SHOW_PERMISSION:Ljava/lang/Character;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "I"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "M"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "U"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "N"

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->SHOW_PERMISSION:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "I"

    const-string/jumbo v2, "INVITED_TO_GROUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "D"

    const-string/jumbo v2, "GROUP_DELETED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "M"

    const-string/jumbo v2, "MEMBER_DELETED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "A"

    const-string/jumbo v2, "MEMBER_ACCEPTED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "U"

    const-string/jumbo v2, "GROUP_UPDATED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "N"

    const-string/jumbo v2, "MEMBER_DENIED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "P"

    const-string/jumbo v2, "SHOW_PERMISSION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCodeReaderMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mCodeReaderMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getShowPermission()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->SHOW_PERMISSION:Ljava/lang/Character;

    return-object v0
.end method

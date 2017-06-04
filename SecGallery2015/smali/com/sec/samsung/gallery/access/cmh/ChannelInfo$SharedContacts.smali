.class public Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedContacts"
.end annotation


# instance fields
.field public mExpire:J

.field public mIsMyProfile:Z

.field public mName:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public final mStatus:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->this$0:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mIsMyProfile:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->this$0:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mIsMyProfile:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mExpire:J

    return-void
.end method


# virtual methods
.method public setIsMyProfile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mIsMyProfile:Z

    return-void
.end method

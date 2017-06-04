.class public Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;
.super Ljava/lang/Object;
.source "ContactMediaInfo.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mJoinedLookupKey:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinedLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mJoinedLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setJoinedLookupKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mJoinedLookupKey:Ljava/lang/String;

    return-void
.end method

.method public setSingleLookupKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/contact/ContactMediaInfo;->mLookupKey:Ljava/lang/String;

    return-void
.end method

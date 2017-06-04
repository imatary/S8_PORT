.class public Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
.super Ljava/lang/Object;
.source "ProfileInfo.java"


# instance fields
.field protected adrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected evnt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected imageByte:[B

.field protected img:Ljava/lang/String;

.field protected mail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected nm:Ljava/lang/String;

.field protected org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

.field protected status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddress(Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEmail(Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEvent(Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public initMultiField(ZZZZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->nm:Ljava/lang/String;

    if-nez v0, :cond_4

    if-eqz p5, :cond_4

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->nm:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->img:Ljava/lang/String;

    if-nez v0, :cond_5

    if-eqz p6, :cond_5

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->img:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public setAddress(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->adrs:Ljava/util/List;

    return-void
.end method

.method public setEmail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->mail:Ljava/util/List;

    return-void
.end method

.method public setEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->evnt:Ljava/util/List;

    return-void
.end method

.method public setImage([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->imageByte:[B

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->img:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->nm:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->status:Ljava/lang/String;

    return-void
.end method

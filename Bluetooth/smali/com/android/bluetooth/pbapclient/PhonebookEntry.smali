.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;,
        Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

.field public phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-direct {v5}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$PhoneData;

    new-instance v3, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    invoke-direct {v3}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;-><init>()V

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v5

    iput v5, v3, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private equals(Lcom/android/bluetooth/pbapclient/PhonebookEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    iget-object v1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    iget-object v1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->equals(Lcom/android/bluetooth/pbapclient/PhonebookEntry;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhonebookEntry { id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

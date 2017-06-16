.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field public family:Ljava/lang/String;

.field public given:Ljava/lang/String;

.field public middle:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_0
    return v1

    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    mul-int/lit8 v0, v1, 0x17

    mul-int/lit8 v3, v0, 0x17

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x17

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x17

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x17

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    add-int v0, v1, v2

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Name: { family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

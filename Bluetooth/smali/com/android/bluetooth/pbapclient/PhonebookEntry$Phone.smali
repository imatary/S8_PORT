.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public type:I


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

    instance-of v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    iget v3, v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    mul-int/lit8 v0, v0, 0x17

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " Phone: { number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

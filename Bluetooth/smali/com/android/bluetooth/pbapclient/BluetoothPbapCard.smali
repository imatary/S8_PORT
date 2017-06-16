.class public Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;
.super Ljava/lang/Object;
.source "BluetoothPbapCard.java"


# instance fields
.field public final N:Ljava/lang/String;

.field public final firstName:Ljava/lang/String;

.field public final handle:Ljava/lang/String;

.field public final lastName:Ljava/lang/String;

.field public final middleName:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->handle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->N:Ljava/lang/String;

    const-string/jumbo v1, ";"

    const/4 v3, 0x5

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v4, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->lastName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v5, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->firstName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v6, :cond_2

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->middleName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v7, :cond_3

    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->prefix:Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    :goto_4
    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->suffix:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_1
    aget-object v1, v0, v4

    goto :goto_1

    :cond_2
    aget-object v1, v0, v5

    goto :goto_2

    :cond_3
    aget-object v1, v0, v6

    goto :goto_3

    :cond_4
    aget-object v2, v0, v7

    goto :goto_4
.end method

.method public static jsonifyVcardEntry(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 15

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v9

    const-string/jumbo v13, "formatted"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getFormatted()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "family"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "given"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "middle"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "prefix"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "suffix"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardEntry$PhoneData;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v13, "type"

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v13, "number"

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "label"

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "is_primary"

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary()Z

    move-result v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    :goto_2
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$EmailData;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v13, "type"

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v13, "address"

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "label"

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v13, "is_primary"

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$EmailData;->isPrimary()Z

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_1
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_2
    :try_start_3
    const-string/jumbo v13, "phones"

    invoke-virtual {v4, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_3
    :try_start_4
    const-string/jumbo v13, "emails"

    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "handle"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->handle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "N"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->N:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lastName"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "firstName"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "middleName"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->middleName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "prefix"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "suffix"

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapCard;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

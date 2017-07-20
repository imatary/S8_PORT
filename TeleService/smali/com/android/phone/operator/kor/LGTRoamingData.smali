.class public Lcom/android/phone/operator/kor/LGTRoamingData;
.super Ljava/lang/Object;
.source "LGTRoamingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;
    }
.end annotation


# static fields
.field private static connectIdProjectionMap:Ljava/util/HashMap;
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

.field private static countryIdProjectionMap:Ljava/util/HashMap;
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

.field private static sidProjectionMap:Ljava/util/HashMap;
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
.field connectProjectionMap:[Ljava/lang/String;

.field countryProjectionMap:[Ljava/lang/String;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

.field private roamingContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/kor/LGTRoamingData;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->roamingContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "country_num"

    const-string/jumbo v2, "country_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "name_kor"

    const-string/jumbo v2, "name_kor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "connect_num"

    const-string/jumbo v2, "connect_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "country_name"

    const-string/jumbo v2, "country_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "country_name_eng"

    const-string/jumbo v2, "country_name_eng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "deleteable"

    const-string/jumbo v2, "deleteable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "country_code"

    const-string/jumbo v2, "country_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sid"

    const-string/jumbo v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/operator/kor/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "connect_id"

    const-string/jumbo v2, "connect_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name_kor"

    aput-object v1, v0, v5

    const-string/jumbo v1, "country_num"

    aput-object v1, v0, v6

    const-string/jumbo v1, "chosung"

    aput-object v1, v0, v7

    const-string/jumbo v1, "simplify"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryProjectionMap:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "country_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "country_name_eng"

    aput-object v1, v0, v4

    const-string/jumbo v1, "connect_num"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->connectProjectionMap:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->roamingContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->roamingContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;-><init>(Lcom/android/phone/operator/kor/LGTRoamingData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->close()V

    :cond_0
    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->mOpenHelper:Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;

    return-void
.end method

.method public getCountry(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v3, ""

    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "name_kor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "chosung"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "country_num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "country"

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->countryProjectionMap:[Ljava/lang/String;

    const-string/jumbo v7, "name_kor"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public selectCountry(Ljava/lang/Long;)[Ljava/lang/String;
    .locals 13

    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    new-array v8, v6, [Ljava/lang/String;

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/operator/kor/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v1, "country_num"

    aput-object v1, v2, v10

    const-string/jumbo v1, "name_kor"

    aput-object v1, v2, v11

    const-string/jumbo v1, "name"

    aput-object v1, v2, v12

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    return-object v4

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v12

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method

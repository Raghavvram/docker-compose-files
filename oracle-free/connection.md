To connect to your Oracle database from **DBeaver as SYSDBA**, follow these steps carefully:

---

### 🛠️ Prerequisites
Make sure:
- Oracle is running and the listener is active (which it is, based on your logs).
- You know the **SID** or **Service Name** (your logs show `FREE` as the default service, but it says "supports no services" — we’ll address that).
- You have **DBeaver installed** with the Oracle JDBC driver.

---

### 🔌 Step-by-Step: Connect as SYSDBA in DBeaver

1. **Open DBeaver** and click on **Database > New Database Connection**.

2. **Choose Oracle** from the list of database types.

3. In the **Connection Settings**:
   - **Host**: `localhost` or your server IP
   - **Port**: `1521`
   - **Database**: Use the **SID** (e.g., `FREE`) or Service Name if configured
   - **Username**: `SYS`
   - **Password**: your SYS password
   - **Role**: Select `SYSDBA` from the dropdown

4. **Driver Settings**:
   - If prompted, download the Oracle JDBC driver.
   - You can also manually add the driver if needed.

5. **Test Connection**:
   - Click **Test Connection** to verify.
   - If it fails due to "no services", you may need to:
     - Register the database with the listener using `lsnrctl` or
     - Add a service manually in `listener.ora` and `tnsnames.ora`.

---

### 🧩 Troubleshooting Tips

- If the listener shows “supports no services,” try running:
  ```bash
  lsnrctl reload
  ```
  or
  ```sql
  alter system register;
  ```
  from SQL*Plus to register the database with the listener.

- If you're using **OS authentication**, you can also try connecting with:
  ```bash
  sqlplus / as sysdba
  ```
  to verify SYS access before using DBeaver.

---

If you’re unsure about the SID or service name, I can help you extract it from your database config files or logs. Want to go that route?
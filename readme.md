# Even–Odd Assignment

## Objective

Write a C++ program in **`evenodd.cpp`** that checks whether a number is **even** or **odd**.

---

## Files in This Repository

* `evenodd.cpp` — **This is the only file you will edit.**
* `check.sh` — Automated test script. **Do not change this file.**
* `README.md` — Instructions. **Do not change this file.**

---

## Workflow

### 1. Download the Repository

Download the repository as a ZIP file:

1. Open your repository page on GitHub.
2. Click the green **Code** button.
3. Select **Download ZIP**.
4. Extract the ZIP into your **home directory** (or another folder you can easily access).

Now, you need to open the extracted folder in a terminal.
There are **two options**:

**Option A: Use `cd` in the terminal**
If your repository name is `assignment-3-roll123`, run:

```bash
cd ~/assignment-3-roll123
```

* `~` means your home directory.
* Use the **Tab key** to auto-complete folder names while typing.
* If you are not sure where you extracted the ZIP, check with:

  ```bash
  ls
  ```

  and look for the folder name.

**Option B: Open the terminal from the file manager**

1. Navigate to the extracted folder in your file manager.
2. Right-click inside the folder (on empty space).
3. Select **“Open in Terminal.”**
   → A terminal will open directly inside that folder.

---

### 2. Install `g++` (if not already installed)

On Ubuntu/Linux, install the GNU C++ compiler:

```bash
sudo apt update
sudo apt install g++
g++ --version
```

You should see the installed version number.

---

### 3. Test the Starter Code Locally

Make the script executable and run it:

```bash
chmod +x check.sh
./check.sh
```

This will compile and run your program against test cases.
If there are errors, some or all tests may fail.

---

### 4. Modify `evenodd.cpp`

Edit the file **locally** in your preferred editor (e.g., VS Code, gedit, nano).
Your program must:

* Read **one integer** from standard input.
* Print one of the following **exactly**:

  ```
  <number> is even.
  ```

  or

  ```
  <number> is odd.
  ```

---

### 5. Run the Tests Again

After modifying `evenodd.cpp`, run:

```bash
./check.sh
```

* Repeat until **all tests pass**.
* Do **not** change `check.sh` or `README.md`.

---

### 6. Commit Your Solution Online (GitHub Classroom)

After confirming that your program works:

1. Go to your repository page on GitHub Classroom in your web browser.

2. Click on `evenodd.cpp`.

3. Click the **pencil icon** (✏️) in the top-right — this is “editor mode.”

4. Paste your working solution into the file.

5. Scroll down to the **Commit changes** section:

   * In the message box, write something like:

     ```
     Completed evenodd assignment
     ```
   * Select **“Commit directly to the main branch.”**

6. Click the green **Commit changes** button.

Your solution is now saved online in GitHub.

---

## Example Usage

```bash
echo 4 | ./evenodd
# Output: 4 is even.

echo -7 | ./evenodd
# Output: -7 is odd.
```

---

## Common Mistakes to Avoid

* ❌ Adding extra prompts like `"Enter a number:"`
  ✅ Only print `<number> is even.` or `<number> is odd.`

* ❌ Incorrect capitalization (`Even` vs `even`)
  ✅ Must be lowercase `even` / `odd` in the sentence.

* ❌ Missing punctuation (`.` at the end)
  ✅ The output must end with a period.

* ❌ Forgetting to test before uploading
  ✅ Always run `./check.sh` locally and make sure all tests pass.

* ❌ Editing `check.sh` or `README.md`
  ✅ Only edit `evenodd.cpp`.

---

## Submission

* Make sure `./check.sh` reports **all tests passed** locally.
* Commit your changes online through the GitHub website as explained above.
* Nothing else needs to be submitted.

---
